v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1200 -910 2000 -510 {flags=graph
y1=-0.11
y2=3.4
ypos1=0.0633185
ypos2=2.5144824
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6 7"
node="REF
FB
UP
DN"
digital=1}
T {PFD Testbench — Maneatis Style} 100 -950 0 0 0.5 0.5 {}
T {GF180MCU 3.3V, TT Corner, 25C} 100 -910 0 0 0.3 0.3 {}
T {REF = 10MHz, FB = 10MHz with 10ns phase lag} 100 -880 0 0 0.3 0.3 {}
T {Expected: UP pulses wider than DN pulses} 100 -850 0 0 0.3 0.3 {}
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
N 570 -660 610 -660 {
lab=REF}
N 570 -600 610 -600 {
lab=FB}
N 870 -660 920 -660 {
lab=UP}
N 870 -620 920 -620 {
lab=DN}
N 740 -570 740 -550 {lab=GND}
N 740 -710 740 -690 {lab=VDD}
N 610 -660 630 -660 {lab=REF}
N 610 -600 630 -600 {lab=FB}
N 850 -660 870 -660 {lab=UP}
N 850 -620 870 -620 {lab=DN}
C {vsource.sym} 200 -580 0 0 {name=V_REF value="PULSE(0 3.3 0 100p 100p 50n 100n)"
savecurrent=false}
C {vsource.sym} 350 -580 0 0 {name=V_FB value="PULSE(0 3.3 10n 100p 100p 50n 100n)"
savecurrent=false}
C {vsource.sym} 100 -580 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 275 -460 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -640 0 0 {name=p1 sig_type=std_logic lab=REF}
C {lab_wire.sym} 350 -640 0 0 {name=p2 sig_type=std_logic lab=FB}
C {lab_wire.sym} 100 -640 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 920 -660 0 0 {name=p4 sig_type=std_logic lab=UP}
C {lab_wire.sym} 920 -620 0 0 {name=p5 sig_type=std_logic lab=DN}
C {lab_wire.sym} 590 -660 0 0 {name=p6 sig_type=std_logic lab=REF}
C {lab_wire.sym} 590 -600 0 0 {name=p7 sig_type=std_logic lab=FB}
C {lab_wire.sym} 740 -710 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 740 -550 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} 50 -440 0 0 {name=STIMULI only_toplevel=false
value="
* Transient simulation — 500ns to observe multiple REF/FB cycles
.tran 100p 1000n

.save all

.control
run
set color0 = white
set color1 = black
*plot v(REF) v(FB)+4 v(UP)+8 v(DN)+12 title 'PFD Waveforms'
meas tran up_width trig v(UP) val=1.65 rise=1 targ v(UP) val=1.65 fall=1
meas tran dn_width trig v(DN) val=1.65 rise=1 targ v(DN) val=1.65 fall=1
echo '--- PFD Verification ---'
echo 'UP pulse width (should be ~10ns for 10ns phase lead):'
echo $&up_width
echo 'DN pulse width (should be ~1-2ns, just reset pulse):'
echo $&dn_width
write tb_pfd.raw
.endc
"}
C {code_shown.sym} 750 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {launcher.sym} 850 -900 0 0 {name=h1
descr="Netlist & Simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 850 -860 0 0 {name=h2
descr="Load Waveforms"
tclcommand="xschem raw_read $netlist_dir/tb_pfd.raw tran"}
