v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1250 -1270 -1200 -1270 {lab=Ub}
N -1250 -1210 -1200 -1210 {lab=Db}
N -1360 -1300 -1120 -1300 {lab=AVDD}
N -1360 -1180 -1120 -1180 {lab=AVSS}
C {devices/code_shown.sym} -705 -780 0 0 {name=tb2 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG R_div=2 N_div=35

.ic v(VCTRL)=1.5 v(vbp)=1.5
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15 itl4=50 gmin=1e-12
.options method=gear

.param d1=0 d2=3.3 d3=3.3 d4=0
.param d1b=3.3 d2b=0 d3b=0 d4b=3.3

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

*tran 100n 250m
tran 10p 100u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=5u TO=100u

remzerovec

write tb2.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb2.txt tran.all

.endc
"}
C {devices/code_shown.sym} -1705 -780 0 0 {name=tb1 only_toplevel=false value="
==============Fref, N======================
.param f_ref=10k N_div=2

.param d1=3.3 d2=3.3 d3=3.3 d4=3.3
.param d1b=0 d2b=0 d3b=0 d4b=0

.ic v(VCTRL)=2.6 v(vbp)=2.6
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
.options method=gear

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 100n 250m

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=10m TO=250m

remzerovec

write tb1.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb1.txt tran.all

.endc
"}
C {devices/code_shown.sym} 235 -780 0 0 {name=tb3 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG N_div=128

.param d1=0 d2=0 d3=0 d4=3.3
.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=0

.ic v(VCTRL)=1 v(vbp)=1
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
.options method=gear

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 10p 120u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=5u TO=120u

remzerovec

write tb3.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb3.txt tran.all

.endc
"}
C {libs/model_pll/pfd_model.sym} -1150 -870 0 0 {name=x1}
C {devices/code_shown.sym} -765 -2430 0 0 {name=tb21 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG R_div=2 N_div=35

.ic v(VCTRL)=1.5 v(vbp)=1.5
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15 itl4=50 gmin=1e-12
.options method=gear

.param d1=0 d2=3.3 d3=3.3 d4=0
.param d1b=3.3 d2b=0 d3b=0 d4b=3.3

VS1 S1i 0 d1
VS2 S2i 0 d2
VS3 S3i 0 d3
VS4 S4i 0 d4

R_VS1 S1i S1 1m
R_VS2 S2i S2 1m
R_VS3 S3i S3 1m
R_VS4 S4i S4 1m

VS1b S1bi 0 d1b
VS2b S2bi 0 d2b
VS3b S3bi 0 d3b
VS4b S4bi 0 d4b

R_VS1b S1bi S1b 1m
R_VS2b S2bi S2b 1m
R_VS3b S3bi S3b 1m
R_VS4b S4bi S4b 1m

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 20p 100u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=5u TO=100u

remzerovec

write tb2.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb2.txt tran.all

.endc
"}
C {libs/core_analog/pfd/pfd_11gate.sym} -1360 -1240 0 0 {name=x2}
C {lab_wire.sym} -1200 -1270 0 0 {name=p26 sig_type=std_logic lab=Ub}
C {lab_wire.sym} -1200 -1210 0 0 {name=p27 sig_type=std_logic lab=Db}
C {libs/core_analog/pfd_s2d/pfd_s2d.sym} -1120 -1240 0 0 {name=x5}
C {lab_pin.sym} -1120 -1300 2 0 {name=p85 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} -1120 -1180 0 1 {name=p86 sig_type=std_logic lab=AVSS}
C {devices/code_shown.sym} -705 470 0 0 {name=tb22 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG R_div=2 N_div=35

.ic v(VCTRL)=2 v(vbp)=2
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15 itl4=50 gmin=1e-12
.options method=gear

.param d1=0 d2=3.3 d3=3.3 d4=0
.param d1b=3.3 d2b=0 d3b=0 d4b=3.3

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 10p 20u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(up) v(dn) i(v1)

meas tran I_vdd AVG i(v1) FROM=5u TO=100u

remzerovec

write tb2.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb2.txt tran.all

.endc
"}
C {netlist.sym} 240 170 0 0 {name=s2 value="
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

* WINDOW FIX: Widened analog-to-digital thresholds to catch fast sine waves
aADC [ ain ] [ din ] adc_buff
.model adc_buff adc_bridge(in_low = 1.2 in_high = 2.1 rise_delay = 10p fall_delay = 10p)

* Digital-to-analog bridge
aDAC [ dout ] [ aout ] dac_buff
.model dac_buff dac_bridge(out_low = 0 out_high = 3.3 t_rise = 10p t_fall = 10p)
"}
C {devices/code_shown.sym} 2215 -810 0 0 {name=tb5 only_toplevel=false value="
==============Fref, N======================
.param f_ref=10MEG N_div=30

.param d1=0 d2=0 d3=0 d4=0
.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=3.3

.ic v(VCTRL)=1 v(vbp)=1
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
.options method=gear

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 100p 120u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL)
+v(up) v(dn)
+v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=5u TO=120u

remzerovec

write tb5.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb5.txt tran.all

.endc
"}
C {devices/code_shown.sym} 1215 -800 0 0 {name=tb4 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG N_div=255

.param d1=0 d2=0 d3=0 d4=0
.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=3.3

.ic v(VCTRL)=1 v(vbp)=1
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
.options method=gear

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 100p 120u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=5u TO=120u

remzerovec

write tb4.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb4.txt tran.all

.endc
"}
