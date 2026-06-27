v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 160 -470 {}
N 580 -310 580 -270 {lab=Vo+}
N 580 -270 790 -270 {lab=Vo+}
N 790 -310 790 -270 {lab=Vo+}
N 790 -260 790 -230 {lab=Vo+}
N 200 -270 410 -270 {lab=Vo-}
N 410 -310 410 -270 {lab=Vo-}
N 200 -260 200 -230 {lab=Vo-}
N 790 -170 790 -150 {lab=#net1}
N 410 -150 790 -150 {lab=#net1}
N 200 -170 200 -150 {lab=#net1}
N 500 -150 500 -110 {lab=#net1}
N 500 -80 510 -80 {lab=AVSS}
N 510 -80 510 -50 {lab=AVSS}
N 500 -50 510 -50 {lab=AVSS}
N 200 -200 270 -200 {lab=AVSS}
N 720 -200 790 -200 {lab=AVSS}
N 500 -50 500 -20 {lab=AVSS}
N 400 -80 460 -80 {lab=VBN}
N 200 -400 200 -370 {lab=AVDD}
N 200 -400 790 -400 {lab=AVDD}
N 790 -400 790 -370 {lab=AVDD}
N 580 -400 580 -370 {lab=AVDD}
N 410 -390 410 -370 {lab=AVDD}
N 410 -400 410 -390 {lab=AVDD}
N 160 -340 160 -270 {lab=Vo-}
N 160 -270 200 -270 {lab=Vo-}
N 450 -340 540 -340 {lab=VBP}
N 830 -340 830 -270 {lab=Vo+}
N 790 -270 830 -270 {lab=Vo+}
N 50 -200 160 -200 {lab=Vi+}
N 500 -330 500 -200 {lab=VBP}
N 790 -270 790 -260 {lab=Vo+}
N 500 -340 500 -330 {lab=VBP}
N 50 -250 200 -250 {lab=Vo-}
N 790 -250 940 -250 {lab=Vo+}
N 830 -200 930 -200 {lab=Vi-}
N 930 -200 940 -200 {lab=Vi-}
N 160 -400 200 -400 {lab=AVDD}
N 200 -340 410 -340 {lab=AVDD}
N 580 -340 790 -340 {lab=AVDD}
N 310 -400 310 -340 {lab=AVDD}
N 690 -400 690 -340 {lab=AVDD}
N 200 -310 200 -260 {lab=Vo-}
N 200 -150 410 -150 {lab=#net1}
C {symbols/pfet_03v3.sym} 180 -340 0 0 {name=M1
L=0.28u
W=2.25u
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
C {symbols/nfet_03v3.sym} 180 -200 0 0 {name=M5
L=0.28u
W=11u
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
C {symbols/nfet_03v3.sym} 480 -80 0 0 {name=M7
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
C {lab_pin.sym} 270 -200 2 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 720 -200 2 1 {name=p2 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 500 -20 2 1 {name=p3 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 940 -200 2 0 {name=p5 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 400 -80 0 0 {name=p8 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 500 -200 0 0 {name=p9 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 50 -200 0 0 {name=p10 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 940 -250 0 1 {name=p13 sig_type=std_logic lab=Vo+}
C {lab_pin.sym} 50 -250 0 0 {name=p15 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 160 -400 0 0 {name=p12 sig_type=std_logic lab=AVDD}
C {ipin.sym} 510 -540 0 0 {name=p11 lab=Vi+}
C {ipin.sym} 510 -520 0 0 {name=p16 lab=Vi-}
C {opin.sym} 530 -540 0 0 {name=p17 lab=Vo+}
C {opin.sym} 530 -520 0 0 {name=p18 lab=Vo-}
C {iopin.sym} 600 -540 0 0 {name=p19 lab=AVDD}
C {iopin.sym} 600 -520 0 0 {name=p20 lab=AVSS}
C {ipin.sym} 510 -500 0 0 {name=p21 lab=VBP}
C {ipin.sym} 510 -480 0 0 {name=p22 lab=VBN}
C {symbols/pfet_03v3.sym} 430 -340 0 1 {name=M2
L=0.28u
W=2.25u
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
C {symbols/pfet_03v3.sym} 560 -340 0 0 {name=M3
L=0.28u
W=2.25u
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
C {symbols/pfet_03v3.sym} 810 -340 0 1 {name=M4
L=0.28u
W=2.25u
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
C {symbols/nfet_03v3.sym} 810 -200 0 1 {name=M6
L=0.28u
W=11u
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
