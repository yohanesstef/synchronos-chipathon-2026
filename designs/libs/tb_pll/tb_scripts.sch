v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 680 -1710 1480 -1310 {flags=graph
y1=-0.029
y2=3.4
ypos1=0.14245
ypos2=3.57145
divy=5
subdivy=1
unity=1
x1=3.5e-05
x2=0.000135
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ck270
ck180
ck90
ck0"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1800844864
digital=1
legend=1}
B 2 680 -1310 1480 -910 {flags=graph
y1=0
y2=3.3
ypos1=0.165
ypos2=3.465
divy=5
subdivy=1
unity=1
x1=3.5e-05
x2=0.000135
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 7 18 4"
node="UP
DN
\\"UP-DN; UP DN -\\"
space
REFERENCE
DIV_OUT"
digital=1}
B 2 -120 -1310 680 -910 {flags=graph
y1=1.6235407
y2=1.6286786
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VBP
VCTRL"
color="4 8"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
}
C {devices/code_shown.sym} -1705 -780 0 0 {name=tb1 only_toplevel=false value="
==============Fref, N======================
.param f_ref=10k N_div=2
.param d1=3.3 d2=3.3 d3=3.3 d4=3.3
.param d1b=0 d2b=0 d3b=0 d4b=0

.ic v(VCTRL)=1.65 v(vbp)=1.65
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10n 10n tp_ref td_ref)

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

tran 100n 80m

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=10m TO=250m

remzerovec

write tb1_2raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb1_2.txt tran.all
destroy all
.endc
"}
C {devices/code_shown.sym} -775 -770 0 0 {name=tb2 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG R_div=2 N_div=35

.ic v(VCTRL)=1.65 v(vbp)=1.65
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 500p 500p tp_ref td_ref)

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

save v(VCTRL) v(vbp)
+v(reference) v(div_out)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 10p 100u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp)
+v(reference) v(div_out) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=5u TO=100u

remzerovec

write tb2_8.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb2_8.txt tran.all
destroy all
.endc
"}
C {devices/code_shown.sym} 195 -780 0 0 {name=tb3 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG N_div=100

.param d1=0 d2=0 d3=0 d4=3.3
.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=0

.ic v(VCTRL)=1.65 v(vbp)=1.65
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 500p 500p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15 itl4=50 gmin=1e-12
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
+v(reference) v(div_out)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 10p 100u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(up) v(dn) i(vmeas)

remzerovec

write tb3_7.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb3_7.txt tran.all
destroy all
.endc
"}
C {devices/code_shown.sym} 1245 -770 0 0 {name=tb4 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG N_div=255

.param d1=0 d2=0 d3=0 d4=0
.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=3.3

.ic v(VCTRL)=1.65 v(vbp)=1.65
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 500p 500p tp_ref td_ref)

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
+v(reference) v(div_out)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 10p 100u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

remzerovec

write tb4_2.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb4_2.txt tran.all

destroy all
.endc
"}
C {devices/code_shown.sym} 2245 -780 0 0 {name=tb5 only_toplevel=false value="
==============Fref, N======================
.param f_ref=10MEG N_div=30

.param d1=0 d2=3.3 d3=3.3 d4=3.3
.param d1b=3.3 d2b=0 d3b=0 d4b=0

.ic v(VCTRL)=1 v(vbp)=1
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 500p 500p tp_ref td_ref)

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

tran 10p 180u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL)
+v(up) v(dn)
+v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) i(vmeas)

remzerovec

write tb5_3.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb5_3.txt tran.all
destroy all
.endc
"}
