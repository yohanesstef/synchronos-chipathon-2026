v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 310 -320 310 -300 {lab=#net1}
N 310 -300 490 -300 {lab=#net1}
N 490 -320 490 -300 {lab=#net1}
N 400 -300 400 -280 {lab=#net1}
N 310 -450 310 -380 {lab=#net2}
N 490 -450 490 -380 {lab=VOP}
N 310 -440 360 -440 {lab=#net2}
N 350 -480 450 -480 {lab=#net2}
N 360 -480 360 -440 {lab=#net2}
N 310 -530 310 -510 {lab=VDD}
N 490 -530 490 -510 {lab=VDD}
N 400 -220 400 -200 {lab=VSS}
N 710 -320 710 -300 {lab=#net3}
N 710 -300 890 -300 {lab=#net3}
N 890 -320 890 -300 {lab=#net3}
N 800 -300 800 -280 {lab=#net3}
N 710 -450 710 -380 {lab=#net4}
N 890 -450 890 -380 {lab=VON}
N 710 -440 760 -440 {lab=#net4}
N 750 -480 850 -480 {lab=#net4}
N 760 -480 760 -440 {lab=#net4}
N 710 -530 710 -510 {lab=VDD}
N 890 -530 890 -510 {lab=VDD}
N 800 -220 800 -200 {lab=VSS}
N 1110 -450 1110 -280 {lab=#net5}
N 1290 -450 1290 -280 {lab=VO}
N 1150 -250 1250 -250 {lab=#net5}
N 1110 -290 1160 -290 {lab=#net5}
N 1160 -290 1160 -250 {lab=#net5}
N 1110 -530 1110 -510 {lab=VDD}
N 1290 -530 1290 -510 {lab=VDD}
N 1110 -220 1110 -200 {lab=VSS}
N 1290 -220 1290 -200 {lab=VSS}
N 1110 -250 1110 -220 {lab=VSS}
N 1290 -250 1290 -220 {lab=VSS}
N 800 -250 800 -220 {lab=VSS}
N 400 -250 400 -220 {lab=VSS}
N 310 -510 310 -480 {lab=VDD}
N 490 -510 490 -480 {lab=VDD}
N 710 -510 710 -480 {lab=VDD}
N 890 -510 890 -480 {lab=VDD}
N 1110 -510 1110 -480 {lab=VDD}
N 1290 -510 1290 -480 {lab=VDD}
N 1290 -360 1380 -360 {lab=VO}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {symbols/nfet_03v3.sym} 380 -250 0 0 {name=M1
L=0.6u
W=17u
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
C {symbols/nfet_03v3.sym} 290 -350 0 0 {name=M2
L=0.3u
W=15u
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
C {symbols/nfet_03v3.sym} 470 -350 0 0 {name=M3
L=0.3u
W=15u
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
C {symbols/pfet_03v3.sym} 330 -480 0 1 {name=M4
L=0.3u
W=11u
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
C {symbols/pfet_03v3.sym} 470 -480 0 0 {name=M5
L=0.3u
W=11u
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
C {lab_pin.sym} 360 -250 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 450 -350 0 0 {name=p2 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 270 -350 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 400 -200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -530 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 490 -530 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 780 -250 0 0 {name=M6
L=0.6u
W=17u
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
C {symbols/nfet_03v3.sym} 690 -350 0 0 {name=M7
L=0.3u
W=15u
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
C {symbols/nfet_03v3.sym} 870 -350 0 0 {name=M8
L=0.3u
W=15u
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
C {symbols/pfet_03v3.sym} 730 -480 0 1 {name=M9
L=0.3u
W=11u
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
C {symbols/pfet_03v3.sym} 870 -480 0 0 {name=M10
L=0.3u
W=11u
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
C {lab_pin.sym} 760 -250 0 0 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 850 -350 0 0 {name=p8 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 670 -350 0 0 {name=p9 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 800 -200 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -530 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 890 -530 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 1130 -250 0 1 {name=M11
L=0.3u
W=12u
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
C {symbols/nfet_03v3.sym} 1270 -250 0 0 {name=M12
L=0.3u
W=12u
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
C {symbols/pfet_03v3.sym} 1090 -480 0 0 {name=M13
L=0.3u
W=16u
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
C {symbols/pfet_03v3.sym} 1270 -480 0 0 {name=M14
L=0.3u
W=16u
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
C {lab_pin.sym} 1110 -530 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1290 -530 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1110 -200 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1290 -200 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -350 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 490 -350 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -350 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 890 -350 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 490 -430 0 1 {name=p21 sig_type=std_logic lab=VOP}
C {lab_pin.sym} 890 -430 0 1 {name=p22 sig_type=std_logic lab=VON}
C {lab_pin.sym} 1070 -480 0 0 {name=p23 sig_type=std_logic lab=VOP}
C {lab_pin.sym} 1250 -480 0 0 {name=p24 sig_type=std_logic lab=VON}
C {lab_pin.sym} 1380 -360 0 1 {name=p25 sig_type=std_logic lab=VO}
C {iopin.sym} 70 -480 0 0 {name=p26 lab=VDD}
C {iopin.sym} 70 -460 0 0 {name=p27 lab=VSS}
C {ipin.sym} 70 -430 0 0 {name=p28 lab=VIN}
C {ipin.sym} 70 -410 0 0 {name=p29 lab=VIP}
C {opin.sym} 70 -360 0 0 {name=p30 lab=VO}
C {ipin.sym} 70 -390 0 0 {name=p31 lab=VBN}
