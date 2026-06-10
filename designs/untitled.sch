v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {netlist.sym} -280 -60 0 0 {name=s1 value="
* PFD Model using digital Xspice components

* pfd_delay local parameter sets the duration of the overlap (dead-band elimination)
* Reduced from 10ns to 200ps to prevent massive Vctrl ripple
.param pfd_delay = 200p

** Digital 1 and 0 to drive Flip-Flops
aone 0 d_d1 d_inv
azero d_d1 d_d0 d_inv
.model d_inv d_inverter()

** Flip Flops
ad1 d_d1 d_R d_d0 d_rset d_U d_U_ flop1
ad2 d_d1 d_V d_d0 d_rset d_D d_D_ flop1
.model flop1 d_dff(clk_delay = 1.0e-10 set_delay = 1.0e-10
+ reset_delay = \{pfd_delay\} ic = 2 rise_delay = 1.0e-10
+ fall_delay = 1e-10)

* AND Gate
aa1 [d_U d_D] d_rset and1
.model and1 d_and(rise_delay = 1e-10 fall_delay = 1e-10 
+ input_load = 0.5e-12)

* WINDOW FIX: Widened thresholds to catch fast analog edges safely
aADC [ a_ref a_div ] [ d_R d_V ] adc_buff
.model adc_buff adc_bridge(in_low = 1.2 in_high = 2.1 rise_delay = 10p fall_delay = 10p)

* DAC FIX: Explicitly defined analog rise/fall times to prevent solver crashes
aDAC [ d_U d_U_ d_D d_D_ d_rset d_R d_V d_d1 d_d0 ] [ a_UP a_UPb a_DN a_DNb a_rset a_R a_V a_d1 a_d0] dac_buff
.model dac_buff dac_bridge(out_low = 0 out_high = 3.3 t_rise = 10p t_fall = 10p)
"}
C {netlist.sym} 740 30 0 0 {name=s2 value="
* Behavioral Frequency Divider with robust Mixed-Signal Bridges

* Top-level parameter (Defaults to 10 if not passed by symbol)
.param divide_factor = 10

* MATH FIX: Guarantees at least 1 high cycle, targets 50% duty cycle
.param high_cycles = \{max(1, floor(divide_factor/2))\}

* Xspice digital frequency divider
adiv din dout divider
.model divider d_fdiv(div_factor = \{divide_factor\}
+ high_cycles = \{high_cycles\}
+ i_count = 0
+ rise_delay = 10p fall_delay = 10p )

* WINDOW FIX: Widened analog-to-digital thresholds to catch fast sine waves
aADC [ ain ] [ din ] adc_buff
.model adc_buff adc_bridge(in_low = 1.2 in_high = 2.1 rise_delay = 10p fall_delay = 10p)

* Digital-to-analog bridge
aDAC [ dout ] [ aout ] dac_buff
.model dac_buff dac_bridge(out_low = 0 out_high = 3.3 t_rise = 10p t_fall = 10p)
"}
C {netlist.sym} 1500 70 0 0 {name=s3 value="
* Bulletproof Charge Pump: Low-Frequency Heartbeat Update
.param param_k = 60e-6

* UP
B_Iup OUT 0 I='V(UP) > 1.65 ? ( V(OUT) > 0.05 ? (param_k * ( (2.6 - max(0.2, min(2.6, V(OUT))))^2 + 0.001 )) : 0 ) : 0'

* DN
B_Idn OUT 0 I='V(DN) > 1.65 ? ( V(OUT) < 3.25 ? -(param_k * ( (2.6 - max(0.2, min(2.6, V(OUT))))^2 + 0.001 )) : 0 ) : 0'
"}
