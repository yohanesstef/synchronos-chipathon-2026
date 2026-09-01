v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -820 240 -100 {lab=VBN}
N 320 -590 320 -580 {lab=S2b}
N 160 -590 320 -590 {lab=S2b}
N 320 -620 320 -610 {lab=S1}
N 160 -610 320 -610 {lab=S1}
N 320 -790 320 -780 {lab=S1b}
N 160 -790 320 -790 {lab=S1b}
N 160 -190 320 -190 {lab=S4b}
N 160 -210 320 -210 {lab=S3}
N 160 -390 320 -390 {lab=S3b}
N 160 -410 320 -410 {lab=S2}
N 320 -420 320 -410 {lab=S2}
N 320 -390 320 -380 {lab=S3b}
N 320 -190 320 -180 {lab=S4b}
N 320 -220 320 -210 {lab=S3}
N 160 -10 320 -10 {lab=S4}
N 320 -20 320 -10 {lab=S4}
N 230 -180 280 -180 {lab=AVDD}
N 230 -780 230 -180 {lab=AVDD}
N 230 -780 280 -780 {lab=AVDD}
N 230 -580 280 -580 {lab=AVDD}
N 230 -380 280 -380 {lab=AVDD}
N 220 -20 280 -20 {lab=AVSS}
N 220 -620 220 -20 {lab=AVSS}
N 220 -620 280 -620 {lab=AVSS}
N 220 -420 280 -420 {lab=AVSS}
N 220 -220 280 -220 {lab=AVSS}
N 130 -860 240 -860 {lab=VBN}
N 130 -790 160 -790 {lab=S1b}
N 130 -610 160 -610 {lab=S1}
N 130 -590 160 -590 {lab=S2b}
N 130 -410 160 -410 {lab=S2}
N 130 -390 160 -390 {lab=S3b}
N 130 -210 160 -210 {lab=S3}
N 130 -190 160 -190 {lab=S4b}
N 130 -10 160 -10 {lab=S4}
N 230 -950 230 -780 {lab=AVDD}
N 220 -970 220 -620 {lab=AVSS}
N 130 -1010 220 -1010 {lab=AVSS}
N 130 -990 230 -990 {lab=AVDD}
N 240 -860 240 -820 {lab=VBN}
N 230 -990 230 -950 {lab=AVDD}
N 220 -1010 220 -970 {lab=AVSS}
N 400 -700 520 -700 {lab=VBN1}
N 400 -500 450 -500 {lab=VBN2}
N 450 -680 450 -500 {lab=VBN2}
N 450 -680 520 -680 {lab=VBN2}
N 470 -660 520 -660 {lab=VBN3}
N 470 -660 470 -300 {lab=VBN3}
N 400 -300 470 -300 {lab=VBN3}
N 400 -100 490 -100 {lab=VBN4}
N 490 -640 520 -640 {lab=VBN4}
N 490 -640 490 -100 {lab=VBN4}
N 450 -720 520 -720 {lab=VBN}
N 450 -860 450 -720 {lab=VBN}
N 240 -860 450 -860 {lab=VBN}
N 470 -760 520 -760 {lab=DN_B}
N 470 -880 470 -760 {lab=DN_B}
N 130 -880 470 -880 {lab=DN_B}
N 130 -900 490 -900 {lab=DN}
N 490 -900 490 -780 {lab=DN}
N 490 -780 520 -780 {lab=DN}
N 520 -780 530 -780 {lab=DN}
N 520 -760 530 -760 {lab=DN_B}
N 520 -640 530 -640 {lab=VBN4}
N 520 -660 530 -660 {lab=VBN3}
N 520 -680 530 -680 {lab=VBN2}
N 520 -700 530 -700 {lab=VBN1}
N 520 -720 530 -720 {lab=VBN}
N 510 -800 530 -800 {lab=UP_B}
N 510 -920 510 -800 {lab=UP_B}
N 130 -920 510 -920 {lab=UP_B}
N 130 -940 530 -940 {lab=UP}
N 530 -940 530 -820 {lab=UP}
N 230 -990 850 -990 {lab=AVDD}
N 850 -990 850 -780 {lab=AVDD}
N 830 -780 850 -780 {lab=AVDD}
N 830 -760 870 -760 {lab=AVSS}
N 870 -1010 870 -760 {lab=AVSS}
N 220 -1010 870 -1010 {lab=AVSS}
N 830 -740 870 -740 {lab=IP}
N 630 -610 630 -580 {lab=#net1}
N 600 -580 630 -580 {lab=#net1}
N 650 -610 650 -560 {lab=S1b}
N 600 -560 650 -560 {lab=S1b}
N 670 -610 670 -540 {lab=S2b}
N 600 -540 670 -540 {lab=S2b}
N 690 -610 690 -520 {lab=S3b}
N 600 -520 690 -520 {lab=S3b}
N 710 -610 710 -500 {lab=S4b}
N 600 -500 710 -500 {lab=S4b}
C {libs/core_analog/charge_pump/charge_pump_v2.sym} 680 -690 0 0 {name=x1}
C {libs/core_analog/transmission_gate/transmission_gate.sym} 320 -700 0 0 {name=x7}
C {libs/core_analog/transmission_gate/transmission_gate.sym} 320 -500 0 0 {name=x8}
C {libs/core_analog/transmission_gate/transmission_gate.sym} 320 -300 0 0 {name=x9}
C {libs/core_analog/transmission_gate/transmission_gate.sym} 320 -100 0 0 {name=x10}
C {ipin.sym} 130 -860 0 0 {name=p26 lab=VBN}
C {ipin.sym} 130 -790 0 0 {name=p27 lab=S1b}
C {ipin.sym} 130 -610 0 0 {name=p28 lab=S1}
C {ipin.sym} 130 -590 0 0 {name=p29 lab=S2b}
C {ipin.sym} 130 -410 0 0 {name=p30 lab=S2}
C {ipin.sym} 130 -390 0 0 {name=p31 lab=S3b}
C {ipin.sym} 130 -210 0 0 {name=p32 lab=S3}
C {ipin.sym} 130 -190 0 0 {name=p33 lab=S4b}
C {ipin.sym} 130 -10 0 0 {name=p34 lab=S4}
C {iopin.sym} 130 -1010 0 1 {name=p35 lab=AVSS}
C {iopin.sym} 130 -990 0 1 {name=p36 lab=AVDD}
C {ipin.sym} 130 -940 0 0 {name=p37 lab=UP}
C {ipin.sym} 130 -920 0 0 {name=p38 lab=UP_B}
C {ipin.sym} 130 -900 0 0 {name=p39 lab=DN}
C {ipin.sym} 130 -880 0 0 {name=p40 lab=DN_B}
C {lab_pin.sym} 430 -700 1 0 {name=p41 sig_type=std_logic lab=VBN1}
C {lab_pin.sym} 440 -500 1 0 {name=p42 sig_type=std_logic lab=VBN2}
C {lab_pin.sym} 440 -300 1 0 {name=p43 sig_type=std_logic lab=VBN3}
C {lab_pin.sym} 450 -100 1 0 {name=p44 sig_type=std_logic lab=VBN4}
C {opin.sym} 870 -740 0 0 {name=p45 lab=IP}
C {lab_pin.sym} 600 -500 0 0 {name=p46 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 600 -520 0 0 {name=p47 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 600 -540 0 0 {name=p48 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 600 -560 0 0 {name=p49 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 600 -580 0 0 {name=p50 sig_type=std_logic lab=AVSS}
