v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {Maneatis-Style Phase Frequency Detector (PFD)} 100 -810 0 0 0.5 0.5 {}
T {Ref: Maneatis, IEEE JSSC Vol.31 No.11, Nov 1996} 100 -770 0 0 0.3 0.3 {}
T {GF180MCU 3.3V | 10MHz REF | gm/ID design flow} 100 -740 0 0 0.3 0.3 {}
T {DFF1: REF path} 340 -670 0 0 0.3 0.3 {layer=8}
T {DFF2: FB path} 140 -380 0 0 0.3 0.3 {layer=8}
T {Reset: NAND detects UP=DN=1, delay chain eliminates dead zone} 570 -680 0 0 0.25 0.25 {layer=8}
N 500 -510 1020 -510 {
lab=UP}
N 500 -290 1020 -290 {
lab=DN}
N 500 -390 500 -290 {
lab=DN}
N 950 -400 1000 -400 {
lab=RN}
N 1000 -400 1000 -270 {
lab=RN}
N 220 -220 990 -220 {
lab=RN}
N 1020 -510 1060 -510 {
lab=UP}
N 1020 -290 1060 -290 {
lab=DN}
N 1000 -450 1000 -400 {lab=RN}
N 1000 -270 1000 -220 {lab=RN}
N 990 -220 1000 -220 {lab=RN}
N 190 -270 250 -270 {lab=RN}
N 190 -270 190 -220 {lab=RN}
N 190 -220 220 -220 {lab=RN}
N 200 -490 250 -490 {lab=RN}
N 160 -530 250 -530 {lab=REF}
N 160 -310 250 -310 {lab=FB}
N 450 -290 500 -290 {lab=DN}
N 450 -510 500 -510 {lab=UP}
N 660 -400 760 -400 {lab=RST_B}
N 500 -420 540 -420 {lab=UP}
N 500 -510 500 -420 {lab=UP}
N 500 -400 540 -400 {lab=DN}
N 500 -400 500 -390 {lab=DN}
N 200 -490 200 -450 {lab=RN}
N 200 -450 200 -440 {lab=RN}
N 200 -440 670 -440 {lab=RN}
N 670 -440 710 -440 {lab=RN}
N 710 -470 710 -440 {lab=RN}
N 710 -470 1000 -470 {lab=RN}
N 1000 -470 1000 -450 {lab=RN}
N 600 -470 600 -450 {lab=VDD}
N 600 -350 600 -340 {lab=VSS}
N 310 -430 350 -430 {lab=VSS}
N 310 -630 350 -630 {lab=VDD}
N 310 -410 350 -410 {lab=VDD}
N 310 -210 350 -210 {lab=VSS}
N 410 -570 410 -510 {lab=UP}
N 410 -510 450 -510 {lab=UP}
N 410 -350 440 -350 {lab=DN}
N 440 -350 440 -290 {lab=DN}
N 440 -290 450 -290 {lab=DN}
N 940 -400 950 -400 {lab=RN}
N 850 -580 850 -445 {lab=VDD}
N 850 -355 850 -190 {lab=VSS}
C {ipin.sym} 160 -530 0 0 {name=p1 lab=REF}
C {ipin.sym} 160 -310 0 0 {name=p2 lab=FB}
C {opin.sym} 1060 -510 0 0 {name=p3 lab=UP}
C {opin.sym} 1060 -290 0 0 {name=p4 lab=DN}
C {lab_wire.sym} 720 -400 0 0 {name=p10 sig_type=std_logic lab=RST_B}
C {lab_wire.sym} 980 -400 0 0 {name=p7 sig_type=std_logic lab=RN}
C {lab_wire.sym} 500 -470 0 0 {name=p8 sig_type=std_logic lab=UP}
C {lab_wire.sym} 500 -340 0 0 {name=p9 sig_type=std_logic lab=DN}
C {title.sym} 160 -100 0 0 {name=l5 author="PFD - Maneatis Style"}
C {iopin.sym} 170 -660 0 0 {name=p12 lab=VDD}
C {iopin.sym} 180 -630 0 1 {name=p13 lab=VSS}
C {lab_pin.sym} 170 -660 0 0 {name=p17 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 180 -630 0 1 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 310 -630 0 0 {name=p19 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 850 -580 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 310 -410 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 600 -470 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 350 -430 0 1 {name=p14 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 350 -210 0 1 {name=p15 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 850 -190 0 1 {name=p20 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 600 -340 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 250 -350 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 250 -570 0 0 {name=p22 sig_type=std_logic lab=VDD
}
C {libs/core_analog/pfd/gf180mcu_fd_sc_mcu7t5v0__dffrnq_1.sym} 330 -530 0 0 {name=x2}
C {libs/core_analog/pfd/gf180mcu_fd_sc_mcu7t5v0__dffrnq_1.sym} 330 -310 0 0 {name=x3}
C {libs/core_analog/pfd/nand_pf.sym} 680 -390 0 0 {name=x1}
C {libs/core_analog/pfd/delay_chain.sym} 850 -400 0 0 {name=x4}
