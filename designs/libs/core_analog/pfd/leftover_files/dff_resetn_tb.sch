v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {DFF (PFD Latch) Testbench} 100 -750 0 0 0.5 0.5 {}
T {Test: CLK pulse sets Q=1, RN pulse resets Q=0} 100 -710 0 0 0.3 0.3 {}
N 200 -540 200 -510 {
lab=CLK}
N 200 -450 200 -420 {
lab=GND}
N 350 -540 350 -510 {
lab=RN}
N 350 -450 350 -420 {
lab=GND}
N 100 -540 100 -510 {
lab=VDD}
N 100 -450 100 -420 {
lab=GND}
N 100 -420 350 -420 {
lab=GND}
N 200 -420 200 -390 {
lab=GND}
N 430 -490 480 -490 {
lab=CLK}
N 430 -450 480 -450 {
lab=RN}
N 720 -470 780 -470 {
lab=Q}
N 600 -540 600 -520 {lab=VDD}
N 600 -420 600 -400 {lab=GND}
N 700 -470 720 -470 {lab=Q}
N 480 -490 500 -490 {lab=CLK}
N 480 -450 500 -450 {lab=RN}
C {dff_resetn.sym} 600 -470 0 0 {name=x1}
C {vsource.sym} 200 -480 0 0 {name=V_CLK value="PULSE(0 3.3 10n 100p 100p 5n 40n)"
savecurrent=false}
C {vsource.sym} 350 -480 0 0 {name=V_RN value="PWL(0 3.3 25n 3.3 25.1n 0 27n 0 27.1n 3.3 65n 3.3 65.1n 0 67n 0 67.1n 3.3)"
savecurrent=false}
C {vsource.sym} 100 -480 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -390 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -540 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 350 -540 0 0 {name=p2 sig_type=std_logic lab=RN}
C {lab_wire.sym} 100 -540 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 450 -490 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 450 -450 0 0 {name=p6 sig_type=std_logic lab=RN}
C {lab_wire.sym} 780 -470 0 0 {name=p7 sig_type=std_logic lab=Q}
C {lab_wire.sym} 600 -400 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} 600 -540 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {code_shown.sym} 50 -350 0 0 {name=STIMULI only_toplevel=false
value="
.tran 100p 120n
.save all
.control
run
plot v(CLK) v(RN)+4 v(Q)+8 title 'DFF: CLK sets Q, RN resets Q'
echo '--- DFF Verification ---'
echo 'Check: Q goes HIGH when CLK goes HIGH'
echo 'Check: Q goes LOW when RN pulses LOW'
echo 'Check: Q stays LOW after RN, until next CLK HIGH'
.endc
"}
C {code_shown.sym} 550 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="DFF Testbench"}
