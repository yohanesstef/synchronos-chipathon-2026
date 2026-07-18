v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 320 -250 350 -250 {lab=VON1}
N 320 -190 350 -190 {lab=VOP1}
N 470 -250 500 -250 {lab=VON2}
N 470 -190 500 -190 {lab=VOP2}
N 630 -250 660 -250 {lab=VON3}
N 630 -190 660 -190 {lab=VOP3}
N 750 -340 750 -320 {lab=AVDD}
N 270 -340 720 -340 {lab=AVDD}
N 230 -320 680 -320 {lab=VBP}
N 270 -100 720 -100 {lab=AVSS}
N 710 -140 710 -130 {lab=VBN}
N 230 -140 230 -130 {lab=VBN}
N 390 -140 390 -130 {lab=VBN}
N 550 -140 550 -130 {lab=VBN}
N 790 -250 830 -250 {lab=VON4}
N 790 -190 830 -190 {lab=VOP4}
N 130 -190 190 -250 {lab=VOP4}
N 130 -250 190 -190 {lab=VON4}
N 130 -330 130 -250 {lab=VON4}
N 810 -190 810 -110 {lab=VOP4}
N 160 -80 780 -80 {lab=VOP4}
N 130 -80 160 -80 {lab=VOP4}
N 130 -190 130 -110 {lab=VOP4}
N 130 -350 130 -330 {lab=VON4}
N 310 -250 320 -250 {lab=VON1}
N 310 -190 320 -190 {lab=VOP1}
N 500 -190 510 -190 {lab=VOP2}
N 500 -250 510 -250 {lab=VON2}
N 660 -190 670 -190 {lab=VOP3}
N 660 -250 670 -250 {lab=VON3}
N 720 -340 750 -340 {lab=AVDD}
N 720 -100 750 -100 {lab=AVSS}
N 810 -110 810 -90 {lab=VOP4}
N 780 -80 810 -80 {lab=VOP4}
N 130 -110 130 -90 {lab=VOP4}
N 750 -140 750 -100 {lab=AVSS}
N 590 -140 590 -100 {lab=AVSS}
N 430 -140 430 -100 {lab=AVSS}
N 270 -140 270 -100 {lab=AVSS}
N 810 -90 810 -80 {lab=VOP4}
N 130 -90 130 -80 {lab=VOP4}
N 550 -130 550 -120 {lab=VBN}
N 230 -120 550 -120 {lab=VBN}
N 230 -130 230 -120 {lab=VBN}
N 390 -130 390 -120 {lab=VBN}
N 550 -120 710 -120 {lab=VBN}
N 710 -130 710 -120 {lab=VBN}
N 810 -330 810 -250 {lab=VON4}
N 160 -360 780 -360 {lab=VON4}
N 130 -360 160 -360 {lab=VON4}
N 810 -350 810 -330 {lab=VON4}
N 780 -360 810 -360 {lab=VON4}
N 810 -360 810 -350 {lab=VON4}
N 130 -360 130 -350 {lab=VON4}
N 590 -340 590 -300 {lab=AVDD}
N 750 -320 750 -300 {lab=AVDD}
N 680 -320 710 -320 {lab=VBP}
N 710 -320 710 -300 {lab=VBP}
N 550 -320 550 -300 {lab=VBP}
N 390 -320 390 -300 {lab=VBP}
N 230 -320 230 -300 {lab=VBP}
N 430 -340 430 -300 {lab=AVDD}
N 270 -340 270 -300 {lab=AVDD}
C {libs/core_analog/delay_stage/delay_stage.sym} 245 -220 0 0 {name=x1}
C {libs/core_analog/delay_stage/delay_stage.sym} 405 -220 0 0 {name=x2}
C {libs/core_analog/delay_stage/delay_stage.sym} 565 -220 0 0 {name=x3}
C {libs/core_analog/delay_stage/delay_stage.sym} 725 -220 0 0 {name=x4}
C {lab_pin.sym} 830 -250 0 1 {name=p1 sig_type=std_logic lab=VON4}
C {lab_pin.sym} 830 -190 0 1 {name=p2 sig_type=std_logic lab=VOP4}
C {lab_pin.sym} 650 -250 3 1 {name=p3 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 650 -190 1 1 {name=p4 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 490 -250 3 1 {name=p5 sig_type=std_logic lab=VON2}
C {lab_pin.sym} 490 -190 1 1 {name=p6 sig_type=std_logic lab=VOP2}
C {lab_pin.sym} 330 -250 3 1 {name=p7 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 330 -190 1 1 {name=p8 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 270 -100 2 1 {name=p9 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 230 -120 2 1 {name=p10 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 270 -340 2 1 {name=p11 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 230 -320 2 1 {name=p12 sig_type=std_logic lab=VBP}
C {opin.sym} 700 -420 0 0 {name=p13 lab=VOP[4..1]}
C {opin.sym} 700 -400 0 0 {name=p14 lab=VON[4..1]}
C {ipin.sym} 660 -420 0 0 {name=p15 lab=VBP}
C {ipin.sym} 660 -400 0 0 {name=p16 lab=VBN}
C {iopin.sym} 700 -440 0 0 {name=p17 lab=AVDD}
C {iopin.sym} 700 -380 0 0 {name=p18 lab=AVSS}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Yohanes Stefanus"}
