v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {PFD Latch (D=VDD implicit)} 120 -750 0 0 0.4 0.4 {}
T {Standard 3-NAND PFD flip-flop} 120 -720 0 0 0.3 0.3 {}
T {G1: NAND(CLK,RN)->n1} 120 -690 0 0 0.25 0.25 {}
T {G2: NAND(n1,Qb)->Q} 120 -670 0 0 0.25 0.25 {}
T {G3: NAND(Q,RN)->Qb} 120 -650 0 0 0.25 0.25 {}
T {Level-sensitive to CLK — standard for PFD} 120 -625 0 0 0.25 0.25 {layer=5}
T {D unused in PFD (D=VDD implicit)} 300 -600 0 0 0.2 0.2 {layer=5}
N 180 -520 250 -520 {
lab=CLK}
N 180 -500 250 -500 {
lab=RN}
N 450 -500 500 -500 {
lab=n1}
N 750 -460 830 -460 {
lab=Q}
N 830 -460 830 -300 {
lab=Q}
N 500 -300 830 -300 {
lab=Q}
N 180 -490 180 -350 {
lab=RN}
N 180 -350 550 -350 {
lab=RN}
N 830 -460 860 -460 {
lab=Q}
N 500 -360 500 -300 {lab=Q}
N 700 -340 790 -340 {lab=Qb}
N 790 -360 790 -340 {lab=Qb}
N 550 -400 790 -400 {lab=Qb}
N 790 -400 790 -360 {lab=Qb}
N 550 -440 550 -400 {lab=Qb}
N 550 -440 600 -440 {lab=Qb}
N 250 -520 310 -520 {lab=CLK}
N 250 -500 310 -500 {lab=RN}
N 180 -500 180 -490 {lab=RN}
N 440 -500 450 -500 {lab=n1}
N 500 -480 620 -480 {lab=n1}
N 500 -500 500 -480 {lab=n1}
N 600 -440 620 -440 {lab=Qb}
N 620 -460 620 -440 {lab=Qb}
N 500 -360 570 -360 {lab=Q}
N 550 -350 550 -340 {lab=RN}
N 550 -340 570 -340 {lab=RN}
C {ipin.sym} 180 -520 0 0 {name=p1 lab=CLK}
C {ipin.sym} 180 -500 0 0 {name=p3 lab=RN}
C {opin.sym} 860 -460 0 0 {name=p4 lab=Q}
C {lab_wire.sym} 470 -500 0 0 {name=p7 sig_type=std_logic lab=n1}
C {lab_wire.sym} 790 -400 0 0 {name=p9 sig_type=std_logic lab=Qb}
C {lab_wire.sym} 830 -380 0 0 {name=p8 sig_type=std_logic lab=Q}
C {nand_pf.sym} 450 -490 0 0 {name=x1}
C {nand_pf.sym} 760 -450 0 0 {name=x2}
C {nand_pf.sym} 710 -330 0 0 {name=x3}
C {iopin.sym} 200 -250 0 0 {name=p2 lab=VDD
}
C {iopin.sym} 200 -230 0 0 {name=p5 lab=VSS
}
C {lab_pin.sym} 200 -230 0 0 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 200 -250 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 370 -550 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 680 -510 0 0 {name=p12 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 630 -390 0 0 {name=p13 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 370 -450 0 0 {name=p14 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 680 -410 0 0 {name=p15 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 630 -290 0 0 {name=p16 sig_type=std_logic lab=VSS
}
