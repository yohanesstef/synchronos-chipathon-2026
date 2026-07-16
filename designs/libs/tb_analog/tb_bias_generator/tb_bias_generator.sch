v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 610 -775 1410 -375 {flags=graph
y1=0.0086
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=4.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VBP
VBN"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 1410 -775 2210 -375 {flags=graph
y1=2.4e-11
y2=0.0032
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=4.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(v.x1.vmeas2)
i(v.x1.vmeas1)
i(v.x1.vmeas)"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N 1090 -160 1090 -140 {lab=AVSS}
N 1090 -240 1090 -220 {lab=VBN}
C {libs/core_analog/bias_generator/bias_generator.sym} 790 -220 0 0 {name=x1}
C {devices/code_shown.sym} 5 -350 0 0 {name=Simulation only_toplevel=false value="
.ic v(startup)=1.65

VDD AVDD 0 3.3
VSS AVSS 0 0
VC vctrl 0 1.65
vs startup 0 0

.control
save all

OP
show all

DC VC -1 4.3 0.01

write tb_bias_generator.raw
.endc
"}
C {devices/code_shown.sym} 10 -470 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 940 -250 0 1 {name=p1 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 940 -230 0 1 {name=p2 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 940 -210 0 1 {name=p3 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 940 -190 0 1 {name=p4 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 640 -250 0 0 {name=p5 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 640 -230 0 0 {name=p6 sig_type=std_logic lab=STARTUP}
C {devices/launcher.sym} 670 -350 0 0 {name=h2
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_bias_generator.raw dc"
}
C {capa.sym} 1090 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1090 -240 0 1 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1090 -140 0 1 {name=p8 sig_type=std_logic lab=AVSS}
