`timescale 1ns / 1ps

module tb_pulse_swallow_div_v2;

    // Inputs
    reg clk_in;
    reg rst_n;
    reg [7:0] div_ctrl;

    // Outputs
    wire clk_out;

    // Instantiate the Unit Under Test (UUT)
    // Assuming your optimized v2 module is still named 'pulse_swallow_div'
    pulse_swallow_div uut (
        .clk_in(clk_in), 
        .rst_n(rst_n), 
        .div_ctrl(div_ctrl), 
        .clk_out(clk_out)
    );

    // -----------------------------------------------------------
    // Clock Generation: 240 MHz VCO
    // Period = 1 / 240 MHz = 4.1666 ns (Half-period = 2.0833 ns)
    // -----------------------------------------------------------
    initial begin
        clk_in = 0;
        forever #2.0833 clk_in = ~clk_in;
    end

    // -----------------------------------------------------------
    // Test Sequence
    // -----------------------------------------------------------
    initial begin
        // Setup Waveform Dumping for GTKWave
        $dumpfile("tb_v2_dump.vcd");
        $dumpvars(0, tb_pulse_swallow_div_v2);

        // Initialize Inputs
        rst_n = 0;
        
        // V2 OPTIMIZATION CHANGE:
        // We need N=24. B=12, A=0.
        // Since V2 expects (B-1) in the top 4 bits:
        // B-1 = 11 (4'b1011). A = 0 (4'b0000).
        // Result: 8'b1011_0000 = 8'hB0
        div_ctrl = 8'hB0; 

        // Wait 10 ns, then release reset
        #10;
        rst_n = 1;

        // Run for 10 full 10 MHz cycles (1000 ns)
        #1000;
        
        $display("V2 Simulation Complete.");
        $finish;
    end

    // -----------------------------------------------------------
    // Self-Checking Monitor (Measures Output Frequency)
    // -----------------------------------------------------------
    real last_edge_time = 0;
    real current_period;
    real calc_freq_mhz;

    always @(posedge clk_out) begin
        if (last_edge_time > 0) begin
            current_period = $realtime - last_edge_time;
            calc_freq_mhz = 1000.0 / current_period;
            $display("Time: %0t ns | Output Period: %0.3f ns | Freq: %0.2f MHz", 
                     $time/1000.0, current_period, calc_freq_mhz);
            
            if (calc_freq_mhz < 9.9 || calc_freq_mhz > 10.1) begin
                $display("ERROR: Frequency out of spec! Expected 10.00 MHz.");
            end
        end
        last_edge_time = $realtime;
    end

endmodule
