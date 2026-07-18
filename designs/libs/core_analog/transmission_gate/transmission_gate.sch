v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 190 -380 190 -360 {lab=clkp}
N 190 -120 190 -100 {lab=clkn}
N 130 -320 160 -320 {lab=ind}
N 130 -320 130 -160 {lab=ind}
N 130 -160 160 -160 {lab=ind}
N 110 -240 130 -240 {lab=ind}
N 220 -320 230 -320 {lab=ins}
N 230 -320 250 -320 {lab=ins}
N 250 -320 250 -160 {lab=ins}
N 220 -160 250 -160 {lab=ins}
N 250 -240 270 -240 {lab=ins}
N 190 -200 190 -160 {lab=vss}
N 190 -200 290 -200 {lab=vss}
N 290 -200 290 -100 {lab=vss}
N 190 -320 190 -280 {lab=vdd}
N 190 -280 290 -280 {lab=vdd}
N 290 -380 290 -280 {lab=vdd}
C {symbols/pfet_03v3.sym} 190 -340 1 0 {name=M1
L=0.5u
W=3.0u
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
C {symbols/nfet_03v3.sym} 190 -140 3 0 {name=M2
L=0.5u
W=1.0u
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
C {devices/iopin.sym} 110 -240 0 1 {name=p1 lab=ind}
C {devices/iopin.sym} 270 -240 0 0 {name=p2 lab=ins}
C {devices/iopin.sym} 190 -100 3 1 {name=p3 lab=clkn}
C {devices/iopin.sym} 190 -380 1 1 {name=p4 lab=clkp}
C {devices/iopin.sym} 290 -380 1 1 {name=p5 lab=vdd}
C {devices/iopin.sym} 290 -100 3 1 {name=p6 lab=vss}
