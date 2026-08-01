v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {Maneatis-Style Phase Frequency Detector (PFD)} 100 -950 0 0 0.5 0.5 {}
T {Ref: Maneatis, IEEE JSSC Vol.31 No.11, Nov 1996} 100 -910 0 0 0.3 0.3 {}
T {GF180MCU 3.3V | 10MHz REF | gm/ID design flow} 100 -880 0 0 0.3 0.3 {}
T {DFF1: REF path} 340 -810 0 0 0.3 0.3 {layer=8}
T {DFF2: FB path} 140 -520 0 0 0.3 0.3 {layer=8}
T {Reset: NAND detects UP=DN=1, delay chain eliminates dead zone} 570 -820 0 0 0.25 0.25 {layer=8}
N 500 -650 1020 -650 {
lab=UP}
N 500 -430 1020 -430 {
lab=DN}
N 500 -530 500 -430 {
lab=DN}
N 950 -540 1000 -540 {
lab=RN}
N 1000 -540 1000 -410 {
lab=RN}
N 220 -360 990 -360 {
lab=RN}
N 1020 -650 1060 -650 {
lab=UP}
N 1020 -430 1060 -430 {
lab=DN}
N 1000 -590 1000 -540 {lab=RN}
N 1000 -410 1000 -360 {lab=RN}
N 990 -360 1000 -360 {lab=RN}
N 190 -410 250 -410 {lab=RN}
N 190 -410 190 -360 {lab=RN}
N 190 -360 220 -360 {lab=RN}
N 850 -720 850 -590 {lab=VDD}
N 850 -490 850 -330 {lab=VSS}
N 200 -630 250 -630 {lab=RN}
N 160 -670 250 -670 {lab=REF}
N 160 -450 250 -450 {lab=FB}
N 450 -430 500 -430 {lab=DN}
N 450 -650 500 -650 {lab=UP}
N 930 -540 950 -540 {lab=RN}
N 670 -540 770 -540 {lab=RST_B}
N 500 -560 540 -560 {lab=UP}
N 500 -650 500 -560 {lab=UP}
N 500 -540 540 -540 {lab=DN}
N 500 -540 500 -530 {lab=DN}
N 200 -630 200 -590 {lab=RN}
N 200 -590 200 -580 {lab=RN}
N 200 -580 670 -580 {lab=RN}
N 670 -580 710 -580 {lab=RN}
N 710 -610 710 -580 {lab=RN}
N 710 -610 1000 -610 {lab=RN}
N 1000 -610 1000 -590 {lab=RN}
N 850 -590 850 -580 {lab=VDD}
N 850 -500 850 -490 {lab=VSS}
N 600 -610 600 -590 {lab=VDD}
N 600 -490 600 -480 {lab=VSS}
N 310 -570 350 -570 {lab=VSS}
N 310 -770 350 -770 {lab=VDD}
N 310 -550 350 -550 {lab=VDD}
N 310 -350 350 -350 {lab=VSS}
N 410 -710 410 -650 {lab=UP}
N 410 -650 450 -650 {lab=UP}
N 410 -490 440 -490 {lab=DN}
N 440 -490 440 -430 {lab=DN}
N 440 -430 450 -430 {lab=DN}
C {ipin.sym} 160 -670 0 0 {name=p1 lab=REF}
C {ipin.sym} 160 -450 0 0 {name=p2 lab=FB}
C {opin.sym} 1060 -650 0 0 {name=p3 lab=UP}
C {opin.sym} 1060 -430 0 0 {name=p4 lab=DN}
C {lab_wire.sym} 720 -540 0 0 {name=p10 sig_type=std_logic lab=RST_B}
C {lab_wire.sym} 980 -540 0 0 {name=p7 sig_type=std_logic lab=RN}
C {lab_wire.sym} 500 -610 0 0 {name=p8 sig_type=std_logic lab=UP}
C {lab_wire.sym} 500 -480 0 0 {name=p9 sig_type=std_logic lab=DN}
C {title.sym} 160 -100 0 0 {name=l5 author="PFD - Maneatis Style"}
C {iopin.sym} 170 -800 0 0 {name=p12 lab=VDD}
C {iopin.sym} 180 -770 0 1 {name=p13 lab=VSS}
C {lab_pin.sym} 170 -800 0 0 {name=p17 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 180 -770 0 1 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 310 -770 0 0 {name=p19 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 850 -720 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 310 -550 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 600 -610 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 350 -570 0 1 {name=p14 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 350 -350 0 1 {name=p15 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 850 -330 0 1 {name=p20 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 600 -480 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 250 -490 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 250 -710 0 0 {name=p22 sig_type=std_logic lab=VDD
}
C {libs/core_analog/pfd/gf180mcu_fd_sc_mcu7t5v0__dffrnq_1.sym} 330 -670 0 0 {name=x2}
C {libs/core_analog/pfd/gf180mcu_fd_sc_mcu7t5v0__dffrnq_1.sym} 330 -450 0 0 {name=x3}
C {libs/core_analog/pfd/nand_pf.sym} 680 -530 0 0 {name=x1}
C {libs/core_analog/pfd/delay_chain.sym} 850 -540 0 0 {name=x4}
