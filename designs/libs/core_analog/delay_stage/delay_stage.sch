v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 630 -500 630 -360 950 -360 950 -500 630 -500 {}
P 4 5 260 -500 260 -360 580 -360 580 -500 260 -500 {}
T {PMOS Symmetric load} 260 -520 0 0 0.3 0.3 {}
T {PMOS Symmetric load} 630 -520 0 0 0.3 0.3 {}
N 690 -390 690 -350 {lab=Vo+}
N 690 -350 900 -350 {lab=Vo+}
N 900 -390 900 -350 {lab=Vo+}
N 900 -340 900 -310 {lab=Vo+}
N 310 -350 520 -350 {lab=Vo-}
N 520 -390 520 -350 {lab=Vo-}
N 310 -340 310 -310 {lab=Vo-}
N 900 -250 900 -230 {lab=#net1}
N 310 -250 310 -230 {lab=#net1}
N 610 -140 620 -140 {lab=AVSS}
N 620 -140 620 -110 {lab=AVSS}
N 610 -110 620 -110 {lab=AVSS}
N 310 -280 380 -280 {lab=AVSS}
N 830 -280 900 -280 {lab=AVSS}
N 610 -110 610 -80 {lab=AVSS}
N 510 -140 570 -140 {lab=VBN}
N 310 -480 310 -450 {lab=AVDD}
N 310 -480 900 -480 {lab=AVDD}
N 900 -480 900 -450 {lab=AVDD}
N 690 -480 690 -450 {lab=AVDD}
N 520 -470 520 -450 {lab=AVDD}
N 520 -480 520 -470 {lab=AVDD}
N 270 -420 270 -350 {lab=Vo-}
N 270 -350 310 -350 {lab=Vo-}
N 560 -420 650 -420 {lab=VBP}
N 940 -420 940 -350 {lab=Vo+}
N 900 -350 940 -350 {lab=Vo+}
N 610 -410 610 -280 {lab=VBP}
N 900 -350 900 -340 {lab=Vo+}
N 610 -420 610 -410 {lab=VBP}
N 270 -480 310 -480 {lab=AVDD}
N 310 -420 520 -420 {lab=AVDD}
N 690 -420 900 -420 {lab=AVDD}
N 420 -480 420 -420 {lab=AVDD}
N 800 -480 800 -420 {lab=AVDD}
N 310 -390 310 -340 {lab=Vo-}
N 530 -230 680 -230 {lab=#net1}
N 740 -230 900 -230 {lab=#net1}
N 470 -230 530 -230 {lab=#net1}
N 310 -230 410 -230 {lab=#net1}
N 410 -230 470 -230 {lab=#net1}
N 680 -230 740 -230 {lab=#net1}
N 210 -480 270 -480 {lab=AVDD}
N 200 -330 310 -330 {lab=Vo-}
N 200 -480 210 -480 {lab=AVDD}
N 200 -280 270 -280 {lab=Vi+}
N 900 -330 1010 -330 {lab=Vo+}
N 940 -280 1010 -280 {lab=Vi-}
C {symbols/nfet_03v3.sym} 590 -140 0 0 {name=M7
L=0.5u
W=11.25u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 380 -280 2 0 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 830 -280 2 1 {name=p2 sig_type=std_logic lab=AVSS}
C {ipin.sym} 200 -280 0 0 {name=p11 lab=Vi+}
C {ipin.sym} 1010 -280 0 1 {name=p16 lab=Vi-}
C {opin.sym} 1010 -330 0 0 {name=p17 lab=Vo+}
C {opin.sym} 200 -330 0 1 {name=p18 lab=Vo-}
C {iopin.sym} 200 -480 0 1 {name=p19 lab=AVDD}
C {iopin.sym} 610 -80 0 1 {name=p20 lab=AVSS}
C {ipin.sym} 610 -280 0 0 {name=p21 lab=VBP}
C {ipin.sym} 510 -140 0 0 {name=p22 lab=VBN}
C {symbols/nfet_03v3.sym} 290 -280 0 0 {name=M5
L=0.5u
W=2.08u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 290 -420 0 0 {name=M2
L=1.5u
W=1.1u
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
C {symbols/nfet_03v3.sym} 920 -280 0 1 {name=M6
L=0.5u
W=2.08u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 540 -420 0 1 {name=M1
L=1.5u
W=1.1u
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
C {symbols/pfet_03v3.sym} 670 -420 0 0 {name=M3
L=1.5u
W=1.1u
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
C {symbols/pfet_03v3.sym} 920 -420 0 1 {name=M4
L=1.5u
W=1.1u
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
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Yohanes Stefanus"}
C {ammeter.sym} 610 -200 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
