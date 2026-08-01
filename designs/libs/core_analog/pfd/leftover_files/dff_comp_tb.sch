v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {DFF Complementary Output Testbench} 100 -800 0 0 0.5 0.5 {}
T {Verify: Q and Q_bar are complementary with matched timing} 100 -760 0 0 0.3 0.3 {}
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
N 640 -600 640 -570 {lab=VDD}
N 640 -430 640 -400 {lab=GND}
N 520 -530 540 -530 {lab=CLK}
N 520 -500 540 -500 {lab=VDD}
N 520 -470 540 -470 {lab=RN}
N 760 -520 800 -520 {lab=Q}
N 760 -480 800 -480 {lab=Q_bar}
C {dff_comp.sym} 640 -500 0 0 {name=x1}
C {vsource.sym} 200 -480 0 0 {name=V_CLK value="PULSE(0 3.3 10n 100p 100p 5n 40n)"
savecurrent=false}
C {vsource.sym} 350 -480 0 0 {name=V_RN value="PWL(0 3.3 25n 3.3 25.1n 0 27n 0 27.1n 3.3 65n 3.3 65.1n 0 67n 0 67.1n 3.3)"
savecurrent=false}
C {vsource.sym} 100 -480 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -390 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -540 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 350 -540 0 0 {name=p2 sig_type=std_logic lab=RN}
C {lab_wire.sym} 100 -540 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 530 -530 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 530 -500 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 530 -470 0 0 {name=p6 sig_type=std_logic lab=RN}
C {lab_wire.sym} 800 -520 0 0 {name=p7 sig_type=std_logic lab=Q}
C {lab_wire.sym} 800 -480 0 0 {name=p8 sig_type=std_logic lab=Q_bar}
C {lab_wire.sym} 640 -600 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -400 0 0 {name=p10 sig_type=std_logic lab=GND}
C {code_shown.sym} 50 -350 0 0 {name=STIMULI only_toplevel=false
value="
.tran 100p 120n
.save all
.control
run
set color0 = white
set color1 = black
plot v(CLK) v(RN)+4 v(Q)+8 v(Q_bar)+12 title 'DFF Comp: Q and Q_bar'
meas tran t_q_rise trig v(Q) val=1.65 rise=1
meas tran t_qb_fall trig v(Q_bar) val=1.65 fall=1
let skew = t_q_rise - t_qb_fall
echo '--- DFF Complementary Verification ---'
echo 'Q rise time:' $&t_q_rise
echo 'Q_bar fall time:' $&t_qb_fall
echo 'Skew (Q_rise - Qbar_fall):' $&skew
echo 'Target skew: < 50ps'
.endc
"}
C {code_shown.sym} 750 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="DFF Comp TB"}
C {launcher.sym} 850 -760 0 0 {name=h1
descr="Netlist & Simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
