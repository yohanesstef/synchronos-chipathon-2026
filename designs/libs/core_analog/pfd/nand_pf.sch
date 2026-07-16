v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {CMOS NAND2 Gate - GF180MCU 3.3V} 50 -740 0 0 0.4 0.4 {}
T {2x PFET parallel pull-up, 2x NFET series pull-down} 50 -710 0 0 0.3 0.3 {}
T {NMOS series: W=1u (2x inverter) for equal pull-down strength} 50 -680 0 0 0.3 0.3 {}
N 260 -320 350 -320 {lab=A}
N 260 -200 310 -200 {lab=B}
N 540 -390 600 -390 {lab=Z}
N 540 -510 540 -480 {lab=VDD}
N 390 -510 540 -510 {lab=VDD}
N 390 -510 390 -480 {lab=VDD}
N 390 -170 390 -140 {lab=VSS}
N 280 -120 390 -120 {lab=VSS}
N 390 -140 390 -120 {lab=VSS}
N 280 -510 390 -510 {lab=VDD}
N 390 -290 390 -230 {lab=#net1}
N 390 -420 390 -350 {lab=Z}
N 390 -390 540 -390 {lab=Z}
N 540 -420 540 -390 {lab=Z}
N 310 -200 350 -200 {lab=B}
N 500 -450 500 -410 {lab=A}
N 340 -410 500 -410 {lab=A}
N 340 -410 340 -320 {lab=A}
N 310 -450 310 -200 {lab=B}
N 310 -450 350 -450 {lab=B}
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
C {symbols/nfet_03v3.sym} 370 -320 0 0 {name=Mn1
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 370 -200 0 0 {name=Mn2
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
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 280 -510 3 0 {name=p4 lab=VDD}
C {ipin.sym} 260 -320 0 0 {name=p6 lab=A}
C {opin.sym} 600 -390 0 0 {name=p7 lab=Z}
C {ipin.sym} 260 -200 0 0 {name=p8 lab=B}
C {lab_pin.sym} 390 -320 0 1 {name=l3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -200 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -450 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -450 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {iopin.sym} 280 -120 1 1 {name=p1 lab=VSS
}
