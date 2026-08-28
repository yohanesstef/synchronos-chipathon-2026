v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 820 -1035 1620 -635 {flags=graph
y1=0
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00036623677
x2=0.00036693671
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="4 5 6"
node="VBP
VBN
VCTRL"}
B 2 1620 -1435 2420 -1035 {flags=graph
y1=-6.9e-09
y2=0.00078
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00036623677
x2=0.00036693671
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 7"
node="\\"Branch 1; i(v.x2.vmeas)\\"
\\"Branch 2;i(v.x2.vmeas1)\\"
\\"Branch 3; i(v.x2.vmeas2)\\"
\\"OPAMP Current; i(v.x2.x1.vmeas)\\""
}
B 2 1620 -1035 2420 -635 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00036623677
x2=0.00036693671
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=4
node=startup}
B 2 1620 -1835 2420 -1435 {flags=graph
y1=-0.0018
y2=0.0074
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00036623677
x2=0.00036693671
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=4
node=i(v.x1.x1.vmeas2)
hcursor1_y=0.00053304745
hcursor2_y=-5.6845618e-05}
B 2 820 -2235 1620 -1835 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00036623677
x2=0.00036693671
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
hcursor1_y=3.2941236
hcursor2_y=2.6301506
color="4 8 6 18"
node="von4
von3
von2
von1"}
B 2 820 -1435 1620 -1035 {flags=graph
y1=0
y2=2.8
ypos1=0
ypos2=2.8
divy=5
subdivy=1
unity=1
x1=0.00036623677
x2=0.00036693671
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="4 5 6 7"
node="ck270
ck180
ck90
ck0"
digital=1
linewidth_mult=1}
N 860 -410 860 -400 {lab=AVSS}
N 860 -340 860 -330 {lab=0}
N 860 -510 860 -470 {lab=AVDD}
N 1990 -510 2010 -510 {lab=VOP[4..1]}
N 1920 -580 1920 -560 {lab=AVDD_VCO}
N 1920 -400 1920 -380 {lab=AVSS}
N 1800 -510 1820 -510 {lab=VBP}
N 1800 -450 1820 -450 {lab=VBN}
N 1730 -450 1800 -450 {lab=VBN}
N 1660 -570 1660 -560 {lab=AVDD}
N 1660 -400 1660 -390 {lab=AVSS}
N 1660 -390 1920 -390 {lab=AVSS}
N 1550 -510 1590 -510 {lab=VCTRL}
N 1550 -450 1590 -450 {lab=STARTUP}
N 860 -410 980 -410 {lab=AVSS}
N 1810 -450 1810 -370 {lab=VBN}
N 950 -510 950 -470 {lab=AVDD_VCO}
N 1990 -450 2010 -450 {lab=VON[4..1]}
N 2240 -250 2240 -230 {lab=AVSS}
N 2240 -320 2240 -310 {lab=DUMMY[1..4]}
N 1780 -310 1810 -310 {lab=AVSS}
N 1770 -530 1770 -510 {lab=VBP}
N 1770 -610 1770 -590 {lab=AVSS}
N 2010 -450 2050 -450 {lab=VON[4..1]}
N 2010 -510 2050 -510 {lab=VOP[4..1]}
N 1930 -250 1930 -230 {lab=AVSS}
N 1930 -320 1930 -310 {lab=CK0}
N 2010 -250 2010 -230 {lab=AVSS}
N 2010 -320 2010 -310 {lab=CK90}
N 2080 -250 2080 -230 {lab=AVSS}
N 2080 -320 2080 -310 {lab=CK180}
N 2150 -250 2150 -230 {lab=AVSS}
N 2150 -320 2150 -310 {lab=CK270}
N 1770 -510 1800 -510 {lab=VBP}
C {libs/core_analog/vco/vco.sym} 1920 -480 0 0 {name=x1}
C {devices/code_shown.sym} 5 -750 0 0 {name=Simulation only_toplevel=false value="
.param Vin=0 Vcm=2.5
.ic v(vop1)=3.3 v(von1)=0 v(startup)=0 v(vbp)=0
.param t1=1u t2=2u t3=3u t4=4u t5=5u t6=6u t7=10u t8=50u t9=500u tr=10n

.param d0=0 d1=0.35 d2=0.825 d3=1.2375
+d4=1.65 d5=2.0625 d6=2.475 d7=2.6 d8=2.75

*vs startup 0 pulse(0 1 100n 10n 10n 100n 100m)
*vctrl vctrl 0 pwl(0 d0 
*+t1 d0 't1+tr' d1
*+t2 d1 't2+tr' d2
*+t3 d2 't3+tr' d3
*+t4 d3 't4+tr' d4
*+t5 d4 't5+tr' d5
*+t6 d5 't6+tr' d6
*+t7 d6 't7+tr' d7
*+t8 d7 't8+tr' d8
*+t9 d8 't9+tr' d0 R 0)

vctrl vctrl 0 d8

.control
set wr_singlescale
set wr_vecnames

save v(CK0) v(CK90) v(CK180) v(CK270) v(vctrl) v(vbp)
+v(vbn) v(dummy1) v(dummy2) v(dummy3) v(dummy4)
+v(VOP1) v(VOP2) v(VOP3) v(VOP4)
+v(VON1) v(VON2) v(VON3) v(VON4)

OP
show all

*tran 1n 1.5m
tran 10n 500u
*tran 10p 50n



*let sum = v(VOP1) + v(VON1)
*let diff = v(VOP1) - v(VON1)
*let gain = deriv(diff)
*let vcm = AVG(sum/2)


*meas tran vmax MAX v(VOP1) FROM=10n TO=20n
*meas tran vmin MIN v(VOP1) FROM=10n TO=20n
*let vswing = vmax-vmin

meas tran I_tail_avg1 AVG i(v.x1.x1.vmeas) FROM=1.01u TO=2u
meas tran I_tail_avg2 AVG i(v.x1.x1.vmeas) FROM=2.01u TO=3u
meas tran I_tail_avg3 AVG i(v.x1.x1.vmeas) FROM=3.01u TO=4u
meas tran I_tail_avg4 AVG i(v.x1.x1.vmeas) FROM=4.01u TO=5u
meas tran I_tail_avg5 AVG i(v.x1.x1.vmeas) FROM=5.01u TO=6u
meas tran I_tail_avg6 AVG i(v.x1.x1.vmeas) FROM=6.01u TO=10u
meas tran I_tail_avg7 AVG i(v.x1.x1.vmeas) FROM=10.01u TO=50u
meas tran I_tail_avg8 AVG i(v.x1.x1.vmeas) FROM=50.01u TO=500u

*meas tran I_d2s1 AVG i(v.x3.x1.vmeas) FROM=1.01u TO=2u
*meas tran I_d2s2 AVG i(v.x3.x1.vmeas) FROM=2.01u TO=3u
*meas tran I_d2s3 AVG i(v.x3.x1.vmeas) FROM=3.01u TO=4u
*meas tran I_d2s4 AVG i(v.x3.x1.vmeas) FROM=4.01u TO=5u
*meas tran I_d2s5 AVG i(v.x3.x1.vmeas) FROM=5.01u TO=6u
*meas tran I_d2s6 AVG i(v.x3.x1.vmeas) FROM=6.01u TO=10u
*meas tran I_d2s7 AVG i(v.x3.x1.vmeas) FROM=10.01u TO=50u
*meas tran I_d2s8 AVG i(v.x3.x1.vmeas) FROM=50.01u TO=500u

*meas tran I_VCO1 AVG i(V2) FROM=1.01u TO=2u
*meas tran I_VCO2 AVG i(V2) FROM=2.01u TO=3u
*meas tran I_VCO3 AVG i(V2) FROM=3.01u TO=4u
*meas tran I_VCO4 AVG i(V2) FROM=4.01u TO=5u
*meas tran I_VCO5 AVG i(V2) FROM=5.01u TO=6u
*meas tran I_VCO6 AVG i(V2) FROM=6.01u TO=10u
*meas tran I_VCO7 AVG i(V2) FROM=10.01u TO=100u
*meas tran I_VCO8 AVG i(V2) FROM=100.01u TO=1m

remzerovec
*linearize v(CK0) v(CK90) v(CK180) v(CK270)
write tb_quadrature_vco.raw
destroy all
exit
*wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb_quadrature_vco_free_running_test.txt tran.all
.endc
"}
C {devices/code_shown.sym} 0 -940 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice SS
*.lib $::180MCU_MODELS/sm141064.ngspice FF
*.lib $::180MCU_MODELS/sm141064.ngspice SF
*.lib $::180MCU_MODELS/sm141064.ngspice FS
"}
C {vsource.sym} 860 -440 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 860 -330 0 0 {name=l1 lab=0}
C {vsource.sym} 860 -370 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 860 -510 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 860 -410 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {capa.sym} 2240 -280 0 0 {name=CN[1..4]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2020 -510 1 0 {name=p6 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 2020 -450 3 0 {name=p7 sig_type=std_logic lab=VON[4..1]}
C {lab_pin.sym} 1920 -380 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1920 -580 0 0 {name=p9 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 1810 -510 1 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1770 -450 3 0 {name=p13 sig_type=std_logic lab=VBN}
C {devices/launcher.sym} 880 -610 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_quadrature_vco1.raw tran"
}
C {devices/launcher.sym} 1065 -610 0 0 {name=h1
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_quadrature_vco.raw dc"
}
C {libs/core_analog/bias_generator/bias_generator.sym} 1660 -480 0 0 {name=x2}
C {lab_pin.sym} 1550 -510 0 0 {name=p4 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 1550 -450 0 0 {name=p14 sig_type=std_logic lab=STARTUP}
C {capa.sym} 1810 -340 0 0 {name=Cbn
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1780 -310 0 0 {name=p3 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2240 -230 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2240 -320 0 1 {name=p33 sig_type=std_logic lab=DUMMY[1..4]}
C {vsource.sym} 950 -440 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_pin.sym} 950 -510 0 0 {name=p35 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 1660 -570 0 0 {name=p36 sig_type=std_logic lab=AVDD}
C {capa.sym} 1770 -560 2 0 {name=Cbn1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1770 -610 0 0 {name=p32 sig_type=std_logic lab=AVSS}
C {libs/core_analog/programmable_ffz/programmable_ffz.sym} 2570 -470 0 0 {name=x7}
C {lab_pin.sym} 2400 -470 0 0 {name=p37 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2570 -580 0 0 {name=p38 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2660 -350 3 0 {name=p39 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2730 -460 2 0 {name=p40 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 2470 -350 3 0 {name=p41 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2490 -350 3 0 {name=p42 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2530 -350 3 0 {name=p43 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2510 -350 3 0 {name=p44 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2620 -350 1 1 {name=p45 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2600 -350 1 1 {name=p46 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2560 -350 1 1 {name=p47 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2580 -350 1 1 {name=p48 sig_type=std_logic lab=AVDD}
C {libs/core_analog/d2s_top/d2s_top.sym} 2140 -480 0 0 {name=x3}
C {lab_pin.sym} 2100 -380 3 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2140 -380 3 0 {name=p10 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2140 -560 0 1 {name=p11 sig_type=std_logic lab=AVDD}
C {capa.sym} 1930 -280 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1930 -230 0 1 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1930 -320 0 1 {name=p16 sig_type=std_logic lab=CK0}
C {capa.sym} 2010 -280 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2010 -230 0 1 {name=p17 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2010 -320 0 1 {name=p18 sig_type=std_logic lab=CK90}
C {capa.sym} 2080 -280 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2080 -230 0 1 {name=p20 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2080 -320 0 1 {name=p21 sig_type=std_logic lab=CK180}
C {capa.sym} 2150 -280 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2150 -230 0 1 {name=p22 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2150 -320 0 1 {name=p23 sig_type=std_logic lab=CK270}
C {lab_pin.sym} 2220 -510 0 1 {name=p24 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 2220 -490 0 1 {name=p25 sig_type=std_logic lab=CK90}
C {lab_pin.sym} 2220 -470 0 1 {name=p26 sig_type=std_logic lab=CK180}
C {lab_pin.sym} 2220 -450 0 1 {name=p27 sig_type=std_logic lab=CK270}
C {lab_pin.sym} 2220 -430 0 1 {name=p28 sig_type=std_logic lab=DUMMY[1..4]}
