v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -210 160 -210 {lab=AVDD}
N 160 -240 200 -240 {lab=VON}
N 200 -240 200 -180 {lab=VON}
N 160 -180 200 -180 {lab=VON}
N 390 -210 470 -210 {lab=AVDD}
N 470 -240 510 -240 {lab=VOP}
N 510 -240 510 -180 {lab=VOP}
N 470 -180 510 -180 {lab=VOP}
N 150 -110 240 -110 {lab=AVSS}
N 110 -140 150 -140 {lab=VON}
N 110 -140 110 -80 {lab=VON}
N 110 -80 150 -80 {lab=VON}
N 420 -110 510 -110 {lab=AVSS}
N 380 -140 420 -140 {lab=VOP}
N 380 -140 380 -80 {lab=VOP}
N 380 -80 420 -80 {lab=VOP}
N 1090 -150 1130 -150 {lab=VON}
N 1090 -150 1090 -90 {lab=VON}
N 1090 -90 1130 -90 {lab=VON}
N 1090 -70 1130 -70 {lab=VONB}
N 1090 -70 1090 -10 {lab=VONB}
N 1090 -10 1130 -10 {lab=VONB}
N 1090 -290 1130 -290 {lab=VON}
N 1090 -290 1090 -230 {lab=VON}
N 1090 -230 1130 -230 {lab=VON}
N 1090 -220 1130 -220 {lab=VONB}
N 1090 -220 1090 -160 {lab=VONB}
N 1090 -160 1130 -160 {lab=VONB}
N 720 -150 760 -150 {lab=VOP}
N 720 -150 720 -90 {lab=VOP}
N 720 -90 760 -90 {lab=VOP}
N 720 -70 760 -70 {lab=VOPB}
N 720 -70 720 -10 {lab=VOPB}
N 720 -10 760 -10 {lab=VOPB}
N 720 -290 760 -290 {lab=VOP}
N 720 -290 720 -230 {lab=VOP}
N 720 -230 760 -230 {lab=VOP}
N 720 -220 760 -220 {lab=VOPB}
N 720 -220 720 -160 {lab=VOPB}
N 720 -160 760 -160 {lab=VOPB}
N 2340 -400 2420 -400 {lab=AVDD}
N 2300 -370 2340 -370 {lab=VO}
N 2300 -430 2300 -370 {lab=VO}
N 2300 -430 2340 -430 {lab=VO}
N 2340 -500 2420 -500 {lab=AVDD}
N 2300 -470 2340 -470 {lab=VOB}
N 2300 -530 2300 -470 {lab=VOB}
N 2300 -530 2340 -530 {lab=VOB}
N 1690 -140 1730 -140 {lab=i2}
N 1690 -140 1690 -80 {lab=i2}
N 1690 -80 1730 -80 {lab=i2}
N 1360 -130 1400 -130 {lab=i1}
N 1360 -130 1360 -70 {lab=i1}
N 1360 -70 1400 -70 {lab=i1}
N 2300 -200 2340 -200 {lab=VO}
N 2300 -200 2300 -140 {lab=VO}
N 2300 -140 2340 -140 {lab=VO}
N 2300 -110 2340 -110 {lab=VOB}
N 2300 -110 2300 -50 {lab=VOB}
N 2300 -50 2340 -50 {lab=VOB}
C {symbols/pfet_03v3.sym} 180 -210 0 1 {name=M8
L=1.5u
W=1.1u
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
C {lab_pin.sym} 80 -210 2 1 {name=p3 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 200 -210 2 0 {name=p4 sig_type=std_logic lab=VON}
C {symbols/pfet_03v3.sym} 490 -210 0 1 {name=M9
L=1.5u
W=1.1u
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
C {lab_pin.sym} 390 -210 2 1 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 510 -210 2 0 {name=p6 sig_type=std_logic lab=VOP}
C {symbols/nfet_03v3.sym} 130 -110 0 0 {name=M10
L=0.5u
W=2.08u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 240 -110 2 0 {name=p7 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 110 -110 2 1 {name=p8 sig_type=std_logic lab=VON}
C {symbols/nfet_03v3.sym} 400 -110 0 0 {name=M11
L=0.5u
W=2.08u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 510 -110 2 0 {name=p9 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 380 -110 2 1 {name=p10 sig_type=std_logic lab=VOP}
C {symbols/nfet_03v3.sym} 1110 -120 0 0 {name=M19
L=0.3u
W=1.9u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1130 -120 0 1 {name=p43 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1130 -150 0 1 {name=p44 sig_type=std_logic lab=VON}
C {symbols/nfet_03v3.sym} 1110 -40 0 0 {name=M20
L=0.3u
W=1.9u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1130 -40 0 1 {name=p45 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1130 -70 0 1 {name=p46 sig_type=std_logic lab=VONB}
C {symbols/pfet_03v3.sym} 1110 -260 0 0 {name=M21
L=0.3u
W=1.4u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1130 -260 0 1 {name=p48 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1090 -290 0 0 {name=p49 sig_type=std_logic lab=VON}
C {symbols/pfet_03v3.sym} 1110 -190 0 0 {name=M22
L=0.3u
W=1.4u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1130 -190 0 1 {name=p50 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1090 -220 0 0 {name=p51 sig_type=std_logic lab=VONB}
C {symbols/nfet_03v3.sym} 740 -120 0 0 {name=M23
L=0.3u
W=1.9u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 760 -120 0 1 {name=p52 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 760 -150 0 1 {name=p53 sig_type=std_logic lab=VOP}
C {symbols/nfet_03v3.sym} 740 -40 0 0 {name=M24
L=0.3u
W=1.9u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 760 -40 0 1 {name=p54 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 760 -70 0 1 {name=p55 sig_type=std_logic lab=VOPB}
C {symbols/pfet_03v3.sym} 740 -260 0 0 {name=M25
L=0.3u
W=1.4u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 760 -260 0 1 {name=p56 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 720 -290 0 0 {name=p57 sig_type=std_logic lab=VOP}
C {symbols/pfet_03v3.sym} 740 -190 0 0 {name=M26
L=0.3u
W=1.4u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 760 -190 0 1 {name=p58 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 720 -220 0 0 {name=p59 sig_type=std_logic lab=VOPB}
C {symbols/pfet_03v3.sym} 2320 -400 0 0 {name=M15
L=0.3u
W=2u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 2420 -400 0 1 {name=p32 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2300 -370 0 0 {name=p33 sig_type=std_logic lab=VO}
C {symbols/pfet_03v3.sym} 2320 -500 0 0 {name=M16
L=0.3u
W=2u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 2420 -500 0 1 {name=p34 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2300 -470 0 0 {name=p35 sig_type=std_logic lab=VOB}
C {symbols/nfet_03v3.sym} 1710 -110 0 0 {name=M17
L=0.5u
W=2.82u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1730 -110 0 1 {name=p37 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1690 -140 0 0 {name=p40 sig_type=std_logic lab=i2}
C {symbols/nfet_03v3.sym} 1380 -100 0 0 {name=M18
L=0.5u
W=2.82u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1400 -100 0 1 {name=p41 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1360 -130 0 0 {name=p42 sig_type=std_logic lab=i1}
C {symbols/nfet_03v3.sym} 2320 -170 0 0 {name=M27
L=0.3u
W=1.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 2340 -170 0 1 {name=p61 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2340 -200 0 1 {name=p62 sig_type=std_logic lab=VO}
C {symbols/nfet_03v3.sym} 2320 -80 0 0 {name=M28
L=0.3u
W=1.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 2340 -80 0 1 {name=p63 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2340 -110 0 1 {name=p64 sig_type=std_logic lab=VOB}
