v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {CMOS Inverter - GF180MCU 3.3V} 100 -560 0 0 0.4 0.4 {}
T {Wp/Wn ~ 2:1 for balanced rise/fall} 100 -530 0 0 0.3 0.3 {}
N 340 -400 340 -340 {
lab=Y}
N 340 -470 340 -460 {
lab=VDD}
N 340 -280 340 -270 {
lab=VSS}
N 240 -430 240 -310 {
lab=A}
N 200 -370 240 -370 {
lab=A}
N 340 -470 360 -470 {lab=VDD}
N 340 -430 360 -430 {lab=VDD}
N 360 -470 360 -430 {lab=VDD}
N 340 -310 360 -310 {lab=VSS}
N 360 -310 360 -280 {lab=VSS}
N 340 -280 360 -280 {lab=VSS}
N 240 -430 300 -430 {lab=A}
N 240 -310 300 -310 {lab=A}
N 340 -380 420 -380 {lab=Y}
C {symbols/pfet_03v3.sym} 320 -430 0 0 {name=Mp
L=1u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 320 -310 0 0 {name=Mn
L=1u
W=0.5u
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
C {ipin.sym} 200 -370 0 0 {name=p1 lab=A}
C {opin.sym} 420 -380 0 0 {name=p2 lab=Y}
C {iopin.sym} 340 -470 3 0 {name=p3 lab=VDD}
C {iopin.sym} 340 -270 1 0 {name=p4 lab=VSS}
