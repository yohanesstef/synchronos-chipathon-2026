v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 720 -160 720 -140 {lab=#net1}
N 310 -140 720 -140 {lab=#net1}
N 310 -160 310 -140 {lab=#net1}
N 560 -160 560 -140 {lab=#net1}
N 490 -140 490 -120 {lab=#net1}
N 560 -240 560 -220 {lab=Y}
N 560 -240 720 -240 {lab=Y}
N 720 -240 720 -220 {lab=Y}
N 350 -410 600 -410 {lab=Y}
N 310 -380 310 -320 {lab=Yb}
N 310 -460 310 -440 {lab=AVDD}
N 310 -460 640 -460 {lab=AVDD}
N 640 -460 640 -440 {lab=AVDD}
N 640 -410 650 -410 {lab=AVDD}
N 650 -440 650 -410 {lab=AVDD}
N 640 -440 650 -440 {lab=AVDD}
N 300 -410 310 -410 {lab=AVDD}
N 300 -440 300 -410 {lab=AVDD}
N 300 -440 310 -440 {lab=AVDD}
N 640 -380 640 -240 {lab=Y}
N 490 -90 500 -90 {lab=AVSS}
N 500 -90 500 -60 {lab=AVSS}
N 490 -60 500 -60 {lab=AVSS}
N 490 -60 490 -30 {lab=AVSS}
N 310 -260 310 -220 {lab=#net2}
N 310 -290 320 -290 {lab=AVSS}
N 320 -290 320 -190 {lab=AVSS}
N 310 -190 320 -190 {lab=AVSS}
N 550 -190 560 -190 {lab=AVSS}
N 710 -190 720 -190 {lab=AVSS}
N 430 -90 450 -90 {lab=Vb}
N 480 -410 480 -360 {lab=Y}
N 250 -290 270 -290 {lab=B}
N 250 -190 270 -190 {lab=A}
N 600 -190 620 -190 {lab=Ab}
N 760 -190 780 -190 {lab=Bb}
N 480 -360 640 -360 {lab=Y}
C {symbols/nfet_03v3.sym} 290 -190 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 290 -290 0 0 {name=M2
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 580 -190 0 1 {name=M3
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 740 -190 0 1 {name=M4
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 470 -90 0 0 {name=M5
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 330 -410 0 1 {name=M6
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 620 -410 0 0 {name=M7
L=0.28u
W=0.22u
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
C {lab_pin.sym} 490 -30 0 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 550 -190 0 0 {name=p2 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 710 -190 0 0 {name=p3 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 320 -240 0 1 {name=p4 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 310 -460 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 250 -190 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} 250 -290 0 0 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} 620 -190 0 1 {name=p8 sig_type=std_logic lab=Ab}
C {lab_pin.sym} 780 -190 0 1 {name=p9 sig_type=std_logic lab=Bb}
C {lab_pin.sym} 430 -90 0 0 {name=p10 sig_type=std_logic lab=Vb}
C {ipin.sym} 100 -340 0 0 {name=p11 lab=A}
C {ipin.sym} 100 -320 0 0 {name=p12 lab=B}
C {ipin.sym} 100 -300 0 0 {name=p13 lab=Ab}
C {ipin.sym} 100 -280 0 0 {name=p14 lab=Bb}
C {iopin.sym} 80 -400 0 0 {name=p15 lab=AVDD}
C {iopin.sym} 80 -380 0 0 {name=p16 lab=AVSS}
C {ipin.sym} 100 -250 0 0 {name=p17 lab=Vb}
C {opin.sym} 140 -340 0 0 {name=p18 lab=Y}
C {opin.sym} 140 -320 0 0 {name=p19 lab=Yb}
C {lab_pin.sym} 310 -340 0 1 {name=p20 sig_type=std_logic lab=Yb}
C {lab_pin.sym} 640 -340 0 0 {name=p21 sig_type=std_logic lab=Y}
