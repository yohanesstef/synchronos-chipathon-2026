v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -410 580 -370 {lab=Vo-}
N 580 -370 790 -370 {lab=Vo-}
N 790 -410 790 -370 {lab=Vo-}
N 790 -360 790 -330 {lab=Vo-}
N 200 -370 410 -370 {lab=Vo-}
N 410 -410 410 -370 {lab=Vo-}
N 200 -360 200 -330 {lab=Vo-}
N 790 -270 790 -250 {lab=#net1}
N 410 -250 790 -250 {lab=#net1}
N 200 -270 200 -250 {lab=#net1}
N 500 -250 500 -210 {lab=#net1}
N 500 -180 510 -180 {lab=AVSS}
N 510 -180 510 -150 {lab=AVSS}
N 500 -150 510 -150 {lab=AVSS}
N 200 -300 270 -300 {lab=AVSS}
N 720 -300 790 -300 {lab=AVSS}
N 500 -150 500 -120 {lab=AVSS}
N 400 -180 460 -180 {lab=VBN}
N 200 -500 200 -470 {lab=AVDD}
N 200 -500 790 -500 {lab=AVDD}
N 790 -500 790 -470 {lab=AVDD}
N 580 -500 580 -470 {lab=AVDD}
N 410 -490 410 -470 {lab=AVDD}
N 410 -500 410 -490 {lab=AVDD}
N 160 -440 160 -370 {lab=Vo-}
N 160 -370 200 -370 {lab=Vo-}
N 450 -440 540 -440 {lab=VBP}
N 830 -440 830 -370 {lab=Vo-}
N 790 -370 830 -370 {lab=Vo-}
N 50 -300 160 -300 {lab=Vi+}
N 500 -430 500 -300 {lab=VBP}
N 790 -370 790 -360 {lab=Vo-}
N 500 -440 500 -430 {lab=VBP}
N 50 -350 200 -350 {lab=Vo-}
N 790 -350 940 -350 {lab=Vo-}
N 830 -300 930 -300 {lab=Vi-}
N 930 -300 940 -300 {lab=Vi-}
N 160 -500 200 -500 {lab=AVDD}
N 200 -440 410 -440 {lab=AVDD}
N 580 -440 790 -440 {lab=AVDD}
N 310 -500 310 -440 {lab=AVDD}
N 690 -500 690 -440 {lab=AVDD}
N 200 -410 200 -360 {lab=Vo-}
N 200 -250 410 -250 {lab=#net1}
C {symbols/pfet_03v3.sym} 180 -440 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 430 -440 0 1 {name=M2
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
C {symbols/pfet_03v3.sym} 560 -440 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 810 -440 0 1 {name=M4
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
C {symbols/nfet_03v3.sym} 180 -300 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 810 -300 0 1 {name=M6
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
C {symbols/nfet_03v3.sym} 480 -180 0 0 {name=M7
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
C {lab_pin.sym} 270 -300 2 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 720 -300 2 1 {name=p2 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 500 -120 2 1 {name=p3 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 50 -300 0 0 {name=p4 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 940 -300 2 0 {name=p5 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 400 -180 0 0 {name=p6 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 400 -180 0 0 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 400 -180 0 0 {name=p8 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 500 -300 0 0 {name=p9 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 50 -300 0 0 {name=p10 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 940 -350 0 1 {name=p13 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 940 -350 0 1 {name=p14 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 50 -350 0 0 {name=p15 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 160 -500 0 0 {name=p12 sig_type=std_logic lab=AVDD}
