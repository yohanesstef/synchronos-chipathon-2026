v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -1090 610 -1090 {lab=AVDD}
N 600 -1070 620 -1070 {lab=AVSS}
N 610 -1090 730 -1090 {lab=AVDD}
N 620 -1070 680 -1070 {lab=AVSS}
N 680 -1070 680 -1010 {lab=AVSS}
N 680 -1010 730 -1010 {lab=AVSS}
N 600 -990 730 -990 {lab=AVDD}
N 600 -950 710 -950 {lab=#net1}
N 600 -970 620 -970 {lab=AVSS}
N 620 -970 680 -970 {lab=AVSS}
N 680 -970 680 -910 {lab=AVSS}
N 680 -910 730 -910 {lab=AVSS}
N 600 -890 730 -890 {lab=AVDD}
N 600 -850 710 -850 {lab=#net2}
N 600 -870 620 -870 {lab=AVSS}
N 620 -870 680 -870 {lab=AVSS}
N 680 -870 680 -810 {lab=AVSS}
N 680 -810 730 -810 {lab=AVSS}
N 600 -790 730 -790 {lab=AVDD}
N 600 -750 710 -750 {lab=#net3}
N 600 -770 620 -770 {lab=AVSS}
N 620 -770 680 -770 {lab=AVSS}
N 680 -770 680 -710 {lab=AVSS}
N 680 -710 730 -710 {lab=AVSS}
N 600 -690 610 -690 {lab=AVDD}
N 600 -670 620 -670 {lab=AVSS}
N 610 -690 730 -690 {lab=AVDD}
N 620 -670 680 -670 {lab=AVSS}
N 680 -670 680 -610 {lab=AVSS}
N 680 -610 730 -610 {lab=AVSS}
N 600 -590 730 -590 {lab=AVDD}
N 600 -550 710 -550 {lab=#net4}
N 600 -570 620 -570 {lab=AVSS}
N 620 -570 680 -570 {lab=AVSS}
N 680 -570 680 -510 {lab=AVSS}
N 680 -510 730 -510 {lab=AVSS}
N 600 -490 730 -490 {lab=AVDD}
N 600 -450 710 -450 {lab=#net5}
N 600 -470 620 -470 {lab=AVSS}
N 620 -470 680 -470 {lab=AVSS}
N 680 -470 680 -410 {lab=AVSS}
N 680 -410 730 -410 {lab=AVSS}
N 600 -390 730 -390 {lab=AVDD}
N 600 -350 710 -350 {lab=#net6}
N 600 -370 620 -370 {lab=AVSS}
N 620 -370 680 -370 {lab=AVSS}
N 680 -370 680 -310 {lab=AVSS}
N 680 -310 730 -310 {lab=AVSS}
N 230 -350 300 -350 {lab=VBN}
N 230 -1050 230 -350 {lab=VBN}
N 230 -1050 300 -1050 {lab=VBN}
N 230 -950 300 -950 {lab=VBN}
N 230 -850 300 -850 {lab=VBN}
N 230 -750 300 -750 {lab=VBN}
N 230 -650 300 -650 {lab=VBN}
N 230 -550 300 -550 {lab=VBN}
N 230 -450 300 -450 {lab=VBN}
N 90 -510 230 -510 {lab=VBN}
N 630 -1120 630 -1090 {lab=AVDD}
N 630 -1090 630 -990 {lab=AVDD}
N 630 -990 630 -890 {lab=AVDD}
N 630 -890 630 -790 {lab=AVDD}
N 630 -790 630 -690 {lab=AVDD}
N 630 -690 630 -590 {lab=AVDD}
N 630 -590 630 -490 {lab=AVDD}
N 630 -490 630 -390 {lab=AVDD}
N 650 -370 650 -330 {lab=AVSS}
N 650 -470 650 -370 {lab=AVSS}
N 650 -570 650 -470 {lab=AVSS}
N 650 -670 650 -570 {lab=AVSS}
N 600 -650 710 -650 {lab=#net7}
N 650 -770 650 -670 {lab=AVSS}
N 650 -870 650 -770 {lab=AVSS}
N 650 -970 650 -870 {lab=AVSS}
N 650 -1070 650 -970 {lab=AVSS}
N 600 -1050 710 -1050 {lab=#net8}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -1070 0 0 {name=x1}
C {lab_pin.sym} 630 -1120 0 1 {name=p16 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 300 -1070 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 300 -1090 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 300 -890 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 300 -870 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 300 -970 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 300 -990 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 300 -790 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 300 -770 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 810 -1050 0 1 {name=p29 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 810 -950 0 1 {name=p30 sig_type=std_logic lab=CK90}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -970 0 0 {name=x2}
C {lab_pin.sym} 300 -670 2 1 {name=p4 sig_type=std_logic lab=VOP2}
C {lab_pin.sym} 300 -690 2 1 {name=p5 sig_type=std_logic lab=VON2}
C {lab_pin.sym} 300 -490 2 1 {name=p6 sig_type=std_logic lab=VOP2}
C {lab_pin.sym} 300 -470 2 1 {name=p7 sig_type=std_logic lab=VON2}
C {lab_pin.sym} 300 -570 2 1 {name=p8 sig_type=std_logic lab=VOP4}
C {lab_pin.sym} 300 -590 2 1 {name=p9 sig_type=std_logic lab=VON4}
C {lab_pin.sym} 300 -390 2 1 {name=p10 sig_type=std_logic lab=VOP4}
C {lab_pin.sym} 300 -370 2 1 {name=p11 sig_type=std_logic lab=VON4}
C {lab_pin.sym} 810 -650 0 1 {name=p12 sig_type=std_logic lab=DUMMY1}
C {lab_pin.sym} 810 -550 0 1 {name=p13 sig_type=std_logic lab=DUMMY2}
C {lab_pin.sym} 810 -450 0 1 {name=p14 sig_type=std_logic lab=DUMMY3}
C {lab_pin.sym} 810 -350 0 1 {name=p17 sig_type=std_logic lab=DUMMY4}
C {ipin.sym} 90 -550 0 0 {name=p18 lab=VOP[1..4]}
C {ipin.sym} 90 -530 0 0 {name=p19 lab=VON[1..4]}
C {ipin.sym} 90 -510 0 0 {name=p33 lab=VBN}
C {opin.sym} 70 -490 0 0 {name=p34 lab=DUMMY[1..4]}
C {opin.sym} 70 -470 0 0 {name=p35 lab=CK0}
C {opin.sym} 70 -450 0 0 {name=p36 lab=CK90}
C {opin.sym} 70 -430 0 0 {name=p37 lab=CK180}
C {opin.sym} 70 -410 0 0 {name=p38 lab=CK270}
C {iopin.sym} 70 -390 0 0 {name=p39 lab=AVDD}
C {iopin.sym} 70 -370 0 0 {name=p40 lab=AVSS}
C {libs/core_analog/inv/inv.sym} 750 -1050 0 0 {name=x9}
C {libs/core_analog/inv/inv.sym} 750 -950 0 0 {name=x10}
C {lab_pin.sym} 810 -850 0 1 {name=p42 sig_type=std_logic lab=CK180}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -870 0 0 {name=x3}
C {libs/core_analog/inv/inv.sym} 750 -850 0 0 {name=x4}
C {lab_pin.sym} 810 -750 0 1 {name=p43 sig_type=std_logic lab=CK270}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -770 0 0 {name=x5}
C {libs/core_analog/inv/inv.sym} 750 -750 0 0 {name=x6}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -670 0 0 {name=x7}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -570 0 0 {name=x8}
C {libs/core_analog/inv/inv.sym} 750 -650 0 0 {name=x11}
C {libs/core_analog/inv/inv.sym} 750 -550 0 0 {name=x12}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -470 0 0 {name=x13}
C {libs/core_analog/inv/inv.sym} 750 -450 0 0 {name=x14}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 450 -370 0 0 {name=x15}
C {libs/core_analog/inv/inv.sym} 750 -350 0 0 {name=x16}
C {lab_pin.sym} 650 -330 0 0 {name=p1 sig_type=std_logic lab=AVSS}
