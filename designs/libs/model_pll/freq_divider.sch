v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 740 130 760 130 {lab=ain}
N 860 130 880 130 {lab=aout}
C {ipin.sym} 740 130 0 0 {name=p1 lab=ain}
C {opin.sym} 880 130 0 0 {name=p2 lab=aout}
C {noconn.sym} 760 130 0 1 {name=l2}
C {noconn.sym} 860 130 0 0 {name=l1}
C {netlist.sym} -50 -290 0 0 {name=s2 value="
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
+ rise_delay = 100p fall_delay = 100p )
*+ rise_delay = 500p fall_delay = 500p )

* WINDOW FIX: Widened analog-to-digital thresholds to catch fast sine waves
aADC [ ain ] [ din ] adc_buff
.model adc_buff adc_bridge(in_low = 1.2 in_high = 2.1 rise_delay = 10p fall_delay = 10p)

* Digital-to-analog bridge
aDAC [ dout ] [ aout ] dac_buff
.model dac_buff dac_bridge(out_low = 0 out_high = 3.3 t_rise = 500p t_fall = 500p)
"}
