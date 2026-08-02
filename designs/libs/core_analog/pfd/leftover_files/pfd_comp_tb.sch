v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {PFD Complementary Output Testbench} 100 -1000 0 0 0.5 0.5 {}
T {Verify: UP/UP_B and DN/DN_B complementary with matched timing} 100 -960 0 0 0.3 0.3 {}
T {REF = 10MHz, FB = 10MHz with 10ns phase lag} 100 -930 0 0 0.3 0.3 {}
N 200 -640 200 -610 {
lab=REF}
N 200 -550 200 -520 {
lab=GND}
N 350 -640 350 -610 {
lab=FB}
N 350 -550 350 -520 {
lab=GND}
N 200 -520 350 -520 {
lab=GND}
N 275 -520 275 -460 {
lab=GND}
N 100 -640 100 -610 {
lab=VDD}
N 100 -550 100 -520 {
lab=GND}
N 100 -520 200 -520 {
lab=GND}
N 640 -640 640 -610 {lab=VDD}
N 640 -430 640 -400 {lab=GND}
N 500 -570 520 -570 {lab=REF}
N 500 -510 520 -510 {lab=FB}
N 780 -590 830 -590 {lab=UP}
N 780 -560 830 -560 {lab=UP_B}
N 780 -520 830 -520 {lab=DN}
N 780 -490 830 -490 {lab=DN_B}
C {pfd_comp.sym} 640 -540 0 0 {name=x1}
C {vsource.sym} 200 -580 0 0 {name=V_REF value="PULSE(0 3.3 0 100p 100p 50n 100n)"
savecurrent=false}
C {vsource.sym} 350 -580 0 0 {name=V_FB value="PULSE(0 3.3 10n 100p 100p 50n 100n)"
savecurrent=false}
C {vsource.sym} 100 -580 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 275 -460 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -640 0 0 {name=p1 sig_type=std_logic lab=REF}
C {lab_wire.sym} 350 -640 0 0 {name=p2 sig_type=std_logic lab=FB}
C {lab_wire.sym} 100 -640 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 510 -570 0 0 {name=p4 sig_type=std_logic lab=REF}
C {lab_wire.sym} 510 -510 0 0 {name=p5 sig_type=std_logic lab=FB}
C {lab_wire.sym} 830 -590 0 0 {name=p6 sig_type=std_logic lab=UP}
C {lab_wire.sym} 830 -560 0 0 {name=p7 sig_type=std_logic lab=UP_B}
C {lab_wire.sym} 830 -520 0 0 {name=p8 sig_type=std_logic lab=DN}
C {lab_wire.sym} 830 -490 0 0 {name=p9 sig_type=std_logic lab=DN_B}
C {lab_wire.sym} 640 -640 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -400 0 0 {name=p11 sig_type=std_logic lab=GND}
C {code_shown.sym} 50 -400 0 0 {name=STIMULI only_toplevel=false
value="
.tran 100p 500n
.save all
.control
run
set color0 = white
set color1 = black
plot v(REF) v(FB)+4 v(UP)+8 v(UP_B)+12 v(DN)+16 v(DN_B)+20 title 'PFD Comp Outputs'
meas tran up_w trig v(UP) val=1.65 rise=1 targ v(UP) val=1.65 fall=1
meas tran upb_w trig v(UP_B) val=1.65 fall=1 targ v(UP_B) val=1.65 rise=1
meas tran t_up_rise trig v(UP) val=1.65 rise=1
meas tran t_upb_fall trig v(UP_B) val=1.65 fall=1
let up_skew = t_up_rise - t_upb_fall
echo '--- PFD Complementary Verification ---'
echo 'UP pulse width:' $&up_w
echo 'UP_B low width:' $&upb_w
echo 'UP/UP_B skew:' $&up_skew
echo 'Target: UP and UP_B exact complements, skew < 50ps'
.endc
"}
C {code_shown.sym} 750 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="PFD Comp TB - Maneatis Fig.14"}
C {launcher.sym} 900 -960 0 0 {name=h1
descr="Netlist & Simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 900 -920 0 0 {name=h2
descr="Load Waveforms"
tclcommand="xschem raw_read $netlist_dir/pfd_comp_tb.raw tran"}
