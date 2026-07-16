v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 -400 530 -400 {lab=#net1}
N 720 -400 910 -400 {lab=#net2}
N 370 -340 390 -340 {lab=VBN}
N 760 -340 780 -340 {lab=VBN}
N 850 -430 870 -430 {lab=UP}
N 660 -430 680 -430 {lab=UP_B}
N 280 -430 300 -430 {lab=DN}
N 470 -430 490 -430 {lab=DN_B}
N 430 -400 430 -370 {lab=#net1}
N 820 -400 820 -370 {lab=#net2}
N 460 -570 460 -500 {lab=#net3}
N 460 -500 530 -500 {lab=#net3}
N 600 -570 600 -500 {lab=#net3}
N 530 -500 600 -500 {lab=#net3}
N 650 -570 650 -500 {lab=#net4}
N 650 -500 720 -500 {lab=#net4}
N 790 -570 790 -500 {lab=#net4}
N 720 -500 790 -500 {lab=#net4}
N 340 -510 340 -460 {lab=#net5}
N 530 -510 530 -460 {lab=#net3}
N 720 -510 720 -460 {lab=#net4}
N 270 -480 340 -480 {lab=#net5}
N 340 -480 410 -480 {lab=#net5}
N 270 -570 270 -480 {lab=#net5}
N 410 -570 410 -480 {lab=#net5}
N 410 -480 840 -480 {lab=#net5}
N 840 -570 840 -480 {lab=#net5}
N 910 -510 910 -460 {lab=IP}
N 270 -660 910 -660 {lab=VDD}
N 910 -660 910 -630 {lab=VDD}
N 870 -660 870 -630 {lab=VDD}
N 720 -660 720 -630 {lab=VDD}
N 680 -660 680 -630 {lab=VDD}
N 530 -660 530 -630 {lab=VDD}
N 490 -660 490 -630 {lab=VDD}
N 340 -660 340 -630 {lab=VDD}
N 300 -660 300 -630 {lab=VDD}
N 280 -220 820 -220 {lab=VSS}
N 820 -310 820 -280 {lab=#net6}
N 430 -310 430 -280 {lab=#net7}
N 340 -430 360 -430 {lab=VSS}
N 530 -430 550 -430 {lab=VSS}
N 720 -430 740 -430 {lab=VSS}
N 910 -430 930 -430 {lab=VSS}
N 430 -340 450 -340 {lab=VSS}
N 820 -340 840 -340 {lab=VSS}
N 980 -470 1020 -470 {lab=IP}
N 910 -470 980 -470 {lab=IP}
N 840 -480 980 -480 {lab=#net5}
N 980 -570 980 -480 {lab=#net5}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {lab_pin.sym} 370 -340 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 760 -340 0 0 {name=p2 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 850 -430 0 0 {name=p3 sig_type=std_logic lab=UP}
C {lab_pin.sym} 660 -430 0 0 {name=p4 sig_type=std_logic lab=UP_B}
C {lab_pin.sym} 280 -430 0 0 {name=p5 sig_type=std_logic lab=DN}
C {lab_pin.sym} 470 -430 0 0 {name=p6 sig_type=std_logic lab=DN_B}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 340 -570 0 0 {name=x1}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 530 -570 0 0 {name=x2}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 720 -570 0 0 {name=x3}
C {libs/core_analog/cp_sym_load/cp_sym_load.sym} 910 -570 0 0 {name=x4}
C {lab_pin.sym} 270 -660 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -430 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -430 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -430 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -430 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -340 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -340 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {iopin.sym} 110 -660 0 0 {name=p15 lab=VDD}
C {iopin.sym} 110 -640 0 0 {name=p16 lab=VSS
}
C {ipin.sym} 110 -610 0 0 {name=p17 lab=UP}
C {ipin.sym} 110 -590 0 0 {name=p18 lab=UP_B}
C {ipin.sym} 110 -570 0 0 {name=p19 lab=DN}
C {ipin.sym} 110 -550 0 0 {name=p20 lab=DN_B}
C {ipin.sym} 110 -530 0 0 {name=p21 lab=VBN}
C {lab_pin.sym} 1020 -470 0 1 {name=p22 sig_type=std_logic lab=IP}
C {iopin.sym} 110 -500 0 0 {name=p23 lab=IP
}
C {ammeter.sym} 430 -250 0 0 {name=Vtail savecurrent=true spice_ignore=0}
C {ammeter.sym} 820 -250 0 0 {name=Vtail2 savecurrent=true spice_ignore=0}
C {symbols/nfet_03v3.sym} 320 -430 0 0 {name=M3
L=0.8u
W=2.6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 510 -430 0 0 {name=M4
L=0.8u
W=2.6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 700 -430 0 0 {name=M5
L=0.8u
W=2.6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 890 -430 0 0 {name=M6
L=0.8u
W=2.6u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 410 -340 0 0 {name=M1
L=1u
W=37.7u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 800 -340 0 0 {name=M2
L=1u
W=37.7u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
