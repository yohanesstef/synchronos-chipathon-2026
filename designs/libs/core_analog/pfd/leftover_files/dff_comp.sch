v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {Master-Slave Edge-Triggered DFF with Q and Q_bar} 80 -950 0 0 0.4 0.4 {}
T {8x NAND2 + 1x INV | Standard Master-Slave DFF} 80 -920 0 0 0.3 0.3 {}
T {Q, Q_bar from slave SR cross-couple: matched timing} 80 -890 0 0 0.25 0.25 {layer=5}
T {--- Master (transparent CLK=0) ---} 400 -800 0 0 0.25 0.25 {layer=8}
T {--- Slave (transparent CLK=1) ---} 940 -800 0 0 0.25 0.25 {layer=8}
N 150 -710 150 -660 {lab=CLK}
N 150 -660 200 -660 {lab=CLK}
N 150 -660 150 -490 {lab=CLK}
N 150 -490 950 -490 {lab=CLK}
N 950 -570 950 -490 {lab=CLK}
N 950 -690 950 -570 {lab=CLK}
N 350 -660 380 -660 {lab=CLK_B}
N 380 -690 380 -660 {lab=CLK_B}
N 380 -660 380 -570 {lab=CLK_B}
N 160 -730 420 -730 {lab=D}
N 660 -700 680 -700 {lab=m_sb}
N 680 -700 680 -590 {lab=m_sb}
N 680 -700 700 -710 {lab=m_sb}
N 660 -580 680 -580 {lab=m_sb}
N 680 -590 680 -580 {lab=m_sb}
N 680 -590 700 -590 {lab=m_sb}
N 900 -700 920 -700 {lab=m_q}
N 920 -700 950 -710 {lab=m_q}
N 920 -700 920 -570 {lab=m_q}
N 700 -570 920 -570 {lab=m_q}
N 900 -580 910 -580 {lab=m_qb}
N 910 -690 910 -580 {lab=m_qb}
N 700 -690 910 -690 {lab=m_qb}
N 1150 -700 1180 -700 {lab=CLK}
N 1180 -700 1180 -590 {lab=CLK}
N 950 -590 1180 -590 {lab=CLK}
N 1180 -700 1200 -710 {lab=CLK}
N 1150 -580 1180 -580 {lab=CLK}
N 1180 -590 1180 -580 {lab=CLK}
N 1180 -590 1200 -590 {lab=CLK}
N 1400 -700 1420 -700 {lab=Q}
N 1420 -700 1480 -700 {lab=Q}
N 1420 -700 1420 -570 {lab=Q}
N 1200 -570 1420 -570 {lab=Q}
N 1400 -580 1410 -580 {lab=Q_bar}
N 1410 -580 1480 -580 {lab=Q_bar}
N 1410 -690 1410 -580 {lab=Q_bar}
N 1200 -690 1410 -690 {lab=Q_bar}
N 280 -610 290 -610 {lab=VDD}
C {libs/core_analog/pfd/inv.sym} 280 -660 0 0 {name=x_inv1}
C {libs/core_analog/pfd/nand_pf.sym} 560 -700 0 0 {name=x_G1}
C {libs/core_analog/pfd/nand_pf.sym} 560 -580 0 0 {name=x_G2}
C {libs/core_analog/pfd/nand_pf.sym} 800 -700 0 0 {name=x_G3}
C {libs/core_analog/pfd/nand_pf.sym} 800 -580 0 0 {name=x_G4}
C {libs/core_analog/pfd/nand_pf.sym} 1050 -700 0 0 {name=x_G5}
C {libs/core_analog/pfd/nand_pf.sym} 1050 -580 0 0 {name=x_G6}
C {libs/core_analog/pfd/nand_pf.sym} 1300 -700 0 0 {name=x_G7}
C {libs/core_analog/pfd/nand_pf.sym} 1300 -580 0 0 {name=x_G8}
C {ipin.sym} 150 -710 0 0 {name=p1 lab=CLK}
C {ipin.sym} 160 -730 0 0 {name=p2 lab=D}
C {opin.sym} 1480 -700 0 0 {name=p4 lab=Q}
C {opin.sym} 1480 -580 0 0 {name=p5 lab=Q_bar}
C {iopin.sym} 150 -850 0 0 {name=p6 lab=VDD}
C {iopin.sym} 150 -830 0 1 {name=p7 lab=VSS}
C {lab_pin.sym} 150 -850 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 150 -830 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 380 -640 0 0 {name=l1 sig_type=std_logic lab=CLK_B}
C {lab_wire.sym} 680 -650 0 0 {name=l2 sig_type=std_logic lab=m_sb}
C {lab_wire.sym} 680 -580 0 0 {name=l3 sig_type=std_logic lab=m_rb}
C {lab_wire.sym} 920 -650 0 0 {name=l4 sig_type=std_logic lab=m_q}
C {lab_wire.sym} 910 -630 0 0 {name=l5 sig_type=std_logic lab=m_qb}
C {lab_wire.sym} 1180 -650 0 0 {name=l6 sig_type=std_logic lab=s_sb}
C {lab_wire.sym} 1180 -580 0 0 {name=l7 sig_type=std_logic lab=s_rb}
C {lab_pin.sym} 280 -610 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -710 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -750 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -660 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -640 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -540 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -750 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -650 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -530 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -630 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -750 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1050 -650 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -530 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1050 -630 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -750 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 -650 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -530 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 -630 0 1 {name=p27 sig_type=std_logic lab=VSS}
