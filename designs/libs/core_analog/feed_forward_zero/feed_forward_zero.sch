v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 590 -550 590 -520 {lab=AVDD}
N 400 -550 400 -520 {lab=AVDD}
N 400 -490 520 -490 {lab=AVDD}
N 500 -550 500 -490 {lab=AVDD}
N 400 -440 400 -430 {lab=VBP}
N 400 -430 520 -430 {lab=VBP}
N 590 -460 590 -450 {lab=VBP}
N 590 -450 590 -400 {lab=VBP}
N 630 -490 630 -450 {lab=VBP}
N 590 -430 630 -430 {lab=VBP}
N 360 -490 360 -450 {lab=VBP}
N 360 -430 400 -430 {lab=VBP}
N 590 -180 600 -180 {lab=AVSS}
N 600 -180 600 -120 {lab=AVSS}
N 590 -370 600 -370 {lab=AVSS}
N 600 -370 600 -180 {lab=AVSS}
N 530 -180 550 -180 {lab=VBN}
N 360 -450 360 -430 {lab=VBP}
N 400 -460 400 -440 {lab=VBP}
N 630 -450 630 -430 {lab=VBP}
N 630 -430 650 -430 {lab=VBP}
N 650 -430 670 -430 {lab=VBP}
N 590 -280 590 -210 {lab=#net1}
N 530 -490 590 -490 {lab=AVDD}
N 520 -490 530 -490 {lab=AVDD}
N 450 -550 590 -550 {lab=AVDD}
N 520 -430 590 -430 {lab=VBP}
N 440 -550 450 -550 {lab=AVDD}
N 400 -550 440 -550 {lab=AVDD}
N 590 -340 590 -280 {lab=#net1}
N 500 -490 500 -370 {lab=AVDD}
N 500 -370 550 -370 {lab=AVDD}
N 340 -550 400 -550 {lab=AVDD}
N 420 -130 430 -130 {lab=AVSS}
N 360 -130 380 -130 {lab=S}
N 420 -180 420 -160 {lab=VBN}
N 420 -180 520 -180 {lab=VBN}
N 520 -180 530 -180 {lab=VBN}
N 420 -100 420 -80 {lab=AVSS}
N 420 -80 590 -80 {lab=AVSS}
N 590 -150 590 -80 {lab=AVSS}
N 600 -120 600 -80 {lab=AVSS}
N 590 -80 600 -80 {lab=AVSS}
N 360 -80 420 -80 {lab=AVSS}
N 430 -130 430 -80 {lab=AVSS}
N 320 -180 420 -180 {lab=VBN}
N 320 -130 360 -130 {lab=S}
C {opin.sym} 670 -430 0 0 {name=p13 lab=VBP}
C {iopin.sym} 340 -550 0 1 {name=p11 lab=AVDD}
C {iopin.sym} 360 -80 0 1 {name=p12 lab=AVSS}
C {ipin.sym} 320 -180 0 0 {name=p1 lab=VBN}
C {symbols/pfet_03v3.sym} 380 -490 0 0 {name=M1
L=1.5u
W=1.1u
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
C {symbols/nfet_03v3.sym} 570 -370 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 570 -180 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 400 -130 0 0 {name=M7
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
C {ipin.sym} 320 -130 0 0 {name=p2 lab=S}
C {symbols/pfet_03v3.sym} 610 -490 0 1 {name=M2
L=1.5u
W=1.1u
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
