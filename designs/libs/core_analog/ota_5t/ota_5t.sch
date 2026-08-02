v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -120 460 -90 {lab=AVSS}
N 220 -90 460 -90 {lab=AVSS}
N 220 -120 220 -90 {lab=AVSS}
N 210 -150 220 -150 {lab=AVSS}
N 210 -150 210 -90 {lab=AVSS}
N 210 -90 220 -90 {lab=AVSS}
N 460 -150 470 -150 {lab=AVSS}
N 470 -150 470 -90 {lab=AVSS}
N 460 -90 470 -90 {lab=AVSS}
N 260 -150 420 -150 {lab=#net1}
N 460 -230 460 -180 {lab=#net1}
N 330 -200 330 -150 {lab=#net1}
N 330 -200 460 -200 {lab=#net1}
N 220 -230 220 -180 {lab=VO}
N 220 -260 460 -260 {lab=AVDD}
N 220 -310 220 -290 {lab=#net2}
N 220 -310 460 -310 {lab=#net2}
N 460 -310 460 -290 {lab=#net2}
N 340 -330 340 -310 {lab=#net2}
N 340 -360 350 -360 {lab=AVDD}
N 350 -430 350 -360 {lab=AVDD}
N 220 -360 300 -360 {lab=VB}
N 160 -260 180 -260 {lab=VI-}
N 500 -260 520 -260 {lab=VI+}
N 350 -450 350 -430 {lab=AVDD}
N 340 -450 350 -450 {lab=AVDD}
C {symbols/pfet_03v3.sym} 200 -260 0 0 {name=M1
L=0.5u
W=6.55u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 240 -150 0 1 {name=M4
L=0.5u
W=4.8u
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
C {lab_pin.sym} 220 -200 0 0 {name=p1 sig_type=std_logic lab=VO}
C {lab_pin.sym} 160 -260 0 0 {name=p2 sig_type=std_logic lab=VI-}
C {lab_pin.sym} 520 -260 0 1 {name=p3 sig_type=std_logic lab=VI+}
C {lab_pin.sym} 220 -360 0 0 {name=p4 sig_type=std_logic lab=VB}
C {lab_pin.sym} 340 -450 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 210 -90 0 0 {name=p6 sig_type=std_logic lab=AVSS}
C {ipin.sym} 80 -480 0 0 {name=p7 lab=VI+}
C {ipin.sym} 80 -460 0 0 {name=p8 lab=VI-}
C {ipin.sym} 80 -440 0 0 {name=p9 lab=VB}
C {iopin.sym} 100 -480 0 0 {name=p10 lab=AVDD}
C {iopin.sym} 100 -460 0 0 {name=p11 lab=AVSS}
C {opin.sym} 100 -440 0 0 {name=p12 lab=VO}
C {lab_pin.sym} 340 -260 2 0 {name=p14 sig_type=std_logic lab=AVDD}
C {symbols/pfet_03v3.sym} 320 -360 0 0 {name=M3
L=0.5u
W=16.8u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 480 -260 0 1 {name=M2
L=0.5u
W=6.55u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 440 -150 0 0 {name=M5
L=0.5u
W=4.8u
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
C {ammeter.sym} 340 -420 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
