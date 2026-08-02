v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 390 -250 580 -250 {lab=#net1}
N 770 -250 960 -250 {lab=#net2}
N 420 -190 440 -190 {lab=VBN}
N 900 -280 920 -280 {lab=UP}
N 710 -280 730 -280 {lab=UP_B}
N 330 -280 350 -280 {lab=DN}
N 520 -280 540 -280 {lab=DN_B}
N 480 -250 480 -220 {lab=#net1}
N 870 -250 870 -220 {lab=#net2}
N 510 -420 510 -350 {lab=#net3}
N 510 -350 580 -350 {lab=#net3}
N 650 -420 650 -350 {lab=#net3}
N 580 -350 650 -350 {lab=#net3}
N 700 -420 700 -350 {lab=#net4}
N 700 -350 770 -350 {lab=#net4}
N 840 -420 840 -350 {lab=#net4}
N 770 -350 840 -350 {lab=#net4}
N 390 -360 390 -310 {lab=#net5}
N 580 -360 580 -310 {lab=#net3}
N 770 -360 770 -310 {lab=#net4}
N 320 -330 390 -330 {lab=#net5}
N 390 -330 460 -330 {lab=#net5}
N 320 -420 320 -330 {lab=#net5}
N 460 -420 460 -330 {lab=#net5}
N 460 -330 890 -330 {lab=#net5}
N 890 -420 890 -330 {lab=#net5}
N 960 -360 960 -310 {lab=IP}
N 320 -510 960 -510 {lab=VDD}
N 960 -510 960 -480 {lab=VDD}
N 920 -510 920 -480 {lab=VDD}
N 770 -510 770 -480 {lab=VDD}
N 730 -510 730 -480 {lab=VDD}
N 580 -510 580 -480 {lab=VDD}
N 540 -510 540 -480 {lab=VDD}
N 390 -510 390 -480 {lab=VDD}
N 350 -510 350 -480 {lab=VDD}
N 330 -80 870 -80 {lab=VSS}
N 870 -110 870 -80 {lab=VSS}
N 480 -110 480 -80 {lab=VSS}
N 390 -280 410 -280 {lab=VSS}
N 580 -280 600 -280 {lab=VSS}
N 770 -280 790 -280 {lab=VSS}
N 960 -280 980 -280 {lab=VSS}
N 480 -190 500 -190 {lab=VSS}
N 870 -190 890 -190 {lab=VSS}
N 1030 -320 1070 -320 {lab=IP}
N 960 -320 1030 -320 {lab=IP}
N 890 -330 1030 -330 {lab=#net5}
N 1030 -420 1030 -330 {lab=#net5}
N 480 -160 480 -110 {lab=VSS}
N 870 -160 870 -110 {lab=VSS}
N 360 -100 360 -80 {lab=VSS}
N 360 -190 360 -160 {lab=VBN}
N 360 -190 420 -190 {lab=VBN}
N 360 -130 370 -130 {lab=VSS}
N 370 -130 370 -80 {lab=VSS}
N 810 -190 830 -190 {lab=VBN}
N 750 -100 750 -80 {lab=VSS}
N 750 -190 750 -160 {lab=VBN}
N 750 -190 810 -190 {lab=VBN}
N 750 -130 760 -130 {lab=VSS}
N 760 -130 760 -80 {lab=VSS}
N 300 -130 320 -130 {lab=S}
N 690 -130 710 -130 {lab=S}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {lab_pin.sym} 360 -190 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 900 -280 0 0 {name=p3 sig_type=std_logic lab=UP}
C {lab_pin.sym} 710 -280 0 0 {name=p4 sig_type=std_logic lab=UP_B}
C {lab_pin.sym} 330 -280 0 0 {name=p5 sig_type=std_logic lab=DN}
C {lab_pin.sym} 520 -280 0 0 {name=p6 sig_type=std_logic lab=DN_B}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 390 -420 0 0 {name=x1}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 580 -420 0 0 {name=x2}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 770 -420 0 0 {name=x3}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 960 -420 0 0 {name=x4}
C {lab_pin.sym} 320 -510 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -80 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 410 -280 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -280 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -280 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 980 -280 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 -190 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 890 -190 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {iopin.sym} 170 -400 0 0 {name=p15 lab=VDD}
C {iopin.sym} 170 -380 0 0 {name=p16 lab=VSS
}
C {ipin.sym} 170 -350 0 0 {name=p17 lab=UP}
C {ipin.sym} 170 -330 0 0 {name=p18 lab=UP_B}
C {ipin.sym} 170 -310 0 0 {name=p19 lab=DN}
C {ipin.sym} 170 -290 0 0 {name=p20 lab=DN_B}
C {ipin.sym} 170 -270 0 0 {name=p21 lab=VBN}
C {lab_pin.sym} 1070 -320 0 1 {name=p22 sig_type=std_logic lab=IP}
C {iopin.sym} 170 -210 0 0 {name=p23 lab=IP
}
C {symbols/nfet_03v3.sym} 460 -190 0 0 {name=M1
L=0.5u
W=11.25u
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
C {symbols/nfet_03v3.sym} 370 -280 0 0 {name=M3
L=0.5u
W=2.08u
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
C {symbols/nfet_03v3.sym} 560 -280 0 0 {name=M4
L=0.5u
W=2.08u
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
C {symbols/nfet_03v3.sym} 750 -280 0 0 {name=M5
L=0.5u
W=2.08u
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
C {symbols/nfet_03v3.sym} 940 -280 0 0 {name=M6
L=0.5u
W=2.08u
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
C {symbols/nfet_03v3.sym} 850 -190 0 0 {name=M2
L=0.5u
W=11.25u
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
C {symbols/nfet_03v3.sym} 340 -130 0 0 {name=M7
L=0.5u
W=1u
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
C {lab_pin.sym} 750 -190 0 0 {name=p2 sig_type=std_logic lab=VBN}
C {symbols/nfet_03v3.sym} 730 -130 0 0 {name=M8
L=0.5u
W=1u
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
C {lab_pin.sym} 300 -130 0 0 {name=p24 sig_type=std_logic lab=S}
C {lab_pin.sym} 690 -130 0 0 {name=p25 sig_type=std_logic lab=S}
C {ipin.sym} 170 -250 0 0 {name=p26 lab=S}
