v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -320 580 -280 {lab=VBP}
N 580 -280 790 -280 {lab=VBP}
N 790 -320 790 -280 {lab=VBP}
N 690 -270 690 -240 {lab=VBP}
N 200 -320 200 -280 {lab=VBP}
N 200 -280 410 -280 {lab=VBP}
N 410 -320 410 -280 {lab=VBP}
N 310 -270 310 -240 {lab=VBP}
N 690 -180 690 -160 {lab=#net1}
N 310 -160 690 -160 {lab=#net1}
N 310 -180 310 -160 {lab=#net1}
N 500 -160 500 -120 {lab=#net1}
N 500 -90 510 -90 {lab=AVSS}
N 510 -90 510 -60 {lab=AVSS}
N 500 -60 510 -60 {lab=AVSS}
N 310 -210 380 -210 {lab=AVSS}
N 620 -210 690 -210 {lab=AVSS}
N 500 -60 500 -30 {lab=AVSS}
N 400 -90 460 -90 {lab=VBN}
N 200 -410 200 -380 {lab=AVDD}
N 200 -410 790 -410 {lab=AVDD}
N 790 -410 790 -380 {lab=AVDD}
N 580 -410 580 -380 {lab=AVDD}
N 410 -400 410 -380 {lab=AVDD}
N 410 -410 410 -400 {lab=AVDD}
N 160 -350 160 -280 {lab=VBP}
N 160 -280 200 -280 {lab=VBP}
N 450 -350 450 -280 {lab=VBP}
N 410 -280 450 -280 {lab=VBP}
N 450 -350 540 -350 {lab=VBP}
N 540 -350 540 -280 {lab=VBP}
N 540 -280 580 -280 {lab=VBP}
N 830 -350 830 -280 {lab=VBP}
N 790 -280 830 -280 {lab=VBP}
N 160 -210 270 -210 {lab=Vi+}
N 500 -340 500 -210 {lab=VBP}
N 310 -280 310 -270 {lab=VBP}
N 690 -280 690 -270 {lab=VBP}
N 500 -350 500 -340 {lab=VBP}
N 160 -260 310 -260 {lab=VBP}
N 690 -260 840 -260 {lab=VBP}
N 730 -210 830 -210 {lab=Vi-}
N 830 -210 840 -210 {lab=Vi-}
N 160 -410 200 -410 {lab=AVDD}
N 200 -350 410 -350 {lab=AVDD}
N 580 -350 790 -350 {lab=AVDD}
N 310 -410 310 -350 {lab=AVDD}
N 690 -410 690 -350 {lab=AVDD}
C {symbols/pfet_03v3.sym} 180 -350 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 430 -350 0 1 {name=M2
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
C {symbols/pfet_03v3.sym} 560 -350 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 810 -350 0 1 {name=M4
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
C {symbols/nfet_03v3.sym} 290 -210 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 710 -210 0 1 {name=M6
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
C {symbols/nfet_03v3.sym} 480 -90 0 0 {name=M7
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
C {lab_pin.sym} 380 -210 2 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 620 -210 2 1 {name=p2 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 500 -30 2 1 {name=p3 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 160 -210 0 0 {name=p4 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 840 -210 2 0 {name=p5 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 400 -90 0 0 {name=p6 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 400 -90 0 0 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 400 -90 0 0 {name=p8 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 500 -210 0 0 {name=p9 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 160 -210 0 0 {name=p10 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 840 -260 0 1 {name=p13 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 840 -260 0 1 {name=p14 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 160 -260 0 0 {name=p15 sig_type=std_logic lab=Vo-}
C {lab_pin.sym} 160 -410 0 0 {name=p12 sig_type=std_logic lab=AVDD}
