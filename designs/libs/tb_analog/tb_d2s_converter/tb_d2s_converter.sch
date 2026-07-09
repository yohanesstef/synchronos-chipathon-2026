v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 510 -1070 1310 -670 {flags=graph
y1=-162.85085
y2=973.21576
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=vo
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
N 420 -370 420 -350 {lab=#net1}
N 420 -370 480 -370 {lab=#net1}
N 480 -370 480 -320 {lab=#net1}
N 420 -290 420 -280 {lab=VSS}
N 420 -450 420 -430 {lab=VDD}
N 400 -320 420 -320 {lab=VSS}
N 400 -320 400 -280 {lab=VSS}
N 400 -280 420 -280 {lab=VSS}
N 460 -320 580 -320 {lab=#net1}
N 880 -320 950 -320 {lab=VO}
N 920 -240 920 -220 {lab=VSS}
N 920 -320 920 -300 {lab=VO}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {d2s_converter.sym} 730 -340 0 0 {name=x1}
C {symbols/nfet_03v3.sym} 440 -320 0 1 {name=M1
L=0.6u
W=17u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 420 -280 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {isource.sym} 420 -400 0 0 {name=I0 value=200u}
C {lab_pin.sym} 420 -450 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -360 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 580 -340 0 0 {name=p2 sig_type=std_logic lab=VIP}
C {devices/code_shown.sym} 20 -920 0 0 {name=Simulation only_toplevel=false value="

.param amp = 0.5
.param vcm = 1.65

vvss vss 0 dc 0
vvdd vdd 0 dc 3.3

vvip vip 0 dc vcm ac 0.5 0
vvin vin 0 dc vcm ac 0.5 180

.control
save all
ac dec 100 1k 1G
write tb_d2s_converter.raw
.endc
"}
C {devices/code_shown.sym} 20 -1020 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 880 -360 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 880 -340 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 950 -320 0 1 {name=p6 sig_type=std_logic lab=VO}
C {launcher.sym} 580 -630 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tb_d2s_converter.raw ac"
}
C {capa.sym} 920 -270 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 920 -220 0 1 {name=p7 sig_type=std_logic lab=VSS}
