# 1. Define the high-speed input clock (240 MHz)
create_clock -name clk_in -period 4.167 [get_ports clk_in]

# 2. Define the generated clock directly on the preserved top-level net
create_generated_clock -name presc_clk \
    -source [get_ports clk_in] \
    -divide_by 4 \
    [get_nets presc_clk]

# 3. Apply clock uncertainty (Separate Setup and Hold!)
# This prevents OpenROAD from inserting massive delay cells that kill setup timing.
set_clock_uncertainty -setup 0.250 [get_clocks clk_in]
set_clock_uncertainty -hold 0.050 [get_clocks clk_in]
set_clock_uncertainty -setup 0.250 [get_clocks presc_clk]
set_clock_uncertainty -hold 0.050 [get_clocks presc_clk]

# 4. Input constraints (Relative to clk_in)
set_input_delay -max 0.5 -clock clk_in [get_ports rst_n]
set_input_delay -max 0.5 -clock clk_in [get_ports div_ctrl*]

# 5. Output constraint (Relative to presc_clk!)
set_output_delay -max 0.5 -clock presc_clk [get_ports clk_out]

# 6. Cross-Domain Multicycle Path for 'mc'
# The 'mc' signal launches from presc_clk and is captured by clk_in.
# We give it 2 clock cycles to propagate because the prescaler takes at least 4 cycles to shift.
set_multicycle_path -setup 2 -from [get_clocks presc_clk] -to [get_clocks clk_in]
set_multicycle_path -hold 1 -from [get_clocks presc_clk] -to [get_clocks clk_in]