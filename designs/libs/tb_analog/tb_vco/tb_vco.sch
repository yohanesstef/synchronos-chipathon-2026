v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 480 -945 1280 -545 {flags=graph
y1=-0.23403616
y2=1.0659638
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-08
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
node="vop1
vop2
vop3
vop4"}
B 2 1280 -945 2080 -545 {flags=graph
y1=1.5
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="4 5"
node="vop4
von4"}
B 2 480 -1345 1280 -945 {flags=graph
y1=1.6
y2=2.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
color="4 5 6 7"
node="vop1
vop3
von1
von3"
hcursor1_y=2.8627903
hcursor2_y=1.6585604}
B 2 1280 -1345 2080 -945 {flags=graph
y1=0.66
y2=3.96
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
hcursor1_y=2.8627903
hcursor2_y=1.6585604
color="4 5"
node="vcm
vswing"}
N 560 -330 680 -330 {lab=AVSS}
N 560 -330 560 -320 {lab=AVSS}
N 560 -260 560 -250 {lab=0}
N 640 -430 640 -390 {lab=VBP}
N 560 -430 560 -390 {lab=AVDD}
N 720 -430 720 -390 {lab=Vin}
N 800 -430 800 -390 {lab=Vcm}
N 1530 -270 1530 -250 {lab=AVSS}
N 1420 -250 1510 -250 {lab=AVSS}
N 1420 -270 1420 -250 {lab=AVSS}
N 1530 -410 1530 -330 {lab=VOP[4..1]}
N 1370 -410 1510 -410 {lab=VOP[4..1]}
N 1420 -350 1420 -330 {lab=VON[4..1]}
N 1370 -350 1420 -350 {lab=VON[4..1]}
N 1510 -250 1530 -250 {lab=AVSS}
N 1510 -410 1530 -410 {lab=VOP[4..1]}
N 1300 -480 1300 -460 {lab=AVDD}
N 1300 -300 1300 -280 {lab=AVSS}
N 1180 -410 1200 -410 {lab=VBP}
N 1180 -350 1200 -350 {lab=VBN}
N 1020 -350 1040 -350 {lab=VBN}
N 1040 -400 1040 -350 {lab=VBN}
N 980 -400 1040 -400 {lab=VBN}
N 980 -400 980 -380 {lab=VBN}
N 980 -320 980 -280 {lab=AVSS}
N 980 -430 980 -400 {lab=VBN}
N 980 -510 980 -490 {lab=AVDD}
N 970 -350 980 -350 {lab=AVSS}
N 970 -350 970 -320 {lab=AVSS}
N 970 -320 980 -320 {lab=AVSS}
N 680 -330 800 -330 {lab=AVSS}
C {libs/core_analog/vco/vco.sym} 1300 -380 0 0 {name=x1}
C {devices/code_shown.sym} 5 -360 0 0 {name=Simulation only_toplevel=false value="
.param vbp=2.1 vbn=1.2 Vin=0 Vcm=2.5
.ic v(vop1)=3.3 v(von1)=0

.control
save all

OP
show all

tran 10p 50n
*DC V5 -1 1 0.01
*TRAN 10u

let sum = v(VOP1) + v(VON1)
let diff = v(VOP1) - v(VON1)
*let gain = deriv(diff)
let vcm = AVG(sum/2)


meas tran vmax MAX v(VOP1) FROM=10n TO=20n
meas tran vmin MIN v(VOP1) FROM=10n TO=20n
let vswing = vmax-xmin

write tb_vco.raw
.endc
"}
C {devices/code_shown.sym} 10 -480 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice SS
*.lib $::180MCU_MODELS/sm141064.ngspice FF
"}
C {vsource.sym} 560 -360 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 640 -360 0 0 {name=V2 value=vbp savecurrent=false}
C {gnd.sym} 560 -250 0 0 {name=l1 lab=0}
C {vsource.sym} 560 -290 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 560 -430 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 640 -430 0 0 {name=p3 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1040 -400 0 1 {name=p4 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 560 -330 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {vsource.sym} 720 -360 0 0 {name=V5 value=Vin savecurrent=false}
C {vsource.sym} 800 -360 0 0 {name=V6 value=Vcm savecurrent=false}
C {lab_pin.sym} 720 -430 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 800 -430 0 0 {name=p11 sig_type=std_logic lab=Vcm}
C {capa.sym} 1530 -300 0 0 {name=CP[4..1]
m=1
value=15f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1420 -300 0 0 {name=CN[4..1]
m=1
value=15f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1480 -250 3 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1530 -410 2 0 {name=p6 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 1420 -350 2 0 {name=p7 sig_type=std_logic lab=VON[4..1]}
C {lab_pin.sym} 1300 -280 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1300 -480 0 0 {name=p9 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1180 -410 0 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1180 -350 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {devices/launcher.sym} 540 -520 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_vco.raw tran"
}
C {devices/launcher.sym} 725 -520 0 0 {name=h1
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_vco.raw dc"
}
C {symbols/nfet_03v3.sym} 1000 -350 0 1 {name=M7
L=0.5u
W=7u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 980 -280 0 0 {name=p14 sig_type=std_logic lab=AVSS}
C {isource.sym} 980 -460 0 0 {name=I0 value=240u}
C {lab_pin.sym} 980 -510 0 0 {name=p15 sig_type=std_logic lab=AVDD}
