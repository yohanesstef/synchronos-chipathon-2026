v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {NAND2 Testbench} 100 -700 0 0 0.5 0.5 {}
N 200 -490 200 -460 {
lab=A}
N 200 -400 200 -370 {
lab=GND}
N 350 -490 350 -460 {
lab=B}
N 350 -400 350 -370 {
lab=GND}
N 100 -490 100 -460 {
lab=VDD}
N 100 -400 100 -370 {
lab=GND}
N 100 -370 350 -370 {
lab=GND}
N 200 -370 200 -340 {
lab=GND}
N 100 -500 100 -490 {lab=VDD}
C {vsource.sym} 200 -430 0 0 {name=V_A value="PULSE(0 3.3 0 100p 100p 10n 20n)"
savecurrent=false}
C {vsource.sym} 350 -430 0 0 {name=V_B value="PULSE(0 3.3 5n 100p 100p 10n 20n)"
savecurrent=false}
C {vsource.sym} 100 -430 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -340 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -490 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_wire.sym} 350 -490 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_wire.sym} 100 -490 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 600 -450 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_wire.sym} 600 -430 0 0 {name=p5 sig_type=std_logic lab=B}
C {lab_wire.sym} 730 -430 0 0 {name=p6 sig_type=std_logic lab=OUT}
C {code_shown.sym} 50 -300 0 0 {name=STIMULI only_toplevel=false
value="
.tran 10p 80n
.save all
.control
run
plot v(A) v(B)+4 v(OUT)+8 title 'NAND2 Truth Table Sweep'
echo '--- NAND2 Verification ---'
echo 'Expected: OUT=LOW only when BOTH A=HIGH and B=HIGH'
.endc
"}
C {code_shown.sym} 500 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="NAND2 Testbench"}
C {nand_pf.sym} 740 -420 0 0 {name=x2}
C {gnd.sym} 660 -380 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 660 -480 0 0 {name=p7 sig_type=std_logic lab=VDD}
