v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 420 -1015 1220 -615 {flags=graph
y1=-2.3e-05
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0970577e-08
x2=3.8801965e-08
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
node=IN}
B 2 420 -1415 1220 -1015 {flags=graph
y1=-0.071
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0970577e-08
x2=3.8801965e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=20
node=OUT
}
N 690 -420 750 -420 {lab=OUT}
N 750 -360 750 -330 {lab=GND}
C {capa.sym} 750 -390 0 0 {name=CL
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {libs/core_analog/inv/inv.sym} 630 -420 0 0 {name=x1[1..64]}
C {lab_wire.sym} 590 -420 0 0 {name=p7 sig_type=std_logic lab=IN}
C {code_shown.sym} 115 -390 0 0 {name=SIMULATION1 only_toplevel=false
value="
VDD VDD GND 3.3

.param fref=350MEG tp='1/fref'
.param th='tp/2' td=10n tf=1p
VIN IN GND pulse(0 3.3 td tf tf th tp)


.control
tran 10p 100n
save v(in) v(out)

write tb_inv.raw
.endc
"}
C {code_shown.sym} 105 -530 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 610 -380 0 0 {name=p1 sig_type=std_logic lab=GND}
C {lab_wire.sym} 610 -460 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 750 -420 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 750 -330 0 1 {name=p10 sig_type=std_logic lab=GND}
C {devices/launcher.sym} 480 -590 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_inv.raw tran"
}
