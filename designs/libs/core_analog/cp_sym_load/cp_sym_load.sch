v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 510 -310 730 -310 {lab=S}
N 510 -250 730 -250 {lab=D}
N 620 -340 620 -310 {lab=S}
N 620 -250 620 -220 {lab=D}
N 450 -280 470 -280 {lab=G1}
N 770 -280 790 -280 {lab=G2}
N 510 -280 550 -280 {lab=VDD}
N 690 -280 730 -280 {lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {symbols/pfet_03v3.sym} 490 -280 0 0 {name=M1
L=0.3u
W=1.5u
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
C {symbols/pfet_03v3.sym} 750 -280 0 1 {name=M2
L=0.3u
W=1.5u
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
C {lab_pin.sym} 450 -280 0 0 {name=p1 sig_type=std_logic lab=G1}
C {lab_pin.sym} 790 -280 0 1 {name=p2 sig_type=std_logic lab=G2}
C {lab_pin.sym} 620 -340 0 0 {name=p3 sig_type=std_logic lab=S}
C {lab_pin.sym} 620 -220 0 0 {name=p4 sig_type=std_logic lab=D}
C {ipin.sym} 300 -320 0 0 {name=p5 lab=G1}
C {ipin.sym} 300 -300 0 0 {name=p6 lab=G2}
C {iopin.sym} 300 -280 0 0 {name=p7 lab=S}
C {iopin.sym} 300 -260 0 0 {name=p8 lab=D}
C {lab_pin.sym} 690 -280 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 550 -280 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {iopin.sym} 300 -240 0 0 {name=p11 lab=VDD}
