v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 523.75 -955 1323.75 -555 {flags=graph
y1=0.48
y2=2.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00047899068
x2=0.00047998104
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
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00047899068
x2=0.00047998104
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
hcursor1_y=2.4908194
hcursor2_y=3.3038092}
B 2 1320 -1355 2120 -955 {flags=graph
y1=-0.0011
y2=0.0012
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00047899068
x2=0.00047998104
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
node="i(v.x1.x1.vmeas)
i(v.x1.x1.vmeas1)"
}
B 2 1320 -955 2120 -555 {flags=graph
y1=-4.1e-05
y2=0.00085
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00047899068
x2=0.00047998104
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
node=i(v.x1.x1.vmeas2)}
N 560 -330 560 -320 {lab=AVSS}
N 560 -260 560 -250 {lab=0}
N 560 -430 560 -390 {lab=AVDD}
N 1240 -390 1240 -310 {lab=VOP[4..1]}
N 1080 -390 1220 -390 {lab=VOP[4..1]}
N 1130 -330 1130 -310 {lab=VON[4..1]}
N 1080 -330 1130 -330 {lab=VON[4..1]}
N 1220 -390 1240 -390 {lab=VOP[4..1]}
N 1010 -460 1010 -440 {lab=AVDD}
N 1010 -280 1010 -260 {lab=AVSS}
N 890 -390 910 -390 {lab=VBP}
N 890 -330 910 -330 {lab=VBN}
N 770 -300 780 -300 {lab=VBN}
N 730 -350 730 -330 {lab=VBN}
N 730 -270 730 -250 {lab=AVSS}
N 730 -300 730 -270 {lab=AVSS}
N 780 -340 780 -300 {lab=VBN}
N 730 -340 780 -340 {lab=VBN}
N 730 -430 730 -410 {lab=AVDD}
N 1240 -250 1240 -230 {lab=AVSS}
N 1130 -230 1220 -230 {lab=AVSS}
N 1130 -250 1130 -230 {lab=AVSS}
N 1220 -230 1240 -230 {lab=AVSS}
N 1810 -450 1810 -420 {lab=AVDD}
N 1770 -420 1770 -390 {lab=VBP}
N 1770 -390 1810 -390 {lab=VBP}
N 1810 -470 1810 -450 {lab=AVDD}
N 1810 -390 1810 -360 {lab=VBP}
N 1810 -300 1810 -270 {lab=AVSS}
C {libs/core_analog/vco/vco.sym} 1010 -360 0 0 {name=x1}
C {devices/code_shown.sym} 5 -690 0 0 {name=Simulation only_toplevel=false value="
.param vbp=2.9 Vin=0 Vcm=2.5
.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
*VBP VBP 0 vbp

.control
save all

OP
show all

tran 1000p 1m
*DC V5 -1 1 0.01
*TRAN 10u

let sum = v(VOP1) + v(VON1)
let diff = v(VOP1) - v(VON1)
*let gain = deriv(diff)
let vcm = AVG(sum/2)


meas tran vmax MAX v(VOP1) FROM=10n TO=20n
meas tran vmin MIN v(VOP1) FROM=10n TO=20n
let vswing = vmax-vmin

write tb_vco_ideal_bias.raw
.endc
"}
C {devices/code_shown.sym} 10 -870 0 0 {name=Models only_toplevel=false
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
C {lab_pin.sym} 1240 -390 2 0 {name=p6 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 1130 -330 2 0 {name=p7 sig_type=std_logic lab=VON[4..1]}
C {lab_pin.sym} 1010 -260 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1010 -460 0 0 {name=p9 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 890 -390 0 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 890 -330 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {devices/launcher.sym} 580 -530 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_vco_ideal_bias.raw tran"
}
C {devices/launcher.sym} 765 -530 0 0 {name=h1
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_vco.raw dc"
}
C {symbols/nfet_03v3.sym} 750 -300 0 1 {name=M7
L=1u
W=37.7u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {isource.sym} 730 -380 0 0 {name=I0 value=0.4u}
C {lab_pin.sym} 730 -250 0 0 {name=p4 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 730 -430 0 0 {name=p14 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 780 -340 0 1 {name=p3 sig_type=std_logic lab=VBN}
C {capa.sym} 1450 -270 0 0 {name=CN[4..1]
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1190 -230 3 0 {name=p10 sig_type=std_logic lab=AVSS}
C {capa.sym} 1560 -270 0 0 {name=CN1[4..1]
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {symbols/pfet_03v3.sym} 1790 -420 0 0 {name=M2
L=0.4u
W=0.3u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1810 -470 0 0 {name=p1 sig_type=std_logic lab=AVDD}
C {isource.sym} 1810 -330 0 0 {name=I1 value=0.1u}
C {lab_pin.sym} 1810 -270 0 0 {name=p11 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1770 -390 0 0 {name=p15 sig_type=std_logic lab=VBP}
