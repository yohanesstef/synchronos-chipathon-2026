v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1210 -190 1210 -160 {lab=VBN}
N 140 -150 1210 -150 {lab=VBN}
N 140 -190 140 -160 {lab=VBN}
N 490 -190 490 -160 {lab=VBN}
N 840 -190 840 -160 {lab=VBN}
N 170 -190 170 -170 {lab=AVSS}
N 170 -170 1240 -170 {lab=AVSS}
N 1240 -190 1240 -170 {lab=AVSS}
N 870 -190 870 -170 {lab=AVSS}
N 520 -190 520 -170 {lab=AVSS}
N 170 -310 1240 -310 {lab=AVDD}
N 150 -310 170 -310 {lab=AVDD}
N 100 -170 170 -170 {lab=AVSS}
N 140 -160 140 -150 {lab=VBN}
N 490 -160 490 -150 {lab=VBN}
N 840 -160 840 -150 {lab=VBN}
N 1210 -160 1210 -150 {lab=VBN}
N 100 -150 140 -150 {lab=VBN}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 170 -250 0 0 {name=x1}
C {lab_pin.sym} 60 -260 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 60 -280 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 60 -240 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 60 -220 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 410 -260 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 410 -280 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 410 -240 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 410 -220 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 280 -260 0 1 {name=p29 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 630 -260 0 1 {name=p30 sig_type=std_logic lab=CK90}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 520 -250 0 0 {name=x2}
C {lab_pin.sym} 760 -260 2 1 {name=p4 sig_type=std_logic lab=VOP2}
C {lab_pin.sym} 760 -280 2 1 {name=p5 sig_type=std_logic lab=VON2}
C {lab_pin.sym} 760 -240 2 1 {name=p6 sig_type=std_logic lab=VOP2}
C {lab_pin.sym} 760 -220 2 1 {name=p7 sig_type=std_logic lab=VON2}
C {lab_pin.sym} 1130 -260 2 1 {name=p8 sig_type=std_logic lab=VOP4}
C {lab_pin.sym} 1130 -280 2 1 {name=p9 sig_type=std_logic lab=VON4}
C {lab_pin.sym} 1130 -240 2 1 {name=p10 sig_type=std_logic lab=VOP4}
C {lab_pin.sym} 1130 -220 2 1 {name=p11 sig_type=std_logic lab=VON4}
C {lab_pin.sym} 980 -260 0 1 {name=p12 sig_type=std_logic lab=DUMMY1}
C {lab_pin.sym} 1350 -260 0 1 {name=p13 sig_type=std_logic lab=DUMMY2}
C {lab_pin.sym} 980 -240 0 1 {name=p14 sig_type=std_logic lab=DUMMY3}
C {lab_pin.sym} 1350 -240 0 1 {name=p17 sig_type=std_logic lab=DUMMY4}
C {ipin.sym} 90 -550 0 0 {name=p18 lab=VOP[1..4]}
C {ipin.sym} 90 -530 0 0 {name=p19 lab=VON[1..4]}
C {ipin.sym} 100 -150 0 0 {name=p33 lab=VBN}
C {opin.sym} 70 -490 0 0 {name=p34 lab=DUMMY[1..4]}
C {opin.sym} 70 -470 0 0 {name=p35 lab=CK0}
C {opin.sym} 70 -450 0 0 {name=p36 lab=CK90}
C {opin.sym} 70 -430 0 0 {name=p37 lab=CK180}
C {opin.sym} 70 -410 0 0 {name=p38 lab=CK270}
C {iopin.sym} 150 -310 2 0 {name=p39 lab=AVDD}
C {iopin.sym} 100 -170 2 0 {name=p40 lab=AVSS}
C {lab_pin.sym} 280 -240 0 1 {name=p42 sig_type=std_logic lab=CK180}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 870 -250 0 0 {name=x3}
C {lab_pin.sym} 630 -240 0 1 {name=p43 sig_type=std_logic lab=CK270}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 1240 -250 0 0 {name=x4}
