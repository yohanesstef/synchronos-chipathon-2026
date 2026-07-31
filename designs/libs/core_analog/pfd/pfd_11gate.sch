v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {11-Gate Symmetric NAND Phase-Frequency Detector (PFD)} 80 -1050 0 0 0.4 0.4 {}
T {Equal short-duration output pulses for in-phase inputs | No external delay chain required} 80 -1010 0 0 0.25 0.25 {}
N 130 -830 160 -830 {lab=#net1}
N 130 -950 130 -830 {lab=#net1}
N 880 -820 920 -820 {lab=#net1}
N 920 -970 920 -820 {lab=#net1}
N 130 -970 920 -970 {lab=#net1}
N 130 -970 130 -950 {lab=#net1}
N 330 -570 450 -570 {lab=out_u7}
N 330 -570 330 -400 {lab=out_u7}
N 330 -400 330 -390 {lab=out_u7}
N 330 -390 450 -390 {lab=out_u7}
C {ipin.sym} 160 -810 0 0 {name=p1 lab=R_bar}
C {ipin.sym} 150 -140 0 0 {name=p2 lab=V_bar}
C {opin.sym} 1190 -760 0 0 {name=p3 lab=UP_bar}
C {opin.sym} 1210 -480 0 0 {name=p4 lab=DN_bar}
C {iopin.sym} 100 -600 0 0 {name=p5 lab=VDD}
C {iopin.sym} 100 -550 0 1 {name=p6 lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 300 -800 0 0 {name=XU1}
C {lab_pin.sym} 220 -860 0 0 {name=p_u1_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -760 0 1 {name=p_u1_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 590 -700 0 0 {name=XU2}
C {lab_wire.sym} 450 -730 0 0 {name=l_u2_a sig_type=std_logic lab=out_u1}
C {lab_wire.sym} 450 -710 0 0 {name=l_u2_b sig_type=std_logic lab=out_u3}
C {lab_wire.sym} 580 -710 0 1 {name=l_u2_z sig_type=std_logic lab=out_u2}
C {lab_pin.sym} 510 -760 0 0 {name=p_u2_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -660 0 1 {name=p_u2_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 590 -560 0 0 {name=XU3}
C {lab_wire.sym} 450 -590 0 0 {name=l_u3_a sig_type=std_logic lab=out_u2}
C {lab_wire.sym} 580 -570 0 1 {name=l_u3_z sig_type=std_logic lab=out_u3}
C {lab_pin.sym} 510 -620 0 0 {name=p_u3_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -520 0 1 {name=p_u3_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 590 -360 0 0 {name=XU4}
C {lab_wire.sym} 450 -370 0 0 {name=l_u4_b sig_type=std_logic lab=out_u5}
C {lab_wire.sym} 580 -370 0 1 {name=l_u4_z sig_type=std_logic lab=out_u4}
C {lab_pin.sym} 510 -420 0 0 {name=p_u4_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -320 0 1 {name=p_u4_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 590 -210 0 0 {name=XU5}
C {lab_wire.sym} 450 -240 0 0 {name=l_u5_a sig_type=std_logic lab=out_u4}
C {lab_wire.sym} 450 -220 0 0 {name=l_u5_b sig_type=std_logic lab=out_u6}
C {lab_wire.sym} 580 -220 0 1 {name=l_u5_z sig_type=std_logic lab=out_u5}
C {lab_pin.sym} 510 -270 0 0 {name=p_u5_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -170 0 1 {name=p_u5_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 290 -110 0 0 {name=XU6}
C {lab_wire.sym} 280 -120 0 1 {name=l_u6_z sig_type=std_logic lab=out_u6}
C {lab_pin.sym} 210 -170 0 0 {name=p_u6_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -70 0 1 {name=p_u6_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand4_pf.sym} 900 -600 0 0 {name=XU7}
C {lab_wire.sym} 760 -650 0 0 {name=l_u7_a sig_type=std_logic lab=out_u1}
C {lab_wire.sym} 760 -630 0 0 {name=l_u7_b sig_type=std_logic lab=out_u2}
C {lab_wire.sym} 760 -610 0 0 {name=l_u7_c sig_type=std_logic lab=out_u6}
C {lab_wire.sym} 760 -590 0 0 {name=l_u7_d sig_type=std_logic lab=out_u5}
C {lab_wire.sym} 890 -620 0 1 {name=l_u7_z sig_type=std_logic lab=out_u7}
C {lab_pin.sym} 820 -680 0 0 {name=p_u7_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 -560 0 1 {name=p_u7_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand3_pf.sym} 900 -800 0 0 {name=XU8}
C {lab_wire.sym} 760 -840 0 0 {name=l_u8_a sig_type=std_logic lab=out_u1}
C {lab_wire.sym} 760 -820 0 0 {name=l_u8_b sig_type=std_logic lab=out_u7}
C {lab_wire.sym} 760 -800 0 0 {name=l_u8_c sig_type=std_logic lab=out_u2}
C {lab_pin.sym} 820 -860 0 0 {name=p_u8_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 -760 0 1 {name=p_u8_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 1200 -750 0 0 {name=XU9}
C {lab_wire.sym} 1060 -780 0 0 {name=l_u9_a sig_type=std_logic lab=out_u1}
C {lab_wire.sym} 1060 -760 0 0 {name=l_u9_b sig_type=std_logic lab=out_u2}
C {lab_pin.sym} 1120 -810 0 0 {name=p_u9_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1120 -710 0 1 {name=p_u9_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand_pf.sym} 1220 -470 0 0 {name=XU10}
C {lab_wire.sym} 1080 -500 0 0 {name=l_u10_b sig_type=std_logic lab=out_u5}
C {lab_wire.sym} 1080 -480 0 0 {name=l_u10_c sig_type=std_logic lab=out_u6}
C {lab_pin.sym} 1140 -530 0 0 {name=p_u10_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -430 0 1 {name=p_u10_vss sig_type=std_logic lab=VSS}
C {libs/core_analog/pfd/nand3_pf.sym} 930 -280 0 0 {name=XU11}
C {lab_wire.sym} 790 -320 0 0 {name=l_u11_a sig_type=std_logic lab=out_u5}
C {lab_wire.sym} 790 -300 0 0 {name=l_u11_b sig_type=std_logic lab=out_u7}
C {lab_wire.sym} 790 -280 0 0 {name=l_u11_c sig_type=std_logic lab=out_u6}
C {lab_wire.sym} 920 -300 0 1 {name=l_u11_z sig_type=std_logic lab=out_u11}
C {lab_pin.sym} 850 -340 0 0 {name=p_u11_vdd sig_type=std_logic lab=VDD}
C {lab_pin.sym} 850 -240 0 1 {name=p_u11_vss sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -810 0 1 {name=l_u1 sig_type=std_logic lab=out_u1}
C {lab_pin.sym} 100 -600 0 0 {name=p_u1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -550 0 1 {name=p_u2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -120 0 0 {name=l_u2 sig_type=std_logic lab=out_u11}
C {lab_wire.sym} 330 -460 0 1 {name=l_u3 sig_type=std_logic lab=out_u7}
