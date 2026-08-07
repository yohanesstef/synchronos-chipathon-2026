v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -240 230 -190 {lab=OUT}
N 190 -270 190 -160 {lab=IN}
N 230 -160 240 -160 {lab=AVSS}
N 240 -160 240 -130 {lab=AVSS}
N 230 -130 240 -130 {lab=AVSS}
N 230 -270 240 -270 {lab=AVDD}
N 240 -300 240 -270 {lab=AVDD}
N 230 -300 240 -300 {lab=AVDD}
N 230 -330 230 -300 {lab=AVDD}
N 230 -130 230 -100 {lab=AVSS}
N 160 -220 190 -220 {lab=IN}
N 230 -220 250 -220 {lab=OUT}
C {symbols/pfet_03v3.sym} 210 -270 0 0 {name=M1
L=0.28u
W=0.9u
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
C {symbols/nfet_03v3.sym} 210 -160 0 0 {name=M2
L=0.28u
W=0.3u
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
C {ipin.sym} 160 -220 0 0 {name=p1 lab=IN}
C {iopin.sym} 230 -330 0 0 {name=p2 lab=AVDD}
C {iopin.sym} 230 -100 0 0 {name=p3 lab=AVSS}
C {opin.sym} 250 -220 0 0 {name=p4 lab=OUT}
