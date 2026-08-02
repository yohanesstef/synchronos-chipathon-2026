v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {Maneatis Fig.14 PFD with Complementary Outputs} 100 -1050 0 0 0.5 0.5 {}
T {Uses dff_comp for matched Q/Q_bar timing} 100 -1010 0 0 0.3 0.3 {}
T {UP/UP_B and DN/DN_B from same SR latch cross-couple} 100 -980 0 0 0.25 0.25 {layer=5}
T {DFF1: REF path} 330 -830 0 0 0.3 0.3 {layer=8}
T {DFF2: FB path} 330 -560 0 0 0.3 0.3 {layer=8}
T {Reset: NAND + delay chain} 660 -830 0 0 0.25 0.25 {layer=8}
N 500 -510 1020 -510 {lab=DN}
N 500 -470 1020 -470 {lab=DN_B}
N 1020 -770 1060 -770 {lab=UP}
N 1020 -730 1060 -730 {lab=UP_B}
N 1020 -510 1060 -510 {lab=DN}
N 1020 -470 1060 -470 {lab=DN_B}
N 550 -770 550 -690 {lab=UP}
N 550 -690 590 -690 {lab=UP}
N 550 -670 550 -510 {lab=DN}
N 550 -670 590 -670 {lab=DN}
N 1030 -680 1070 -680 {lab=RN}
N 1070 -750 1070 -680 {lab=RN}
N 260 -750 1070 -750 {lab=RN}
N 1070 -680 1070 -460 {lab=RN}
N 260 -460 1070 -460 {lab=RN}
N 160 -790 260 -790 {lab=REF}
N 160 -760 260 -760 {lab=VDD}
N 160 -760 160 -500 {lab=VDD}
N 370 -850 370 -830 {lab=VDD}
N 370 -690 370 -670 {lab=VSS}
N 360 -590 360 -570 {lab=VDD}
N 360 -430 360 -410 {lab=VSS}
N 220 -460 260 -460 {lab=RN}
N 220 -470 220 -460 {lab=RN}
N 220 -470 250 -470 {lab=RN}
N 220 -750 260 -750 {lab=RN}
N 220 -750 220 -730 {lab=RN}
N 220 -730 260 -730 {lab=RN}
N 920 -720 920 -700 {lab=VDD}
N 1030 -680 1030 -660 {lab=RN}
N 1000 -660 1030 -660 {lab=RN}
N 920 -620 920 -600 {lab=VSS}
N 470 -520 500 -520 {lab=DN}
N 500 -520 500 -510 {lab=DN}
N 470 -480 500 -480 {lab=DN_B}
N 500 -480 500 -470 {lab=DN_B}
N 130 -530 250 -530 {lab=FB}
N 640 -720 650 -720 {lab=VDD}
N 650 -620 680 -620 {lab=VSS}
N 160 -500 250 -500 {lab=VDD}
N 760 -660 840 -660 {lab=RST_B}
N 760 -670 760 -660 {lab=RST_B}
N 720 -670 760 -670 {lab=RST_B}
N 480 -740 950 -740 {lab=UP_B}
N 950 -740 1020 -740 {lab=UP_B}
N 1020 -740 1020 -730 {lab=UP_B}
N 480 -780 550 -780 {lab=UP}
N 550 -780 550 -770 {lab=UP}
N 550 -770 1020 -770 {lab=UP}
C {ipin.sym} 160 -790 0 0 {name=p1 lab=REF}
C {ipin.sym} 130 -530 0 0 {name=p2 lab=FB}
C {opin.sym} 1060 -770 0 0 {name=p3 lab=UP}
C {opin.sym} 1060 -730 0 0 {name=p4 lab=UP_B}
C {opin.sym} 1060 -510 0 0 {name=p5 lab=DN}
C {opin.sym} 1060 -470 0 0 {name=p6 lab=DN_B}
C {iopin.sym} 130 -900 0 0 {name=p7 lab=VDD}
C {iopin.sym} 130 -880 0 1 {name=p8 lab=VSS}
C {lab_pin.sym} 130 -900 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 130 -880 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 790 -660 0 0 {name=l1 sig_type=std_logic lab=RST_B}
C {lab_wire.sym} 1050 -680 0 0 {name=l2 sig_type=std_logic lab=RN}
C {lab_wire.sym} 550 -720 0 0 {name=l3 sig_type=std_logic lab=UP}
C {lab_wire.sym} 550 -590 0 0 {name=l4 sig_type=std_logic lab=DN}
C {lab_pin.sym} 370 -850 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -670 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -590 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -410 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 640 -720 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 680 -620 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 920 -720 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 920 -600 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {title.sym} 160 -100 0 0 {name=l5 author="PFD Comp - Maneatis Fig.14"}
C {libs/core_analog/pfd/dff_comp.sym} 370 -760 0 0 {name=x1}
C {libs/core_analog/pfd/delay_chain.sym} 920 -660 0 0 {name=x2}
C {libs/core_analog/pfd/nand_pf.sym} 730 -660 0 0 {name=x3}
C {libs/core_analog/pfd/dff_comp.sym} 360 -500 0 0 {name=x4}
C {lab_pin.sym} 160 -670 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -850 0 0 {name=p20 sig_type=std_logic lab=VDD}
