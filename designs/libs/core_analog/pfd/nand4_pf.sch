v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {CMOS NAND4 Gate - GF180MCU 3.3V} 50 -740 0 0 0.4 0.4 {}
T {4x PFET parallel pull-up, 4x NFET series pull-down} 50 -710 0 0 0.3 0.3 {}
T {NMOS series: W=2.0u (4x inverter) for equal pull-down strength} 50 -680 0 0 0.3 0.3 {}
N 280 -510 840 -510 {lab=VDD}
N 390 -510 390 -480 {lab=VDD}
N 540 -510 540 -480 {lab=VDD}
N 690 -510 690 -480 {lab=VDD}
N 840 -510 840 -480 {lab=VDD}
N 280 120 390 120 {lab=VSS}
N 390 70 390 120 {lab=VSS}
N 390 -420 390 -350 {lab=Z}
N 540 -420 540 -390 {lab=Z}
N 690 -420 690 -390 {lab=Z}
N 840 -420 840 -390 {lab=Z}
N 390 -390 900 -390 {lab=Z}
N 390 -290 390 -230 {lab=#net1}
N 390 -170 390 -110 {lab=#net2}
N 390 -50 390 10 {lab=#net3}
N 260 -320 350 -320 {lab=A}
N 350 -450 350 -320 {lab=A}
N 260 -200 350 -200 {lab=B}
N 320 -410 320 -200 {lab=B}
N 320 -410 500 -410 {lab=B}
N 500 -450 500 -410 {lab=B}
N 260 -80 350 -80 {lab=C}
N 290 -400 290 -80 {lab=C}
N 290 -400 650 -400 {lab=C}
N 650 -450 650 -400 {lab=C}
N 200 40 350 40 {lab=D}
N 230 -370 230 40 {lab=D}
N 230 -370 800 -370 {lab=D}
N 800 -450 800 -370 {lab=D}
C {symbols/pfet_03v3.sym} 370 -450 0 0 {name=Mp1
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 520 -450 0 0 {name=Mp2
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 670 -450 0 0 {name=Mp3
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 820 -450 0 0 {name=Mp4
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 370 -320 0 0 {name=Mn1
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 370 -200 0 0 {name=Mn2
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 370 -80 0 0 {name=Mn3
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 370 40 0 0 {name=Mn4
L=0.28u
W=2u
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
C {iopin.sym} 280 -510 3 0 {name=p4 lab=VDD}
C {iopin.sym} 280 120 1 1 {name=p1 lab=VSS}
C {ipin.sym} 260 -320 0 0 {name=p6 lab=A}
C {ipin.sym} 260 -200 0 0 {name=p8 lab=B}
C {ipin.sym} 260 -80 0 0 {name=p9 lab=C}
C {ipin.sym} 200 40 0 0 {name=p10 lab=D}
C {opin.sym} 900 -390 0 0 {name=p7 lab=Z}
C {lab_pin.sym} 390 -450 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -450 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 690 -450 0 1 {name=l7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 -450 0 1 {name=l10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -320 0 1 {name=l3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -200 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -80 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 40 0 1 {name=l9 sig_type=std_logic lab=VSS}