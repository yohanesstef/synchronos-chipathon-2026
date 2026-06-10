v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1050 140 1070 140 {lab=a_ref}
N 1050 240 1070 240 {lab=a_div}
N 1220 140 1240 140 {lab=a_UP}
N 1220 180 1240 180 {lab=a_UPb}
N 1220 230 1240 230 {lab=a_DN}
N 1220 270 1240 270 {lab=a_DNb}
C {ipin.sym} 1050 140 0 0 {name=p1 lab=a_ref}
C {ipin.sym} 1050 240 0 0 {name=p2 lab=a_div}
C {opin.sym} 1240 140 0 0 {name=p3 lab=a_UP}
C {opin.sym} 1240 180 0 0 {name=p4 lab=a_UPb}
C {opin.sym} 1240 230 0 0 {name=p5 lab=a_DN}
C {opin.sym} 1240 270 0 0 {name=p6 lab=a_DNb}
C {noconn.sym} 1070 140 0 1 {name=l2}
C {noconn.sym} 1070 240 0 1 {name=l1}
C {noconn.sym} 1220 140 0 0 {name=l3}
C {noconn.sym} 1220 180 0 0 {name=l4}
C {noconn.sym} 1220 230 0 0 {name=l5}
C {noconn.sym} 1220 270 0 0 {name=l6}
C {netlist.sym} -30 -90 0 0 {name=s1 value="
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
