v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 270 -580 {}
P 4 5 270 -570 270 -80 490 -80 490 -570 270 -570 {}
P 4 5 500 -370 500 -190 700 -190 700 -370 500 -370 {}
P 4 9 610 -550 610 -390 760 -390 760 -80 970 -80 970 -390 930 -390 930 -550 610 -550 {}
T {Amplifier bias} 340 -590 0 0 0.3 0.3 {}
T {Diff. Amplifier} 500 -190 0 0 0.3 0.3 {}
T {Half-Buffer Replica} 610 -570 0 0 0.3 0.3 {}
N 390 -440 390 -310 {lab=#net1}
N 390 -530 390 -500 {lab=AVDD}
N 670 -530 670 -500 {lab=AVDD}
N 860 -530 860 -500 {lab=AVDD}
N 670 -470 790 -470 {lab=AVDD}
N 770 -530 770 -470 {lab=AVDD}
N 170 -130 170 -100 {lab=AVSS}
N 170 -100 200 -100 {lab=AVSS}
N 390 -530 420 -530 {lab=AVDD}
N 860 -130 860 -100 {lab=AVSS}
N 390 -130 390 -100 {lab=AVSS}
N 290 -280 350 -280 {lab=AVDD}
N 280 -530 280 -280 {lab=AVDD}
N 290 -530 390 -530 {lab=AVDD}
N 280 -280 290 -280 {lab=AVDD}
N 280 -530 290 -530 {lab=AVDD}
N 380 -470 390 -470 {lab=AVDD}
N 380 -530 380 -470 {lab=AVDD}
N 900 -350 920 -350 {lab=AVDD}
N 920 -530 920 -350 {lab=AVDD}
N 860 -440 860 -380 {lab=#net2}
N 900 -470 900 -430 {lab=#net2}
N 860 -410 900 -410 {lab=#net2}
N 670 -440 670 -430 {lab=#net2}
N 670 -410 790 -410 {lab=#net2}
N 860 -160 870 -160 {lab=AVSS}
N 870 -160 870 -100 {lab=AVSS}
N 850 -350 860 -350 {lab=AVSS}
N 170 -210 170 -190 {lab=#net3}
N 170 -210 390 -210 {lab=#net3}
N 170 -160 180 -160 {lab=AVSS}
N 180 -160 180 -100 {lab=AVSS}
N 430 -160 460 -160 {lab=VBN}
N 730 -160 750 -160 {lab=VBN}
N 730 -240 730 -160 {lab=VBN}
N 670 -430 670 -410 {lab=#net2}
N 900 -430 900 -410 {lab=#net2}
N 460 -470 460 -420 {lab=#net1}
N 460 -420 460 -410 {lab=#net1}
N 380 -160 390 -160 {lab=AVSS}
N 380 -160 380 -100 {lab=AVSS}
N 390 -280 400 -280 {lab=AVSS}
N 400 -280 430 -280 {lab=AVSS}
N 820 -350 850 -350 {lab=AVSS}
N 430 -560 470 -560 {lab=VCTRL}
N 730 -240 980 -240 {lab=VBN}
N 430 -470 460 -470 {lab=#net1}
N 510 -250 530 -250 {lab=VCTRL}
N 510 -560 510 -250 {lab=VCTRL}
N 510 -470 630 -470 {lab=VCTRL}
N 480 -560 510 -560 {lab=VCTRL}
N 530 -400 530 -310 {lab=#net2}
N 620 -530 620 -360 {lab=AVDD}
N 580 -380 580 -360 {lab=#net1}
N 390 -380 560 -380 {lab=#net1}
N 460 -410 460 -380 {lab=#net1}
N 530 -310 540 -310 {lab=#net2}
N 530 -250 540 -250 {lab=VCTRL}
N 530 -410 530 -400 {lab=#net2}
N 530 -410 670 -410 {lab=#net2}
N 570 -380 580 -380 {lab=#net1}
N 620 -200 620 -100 {lab=AVSS}
N 460 -160 720 -160 {lab=VBN}
N 660 -280 730 -280 {lab=VBN}
N 730 -280 730 -240 {lab=VBN}
N 390 -210 390 -190 {lab=#net3}
N 860 -260 860 -190 {lab=#net4}
N 790 -470 860 -470 {lab=AVDD}
N 790 -410 860 -410 {lab=#net2}
N 750 -160 820 -160 {lab=VBN}
N 190 -560 430 -560 {lab=VCTRL}
N 190 -530 280 -530 {lab=AVDD}
N 560 -380 570 -380 {lab=#net1}
N 720 -160 730 -160 {lab=VBN}
N 470 -560 480 -560 {lab=VCTRL}
N 150 -100 170 -100 {lab=AVSS}
N 110 -160 130 -160 {lab=STARTUP}
N 390 -250 390 -210 {lab=#net3}
N 860 -320 860 -260 {lab=#net4}
N 420 -530 920 -530 {lab=AVDD}
N 200 -100 870 -100 {lab=AVSS}
C {lab_pin.sym} 430 -280 0 1 {name=p1 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 820 -350 0 0 {name=p3 sig_type=std_logic lab=AVSS}
C {libs/core_analog/ota_5t/ota_5t.sym} 590 -280 0 0 {name=x1}
C {ipin.sym} 190 -560 0 0 {name=p9 lab=VCTRL}
C {ipin.sym} 110 -160 0 0 {name=p10 lab=STARTUP}
C {iopin.sym} 190 -530 0 1 {name=p11 lab=AVDD}
C {iopin.sym} 150 -100 0 1 {name=p12 lab=AVSS}
C {opin.sym} 980 -240 0 0 {name=p14 lab=VBN}
C {symbols/pfet_03v3.sym} 410 -470 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 880 -350 0 1 {name=M8
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
C {symbols/nfet_03v3.sym} 370 -280 0 0 {name=M11
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
C {symbols/nfet_03v3.sym} 840 -160 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 410 -160 0 1 {name=M4
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
C {symbols/nfet_03v3.sym} 150 -160 0 0 {name=M10
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
C {symbols/pfet_03v3.sym} 650 -470 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 880 -470 0 1 {name=M5
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
