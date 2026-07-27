v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {NAND4 Testbench} 100 -700 0 0 0.5 0.5 {}
N 100 -490 100 -460 {
lab=VDD}
N 100 -400 100 -370 {
lab=GND}
N 220 -490 220 -460 {
lab=A}
N 220 -400 220 -370 {
lab=GND}
N 340 -490 340 -460 {
lab=B}
N 340 -400 340 -370 {
lab=GND}
N 460 -490 460 -460 {
lab=C}
N 460 -400 460 -370 {
lab=GND}
N 580 -490 580 -460 {
lab=D}
N 580 -400 580 -370 {
lab=GND}
N 100 -370 580 -370 {
lab=GND}
N 220 -370 220 -340 {
lab=GND}
C {vsource.sym} 100 -430 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {vsource.sym} 220 -430 0 0 {name=V_A value="PULSE(0 3.3 0 100p 100p 40n 80n)" savecurrent=false}
C {vsource.sym} 340 -430 0 0 {name=V_B value="PULSE(0 3.3 0 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} 460 -430 0 0 {name=V_C value="PULSE(0 3.3 0 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} 580 -430 0 0 {name=V_D value="PULSE(0 3.3 0 100p 100p 5n 10n)" savecurrent=false}
C {gnd.sym} 220 -340 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 100 -490 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -490 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_wire.sym} 340 -490 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} 460 -490 0 0 {name=p9 sig_type=std_logic lab=C}
C {lab_wire.sym} 580 -490 0 0 {name=p10 sig_type=std_logic lab=D}
C {libs/core_analog/pfd/nand4_pf.sym} 780 -420 0 0 {name=x1}
C {lab_wire.sym} 640 -470 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_wire.sym} 640 -450 0 0 {name=p5 sig_type=std_logic lab=B}
C {lab_wire.sym} 640 -430 0 0 {name=p6 sig_type=std_logic lab=C}
C {lab_wire.sym} 640 -410 0 0 {name=p11 sig_type=std_logic lab=D}
C {lab_wire.sym} 770 -440 0 0 {name=p7 sig_type=std_logic lab=Z}
C {lab_wire.sym} 700 -500 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {gnd.sym} 700 -380 0 0 {name=l4 lab=GND}
C {code_shown.sym} 50 -300 0 0 {name=STIMULI only_toplevel=false
value="
.tran 10p 160n
.save all
.control
run
plot v(A) v(B)+4 v(C)+8 v(D)+12 v(Z)+16 title 'NAND4 Truth Table Sweep'
echo '--- NAND4 Verification ---'
echo 'Expected: Z=LOW (0V) only when A, B, C, and D are all HIGH simultaneously'
.endc
"}
C {code_shown.sym} 500 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="NAND4 Testbench"}