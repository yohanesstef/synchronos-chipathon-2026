v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 370 -500 1170 -100 {flags=graph
y1=-0.038
y2=3.4
ypos1=-0.038
ypos2=3.4
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="4 5 6 7 8 9 10 11"
node="d7
d6
d5
d4
d3
d2
d1
d0"}
B 2 370 -900 1170 -500 {flags=graph
y1=-0.038
y2=3.4
ypos1=-0.2099
ypos2=3.2281
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="4 5"
node="CP data;s3,s2,s1,s0
Din;d7,d6,d5,d4,d3,d2,d1,d0"}
N 280 50 280 60 {lab=VDD}
N 280 100 280 110 {lab=0}
C {devices/vsource.sym} 280 80 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 280 110 0 0 {name=l1 lab=0}
C {devices/lab_pin.sym} 280 50 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 20 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 0 240 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 400 0 0 0 {name=s1 only_toplevel=false value="
* 1. Extracted SPICE Subcircuit 
.include /foss/designs/synchronos-chipathon-2026/designs/libs/core_analog/lut/cp_lut.spice

* 2. GF180 Standard Cell Library
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice

* 3. Device Models
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.param freq=400k tf=10p td=10n
.param tp0='1/freq' th0='tp0/2'
.param tp1='2*tp0' th1='tp1/2'
.param tp2='2*tp1' th2='tp2/2'
.param tp3='2*tp2' th3='tp3/2'
.param tp4='2*tp3' th4='tp4/2'
.param tp5='2*tp4' th5='tp5/2'
.param tp6='2*tp5' th6='tp6/2'
.param tp7='2*tp6' th7='tp7/2'

VDO D0 gnd pulse(0 3.3 td tf tf th0 tp0)
VD1 D1 gnd pulse(0 3.3 td tf tf th1 tp1)
VD2 D2 gnd pulse(0 3.3 td tf tf th2 tp2)
VD3 D3 gnd pulse(0 3.3 td tf tf th3 tp3)
VD4 D4 gnd pulse(0 3.3 td tf tf th4 tp4)
VD5 D5 gnd pulse(0 3.3 td tf tf th5 tp5)
VD6 D6 gnd pulse(0 3.3 td tf tf th6 tp6)
VD7 D7 gnd pulse(0 3.3 td tf tf th7 tp7)

.tran 100n 700u
.save v(d0) v(d1) v(d2) v(d3) v(d4) v(d5) v(d6) v(d7) v(s0) v(s1) v(s2) v(s3)
.control
run
*Expecting output to be Code 3 (0011)
*plot v(cp_tune_3)+6 v(cp_tune_2)+4 v(cp_tune_1)+2 v(cp_tune_0)
write ys_tb_cp_lut.raw
*write ys_tb_cp_lut2.raw
.endc"}
C {libs/core_analog/lut/cp_lut.sym} 0 200 0 0 {name=x2}
C {launcher.sym} 440 -70 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/ys_tb_cp_lut.raw tran"
}
C {devices/lab_pin.sym} -160 180 0 0 {name=p2 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} -160 160 0 0 {name=p3 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} -160 140 0 0 {name=p4 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -160 120 0 0 {name=p5 sig_type=std_logic lab=D3}
C {devices/lab_pin.sym} -160 100 0 0 {name=p6 sig_type=std_logic lab=D4}
C {devices/lab_pin.sym} -160 80 0 0 {name=p7 sig_type=std_logic lab=D5}
C {devices/lab_pin.sym} -160 60 0 0 {name=p8 sig_type=std_logic lab=D6}
C {devices/lab_pin.sym} -160 40 0 0 {name=p9 sig_type=std_logic lab=D7}
C {devices/lab_pin.sym} 160 140 0 1 {name=p10 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 160 120 0 1 {name=p11 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 160 100 0 1 {name=p12 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 160 80 0 1 {name=p13 sig_type=std_logic lab=S3}
C {launcher.sym} 660 -70 0 0 {name=h1
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/ys_tb_cp_lut2.raw tran"
}
