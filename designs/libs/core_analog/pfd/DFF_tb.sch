v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {D-Flip-Flop (DFFRNQ_1) Functional Testbench} 100 -700 0 0 0.5 0.5 {}
N 100 -490 100 -460 {lab=VDD}
N 100 -400 100 -370 {lab=GND}
N 220 -490 220 -460 {lab=CLK}
N 220 -400 220 -370 {lab=GND}
N 340 -490 340 -460 {lab=D}
N 340 -400 340 -370 {lab=GND}
N 460 -490 460 -460 {lab=RN}
N 460 -400 460 -370 {lab=GND}
N 100 -370 460 -370 {lab=GND}
N 280 -370 280 -340 {lab=GND}
N 340 -510 340 -490 {lab=D}
N 340 -510 670 -510 {lab=D}
N 670 -510 670 -490 {lab=D}
N 220 -530 220 -490 {lab=CLK}
N 220 -530 600 -530 {lab=CLK}
N 600 -530 600 -450 {lab=CLK}
N 600 -450 670 -450 {lab=CLK}
C {vsource.sym} 100 -430 0 0 {name=V_VDD value=5 savecurrent=false}
C {vsource.sym} 220 -430 0 0 {name=V_CLK value="PULSE(0 5 0 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} 340 -430 0 0 {name=V_D value="PULSE(0 5 5n 100p 100p 22n 50n)" savecurrent=false}
C {vsource.sym} 460 -430 0 0 {name=V_RN value="PULSE(0 5 0 100p 100p 12n 1m)" savecurrent=false}
C {gnd.sym} 280 -340 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 100 -490 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -490 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 340 -490 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_wire.sym} 460 -490 0 0 {name=p4 sig_type=std_logic lab=RN}
C {gf180mcu_fd_sc_mcu7t5v0__dffrnq_1.sym} 750 -450 0 0 {name=x1}
C {lab_wire.sym} 730 -550 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 770 -550 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 730 -350 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_wire.sym} 770 -350 0 0 {name=p12 sig_type=std_logic lab=GND}
C {code_shown.sym} 50 -300 0 0 {name=STIMULI only_toplevel=false
value="
.tran 10p 120n
.save all
.control
run
plot v(CLK) v(RN)+6 v(D)+12 v(Q)+18 title 'DFFRNQ_1 Timing Verification'
echo '--- D-Flip-Flop Verification ---'
echo '0-12ns: RN is LOW -> Q must be forced LOW regardless of CLK/D'
echo '12ns+:  RN is HIGH -> Q should capture D on rising edge of CLK'
.endc
"}
C {code_shown.sym} 500 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {title.sym} 160 -40 0 0 {name=l2 author="DFFRNQ_1 Testbench"}
C {lab_wire.sym} 830 -490 0 0 {name=p6 sig_type=std_logic lab=Q}
C {lab_wire.sym} 670 -410 0 0 {name=p7 sig_type=std_logic lab=VDD}
