v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -280 230 -260 {lab=i1}
N 230 -260 410 -260 {lab=i1}
N 410 -280 410 -260 {lab=i1}
N 320 -200 320 -180 {lab=i1}
N 230 -410 230 -340 {lab=VOPB}
N 410 -410 410 -340 {lab=VOP}
N 230 -400 280 -400 {lab=VOPB}
N 270 -440 370 -440 {lab=VOPB}
N 280 -440 280 -400 {lab=VOPB}
N 230 -490 230 -470 {lab=AVDD}
N 410 -490 410 -470 {lab=AVDD}
N 320 -120 320 -100 {lab=AVSS}
N 590 -280 590 -260 {lab=i2}
N 590 -260 770 -260 {lab=i2}
N 770 -280 770 -260 {lab=i2}
N 680 -200 680 -180 {lab=i2}
N 590 -410 590 -340 {lab=VONB}
N 770 -410 770 -340 {lab=VON}
N 590 -400 640 -400 {lab=VONB}
N 630 -440 730 -440 {lab=VONB}
N 640 -440 640 -400 {lab=VONB}
N 590 -490 590 -470 {lab=AVDD}
N 770 -490 770 -470 {lab=AVDD}
N 680 -120 680 -100 {lab=AVSS}
N 1110 -210 1210 -210 {lab=VOB}
N 1070 -250 1120 -250 {lab=VOB}
N 1120 -250 1120 -210 {lab=VOB}
N 1070 -490 1070 -470 {lab=AVDD}
N 1250 -490 1250 -470 {lab=AVDD}
N 1070 -180 1070 -160 {lab=AVSS}
N 1250 -180 1250 -160 {lab=AVSS}
N 1070 -210 1070 -180 {lab=AVSS}
N 1250 -210 1250 -180 {lab=AVSS}
N 680 -150 680 -120 {lab=AVSS}
N 230 -470 230 -440 {lab=AVDD}
N 410 -470 410 -440 {lab=AVDD}
N 590 -470 590 -440 {lab=AVDD}
N 770 -470 770 -440 {lab=AVDD}
N 1070 -470 1070 -440 {lab=AVDD}
N 1250 -470 1250 -440 {lab=AVDD}
N 1250 -320 1340 -320 {lab=VO}
N 320 -260 320 -200 {lab=i1}
N 680 -260 680 -200 {lab=i2}
N 1070 -350 1070 -240 {lab=VOB}
N 1250 -350 1250 -240 {lab=VO}
N 1070 -410 1070 -350 {lab=VOB}
N 1250 -410 1250 -350 {lab=VO}
N 320 -150 320 -120 {lab=AVSS}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {symbols/nfet_03v3.sym} 210 -310 0 0 {name=M2
L=0.3u
W=1.9u
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
C {symbols/pfet_03v3.sym} 250 -440 0 1 {name=M4
L=0.3u
W=1.4u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 280 -150 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 370 -310 0 0 {name=p2 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 190 -310 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 230 -490 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 640 -150 0 0 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 730 -310 0 0 {name=p8 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 550 -310 0 0 {name=p9 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 320 -100 0 1 {name=p10 sig_type=std_logic lab=AVSS}
C {symbols/nfet_03v3.sym} 1090 -210 0 1 {name=M11
L=0.3u
W=1.5u
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
C {symbols/pfet_03v3.sym} 1050 -440 0 0 {name=M13
L=0.3u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 410 -390 0 1 {name=p21 sig_type=std_logic lab=VOP}
C {lab_pin.sym} 770 -390 0 1 {name=p22 sig_type=std_logic lab=VON}
C {lab_pin.sym} 1030 -440 0 0 {name=p23 sig_type=std_logic lab=VOP}
C {lab_pin.sym} 1210 -440 0 0 {name=p24 sig_type=std_logic lab=VON}
C {lab_pin.sym} 1340 -320 0 1 {name=p25 sig_type=std_logic lab=VO}
C {iopin.sym} 70 -440 0 0 {name=p26 lab=AVDD}
C {iopin.sym} 70 -420 0 0 {name=p27 lab=AVSS}
C {ipin.sym} 70 -390 0 0 {name=p28 lab=VIN}
C {ipin.sym} 70 -370 0 0 {name=p29 lab=VIP}
C {opin.sym} 70 -320 0 0 {name=p30 lab=VO}
C {ipin.sym} 70 -350 0 0 {name=p31 lab=VBN}
C {symbols/nfet_03v3.sym} 390 -310 0 0 {name=M3
L=0.3u
W=1.9u
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
C {symbols/pfet_03v3.sym} 390 -440 0 0 {name=M5
L=0.3u
W=1.4u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 570 -310 0 0 {name=M7
L=0.3u
W=1.9u
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
C {symbols/pfet_03v3.sym} 610 -440 0 1 {name=M8
L=0.3u
W=1.4u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 750 -310 0 0 {name=M9
L=0.3u
W=1.9u
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
C {symbols/pfet_03v3.sym} 750 -440 0 0 {name=M10
L=0.3u
W=1.4u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1230 -440 0 0 {name=M14
L=0.3u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1230 -210 0 0 {name=M12
L=0.3u
W=1.5u
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
C {lab_pin.sym} 680 -100 0 0 {name=p4 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1070 -160 0 0 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1250 -160 0 0 {name=p16 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 230 -310 0 1 {name=p17 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 410 -310 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 590 -310 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 770 -310 0 1 {name=p20 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 410 -490 0 0 {name=p6 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 590 -490 0 0 {name=p11 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 770 -490 0 0 {name=p12 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1070 -490 0 0 {name=p13 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1250 -490 0 0 {name=p14 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1070 -330 0 1 {name=p36 sig_type=std_logic lab=VOB}
C {lab_pin.sym} 320 -230 0 1 {name=p38 sig_type=std_logic lab=i1}
C {lab_pin.sym} 680 -230 0 1 {name=p39 sig_type=std_logic lab=i2}
C {lab_pin.sym} 590 -370 0 1 {name=p47 sig_type=std_logic lab=VONB}
C {lab_pin.sym} 230 -390 0 0 {name=p60 sig_type=std_logic lab=VOPB}
C {symbols/nfet_03v3.sym} 300 -150 0 0 {name=M1
L=0.5u
W=11.25u
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
C {symbols/nfet_03v3.sym} 660 -150 0 0 {name=M6
L=0.5u
W=11.25u
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
