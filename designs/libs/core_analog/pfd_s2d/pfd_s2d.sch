v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 320 -1010 320 -840 {lab=U_delay}
N 260 -1010 260 -840 {lab=U}
N 290 -850 290 -840 {lab=AVSS}
N 290 -850 340 -850 {lab=AVSS}
N 290 -1010 290 -1000 {lab=AVDD}
N 290 -1000 340 -1000 {lab=AVDD}
N 200 -790 220 -790 {lab=U}
N 220 -790 220 -730 {lab=U}
N 220 -730 260 -730 {lab=U}
N 220 -930 260 -930 {lab=U}
N 360 -730 440 -730 {lab=U_B}
N 280 -770 460 -770 {lab=AVDD}
N 280 -690 460 -690 {lab=AVSS}
N 320 -930 450 -930 {lab=U_delay}
N 470 -1000 470 -970 {lab=AVDD}
N 340 -1000 470 -1000 {lab=AVDD}
N 470 -890 470 -850 {lab=AVSS}
N 340 -850 470 -850 {lab=AVSS}
N 310 -600 310 -430 {lab=D_delay}
N 250 -600 250 -430 {lab=D}
N 280 -440 280 -430 {lab=AVSS}
N 280 -440 330 -440 {lab=AVSS}
N 280 -600 280 -590 {lab=AVDD}
N 280 -590 330 -590 {lab=AVDD}
N 190 -380 210 -380 {lab=D}
N 210 -380 210 -320 {lab=D}
N 210 -320 250 -320 {lab=D}
N 210 -520 250 -520 {lab=D}
N 350 -320 430 -320 {lab=D_B}
N 270 -360 450 -360 {lab=AVDD}
N 270 -280 450 -280 {lab=AVSS}
N 310 -520 440 -520 {lab=D_delay}
N 460 -590 460 -560 {lab=AVDD}
N 330 -590 460 -590 {lab=AVDD}
N 460 -480 460 -440 {lab=AVSS}
N 330 -440 460 -440 {lab=AVSS}
N 220 -930 220 -790 {lab=U}
N 210 -520 210 -380 {lab=D}
N 20 -790 100 -790 {lab=UB}
N 20 -380 100 -380 {lab=DB}
N 540 -730 590 -730 {lab=UP}
N 550 -930 590 -930 {lab=UPB}
N 530 -320 580 -320 {lab=DN}
N 540 -520 580 -520 {lab=DNB}
C {lab_wire.sym} 220 -830 0 1 {name=p118 sig_type=std_logic lab=U}
C {symbols/pfet_03v3.sym} 290 -1030 1 0 {name=M1
L=0.3u
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
C {symbols/nfet_03v3.sym} 290 -820 3 0 {name=M2
L=0.3u
W=0.5u
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
C {lab_wire.sym} 360 -930 0 1 {name=p121 sig_type=std_logic lab=U_delay}
C {lab_wire.sym} 380 -730 0 1 {name=p129 sig_type=std_logic lab=U_B}
C {lab_wire.sym} 210 -420 0 1 {name=p136 sig_type=std_logic lab=D}
C {lab_wire.sym} 350 -520 0 1 {name=p139 sig_type=std_logic lab=D_delay}
C {lab_wire.sym} 370 -320 0 1 {name=p147 sig_type=std_logic lab=D_B}
C {lab_pin.sym} 290 -800 0 1 {name=p80 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 340 -1000 0 1 {name=p81 sig_type=std_logic lab=AVDD}
C {libs/core_analog/inv/inv.sym} 140 -790 0 0 {name=x1[0..1]}
C {libs/core_analog/inv/inv.sym} 300 -730 0 0 {name=x2[0..1]}
C {libs/core_analog/inv/inv.sym} 490 -930 0 0 {name=x3[0..8]}
C {libs/core_analog/inv/inv.sym} 480 -730 0 0 {name=x4[0..8]}
C {lab_pin.sym} 120 -750 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 120 -830 0 0 {name=p6 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 280 -690 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 280 -770 0 0 {name=p9 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 340 -850 0 1 {name=p10 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 290 -1050 0 1 {name=p11 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 280 -390 0 1 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 330 -590 0 1 {name=p18 sig_type=std_logic lab=AVDD}
C {libs/core_analog/inv/inv.sym} 130 -380 0 0 {name=x5[0..1]}
C {libs/core_analog/inv/inv.sym} 290 -320 0 0 {name=x6[0..1]}
C {libs/core_analog/inv/inv.sym} 480 -520 0 0 {name=x7[0..8]}
C {libs/core_analog/inv/inv.sym} 470 -320 0 0 {name=x8[0..8]}
C {lab_pin.sym} 110 -340 0 0 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 110 -420 0 0 {name=p20 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 270 -280 0 0 {name=p22 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 270 -360 0 0 {name=p23 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 330 -440 0 1 {name=p24 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 280 -640 0 1 {name=p12 sig_type=std_logic lab=AVSS}
C {symbols/pfet_03v3.sym} 280 -620 1 0 {name=M3
L=0.3u
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
C {symbols/nfet_03v3.sym} 280 -410 3 0 {name=M4
L=0.3u
W=0.5u
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
C {ipin.sym} 20 -790 0 0 {name=p1 lab=UB}
C {ipin.sym} 20 -380 0 0 {name=p2 lab=DB}
C {iopin.sym} 10 -620 0 0 {name=p3 lab=AVDD}
C {iopin.sym} 10 -600 0 0 {name=p4 lab=AVSS}
C {opin.sym} 590 -730 0 0 {name=p7 lab=UP}
C {opin.sym} 590 -930 0 0 {name=p13 lab=UPB}
C {opin.sym} 580 -320 0 0 {name=p14 lab=DN}
C {opin.sym} 580 -520 0 0 {name=p15 lab=DNB}
