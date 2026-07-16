v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 520 -955 1320 -555 {flags=graph
y1=-0.1361024
y2=4.156835
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4e-06
x2=3.6e-05
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
B 2 520 -1355 1320 -955 {flags=graph
y1=-0.2437583
y2=4.1006227
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4e-06
x2=3.6e-05
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
node="vop1
vop3
von1
von3"
}
B 2 1320 -1355 2120 -955 {flags=graph
y1=1.8e-07
y2=0.0018
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4e-06
x2=3.6e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 8"
node="i(v.x2.vmeas2)
i(v.x2.vmeas1)
i(v.x2.vmeas)
i(v.x2.x1.vmeas)"}
B 2 1320 -955 2120 -555 {flags=graph
y1=-0.10828537
y2=1.2188187
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4e-06
x2=3.6e-05
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
N 560 -330 560 -320 {lab=AVSS}
N 560 -260 560 -250 {lab=0}
N 560 -430 560 -390 {lab=AVDD}
N 720 -430 720 -390 {lab=Vin}
N 800 -430 800 -390 {lab=Vcm}
N 1670 -270 1670 -250 {lab=AVSS}
N 1560 -250 1650 -250 {lab=AVSS}
N 1560 -270 1560 -250 {lab=AVSS}
N 1670 -410 1670 -330 {lab=VOP[4..1]}
N 1510 -410 1650 -410 {lab=VOP[4..1]}
N 1560 -350 1560 -330 {lab=VON[4..1]}
N 1510 -350 1560 -350 {lab=VON[4..1]}
N 1650 -250 1670 -250 {lab=AVSS}
N 1650 -410 1670 -410 {lab=VOP[4..1]}
N 1440 -480 1440 -460 {lab=AVDD}
N 1440 -300 1440 -280 {lab=AVSS}
N 1320 -410 1340 -410 {lab=VBP}
N 1320 -350 1340 -350 {lab=VBN}
N 680 -330 800 -330 {lab=AVSS}
N 1250 -410 1320 -410 {lab=VBP}
N 1250 -350 1320 -350 {lab=VBN}
N 1180 -470 1180 -460 {lab=AVDD}
N 1180 -470 1440 -470 {lab=AVDD}
N 1180 -300 1180 -290 {lab=AVSS}
N 1180 -290 1440 -290 {lab=AVSS}
N 1070 -410 1110 -410 {lab=VCTRL}
N 1070 -350 1110 -350 {lab=STARTUP}
N 560 -330 680 -330 {lab=AVSS}
N 1330 -350 1330 -270 {lab=VBN}
C {libs/core_analog/vco/vco.sym} 1440 -380 0 0 {name=x1}
C {devices/code_shown.sym} -305 -680 0 0 {name=Simulation only_toplevel=false value="
.param vbp=2.1 vbn=1.2 Vin=0 Vcm=2.5
.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.param t1=1u t2=2u t3=3u t4=4u t5=5u t6=6u t7=7u t8=8u tr=100n

.param d0=0 d1=0.4125 d2=0.825 d3=1.2375
+d4=1.65 d5=2.0625 d6=2.475 d7=2.8875 d8=3.3

vs startup 0 pulse(0 1 100n 10n 10n 100n 100u)
vctrl vctrl 0 pwl(
+0 d1 t1 d1 't1+tr' d8
+t2 d8 't2+tr' d7
+t3 d7 't3+tr' d6
+t4 d6 't4+tr' d5
+t5 d5 't5+tr' d4
+t6 d4 't6+tr' d3
+t7 d3 't7+tr' d2
+t8 d2 't8+tr' d1 R 0)

.control
save all

OP
show all

tran 100p 10u
*DC V5 -1 1 0.01
*TRAN 10u

let sum = v(VOP1) + v(VON1)
let diff = v(VOP1) - v(VON1)
*let gain = deriv(diff)
let vcm = AVG(sum/2)


meas tran vmax MAX v(VOP1) FROM=10n TO=20n
meas tran vmin MIN v(VOP1) FROM=10n TO=20n
let vswing = vmax-vmin

write tb_vco.raw
.endc
"}
C {devices/code_shown.sym} -300 -860 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice SS
*.lib $::180MCU_MODELS/sm141064.ngspice FF
*.lib $::180MCU_MODELS/sm141064.ngspice SF
*.lib $::180MCU_MODELS/sm141064.ngspice FS
"}
C {vsource.sym} 560 -360 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 560 -250 0 0 {name=l1 lab=0}
C {vsource.sym} 560 -290 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 560 -430 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 560 -330 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {vsource.sym} 720 -360 0 0 {name=V5 value=Vin savecurrent=false}
C {vsource.sym} 800 -360 0 0 {name=V6 value=Vcm savecurrent=false}
C {lab_pin.sym} 720 -430 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 800 -430 0 0 {name=p11 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1620 -250 3 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1670 -410 2 0 {name=p6 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 1560 -350 2 0 {name=p7 sig_type=std_logic lab=VON[4..1]}
C {lab_pin.sym} 1440 -280 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1440 -480 0 0 {name=p9 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1290 -410 1 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1290 -350 3 0 {name=p13 sig_type=std_logic lab=VBN}
C {devices/launcher.sym} 580 -530 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_vco.raw tran"
}
C {devices/launcher.sym} 765 -530 0 0 {name=h1
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_vco.raw dc"
}
C {libs/core_analog/bias_generator/bias_generator.sym} 1180 -380 0 0 {name=x2}
C {lab_pin.sym} 1070 -410 0 0 {name=p4 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 1070 -350 0 0 {name=p14 sig_type=std_logic lab=STARTUP}
C {capa.sym} 1330 -240 0 0 {name=Cbn
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1330 -210 3 0 {name=p3 sig_type=std_logic lab=AVSS}
