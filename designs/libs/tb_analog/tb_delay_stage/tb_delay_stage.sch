v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 600 -1095 1400 -695 {flags=graph
y1=1.6
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.9
x2=1.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VOP
VON"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 1400 -1095 2200 -695 {flags=graph
y1=2
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.9
x2=1.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vi-
vi+"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 600 -1495 1400 -1095 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.9
x2=1.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="8 18"
node="\\"Gain; deriv(v(Vo+)-v(Vo-))\\"
\\"Differential; v(Vo+) - v(Vo-)\\""}
B 2 1400 -1495 2200 -1095 {flags=graph
y1=-1.7
y2=5.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.9
x2=1.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5"
node="gain
diff"}
N 325 -405 445 -405 {lab=AVSS}
N 325 -405 325 -395 {lab=AVSS}
N 325 -335 325 -325 {lab=0}
N 385 -505 385 -465 {lab=VBP}
N 445 -505 445 -465 {lab=VBN}
N 325 -505 325 -465 {lab=AVDD}
N 1000 -525 1000 -505 {lab=AVDD}
N 960 -525 960 -505 {lab=VBP}
N 1000 -345 1000 -325 {lab=AVSS}
N 960 -345 960 -325 {lab=VBN}
N 900 -455 920 -455 {lab=Vi+}
N 900 -395 920 -395 {lab=Vi-}
N 1040 -455 1055 -455 {lab=VON}
N 1040 -395 1055 -395 {lab=VOP}
N 695 -420 750 -420 {lab=AVSS}
N 695 -460 750 -460 {lab=Vin}
N 505 -505 505 -465 {lab=Vin}
N 445 -405 565 -405 {lab=AVSS}
N 565 -505 565 -465 {lab=Vcm}
N 790 -410 790 -355 {lab=Vcm}
N 655 -355 790 -355 {lab=Vcm}
N 655 -410 655 -355 {lab=Vcm}
N 655 -495 655 -470 {lab=Vi-}
N 790 -495 790 -470 {lab=Vi+}
C {libs/core_analog/delay_stage/delay_stage.sym} 975 -425 0 0 {name=x1}
C {devices/code_shown.sym} -225 -440 0 0 {name=Simulation only_toplevel=false value="
.param vbp=2 vbn=1.2 Vin=0 Vcm=2.5

.control
save all

OP
show all

DC V5 -1 1 0.01
*TRAN 10u

let diff = v(VOP) - v(VON)
let gain = deriv(diff)

write tb_delay_stage.raw
.endc
"}
C {devices/code_shown.sym} -220 -560 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 325 -435 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 385 -435 0 0 {name=V2 value=vbp savecurrent=false}
C {vsource.sym} 445 -435 0 0 {name=V3 value=vbn savecurrent=false}
C {gnd.sym} 325 -325 0 0 {name=l1 lab=0}
C {vsource.sym} 325 -365 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1000 -525 0 1 {name=p1 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 325 -505 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 385 -505 0 0 {name=p3 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 445 -505 0 0 {name=p4 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 325 -405 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1000 -325 0 1 {name=p6 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 960 -325 0 0 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 960 -525 0 0 {name=p8 sig_type=std_logic lab=VBP}
C {vcvs.sym} 655 -440 0 1 {name=E1 value=-0.5}
C {vcvs.sym} 790 -440 0 0 {name=E2 value=0.5}
C {vsource.sym} 505 -435 0 0 {name=V5 value=Vin savecurrent=false}
C {vsource.sym} 565 -435 0 0 {name=V6 value=Vcm savecurrent=false}
C {lab_pin.sym} 505 -505 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 565 -505 0 0 {name=p11 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 720 -460 1 0 {name=p12 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 720 -420 3 0 {name=p13 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 720 -355 3 0 {name=p14 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 655 -495 0 0 {name=p15 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 790 -495 0 1 {name=p16 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 900 -455 0 0 {name=p9 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 900 -395 0 0 {name=p17 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 1055 -455 0 1 {name=p18 sig_type=std_logic lab=VON}
C {lab_pin.sym} 1055 -395 0 1 {name=p19 sig_type=std_logic lab=VOP}
C {devices/launcher.sym} 660 -670 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_delay_stage.raw tran"
}
C {devices/launcher.sym} 845 -670 0 0 {name=h1
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_delay_stage.raw dc"
}
