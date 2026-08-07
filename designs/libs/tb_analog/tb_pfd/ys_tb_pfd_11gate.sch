v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1070 -1820 1870 -1420 {flags=graph
y1=-0.11
y2=3.4
ypos1=-0.11
ypos2=3.4
divy=5
subdivy=1
unity=1
x1=1.8329543e-07
x2=1.4357078e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="4 5 6 7 8 9"
node="r_bar
v_bar
up
upb
dn
dnb"}
B 2 1870 -1820 2670 -1420 {flags=graph
y1=-0.11
y2=3.4
ypos1=-1.3235485
ypos2=2.1427952
divy=5
subdivy=1
unity=1
x1=1.8329543e-07
x2=1.4357078e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color="4 5"
node="up_bar
dn_bar"
legend=1}
B 2 1070 -2220 1870 -1820 {flags=graph
y1=3.1
y2=4.2
ypos1=2.6113299
ypos2=6.3793993
divy=5
subdivy=1
unity=1
x1=1.8329543e-07
x2=1.4357078e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color=4
node="\\"DEL_UP; UP UPB +\\""
legend=1}
B 2 1870 -2220 2670 -1820 {flags=graph
y1=2.1
y2=4.7
ypos1=2.6113299
ypos2=6.3793993
divy=5
subdivy=1
unity=1
x1=1.8329543e-07
x2=1.4357078e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color=4
node="\\"DEL_DN; DN DNB +\\""
legend=1}
T {11-Gate Symmetric NAND PFD Testbench} 100 -1060 0 0 0.5 0.5 {}
T {GF180MCU 3.3V, TT Corner, 25C} 100 -1020 0 0 0.3 0.3 {}
T {R_bar = 10MHz, V_bar = 10MHz with 10ns phase lag (falling edge active)} 100 -990 0 0 0.3 0.3 {}
T {Expected: Active-low UP_bar pulses (~10ns wide) | Short DN_bar reset spikes} 100 -960 0 0 0.3 0.3 {}
N 40 -870 40 -840 {lab=R_bar}
N 40 -780 40 -750 {lab=GND}
N 190 -750 190 -720 {lab=V_bar}
N 190 -660 190 -630 {lab=GND}
N 40 -630 190 -630 {lab=GND}
N 115 -630 115 -570 {lab=GND}
N -60 -750 -60 -720 {lab=VDD}
N -60 -660 -60 -630 {lab=GND}
N -60 -630 40 -630 {lab=GND}
N 470 -680 510 -680 {lab=R_bar}
N 470 -620 510 -620 {lab=V_bar}
N 770 -680 820 -680 {lab=Ub}
N 770 -620 820 -620 {lab=Db}
N 510 -680 530 -680 {lab=R_bar}
N 510 -620 530 -620 {lab=V_bar}
N 640 -730 640 -710 {lab=VDD}
N 640 -590 640 -570 {lab=GND}
N 750 -620 770 -620 {lab=Db}
N 750 -680 770 -680 {lab=Ub}
N -140 -750 -140 -720 {lab=Vbn}
N -140 -660 -140 -630 {lab=GND}
N -140 -630 -60 -630 {lab=GND}
N 640 -710 900 -710 {lab=VDD}
N 640 -590 900 -590 {lab=GND}
C {vsource.sym} 40 -810 0 0 {name=V_R_bar value="PULSE(3.3 0 0 50p 50p 100n 200n)" savecurrent=false}
C {vsource.sym} 190 -690 0 0 {name=V_V_bar value="PULSE(3.3 0 50n 50p 50p 100n 200n)" savecurrent=false}
C {vsource.sym} -60 -690 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 115 -570 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 40 -870 0 0 {name=p1 sig_type=std_logic lab=R_bar}
C {lab_wire.sym} 190 -750 0 0 {name=p2 sig_type=std_logic lab=V_bar}
C {lab_wire.sym} -60 -750 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 820 -680 0 0 {name=p4 sig_type=std_logic lab=Ub}
C {lab_wire.sym} 820 -620 0 0 {name=p5 sig_type=std_logic lab=Db}
C {lab_wire.sym} 470 -680 0 0 {name=p6 sig_type=std_logic lab=R_bar}
C {lab_wire.sym} 470 -620 0 0 {name=p7 sig_type=std_logic lab=V_bar}
C {lab_wire.sym} 640 -730 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -570 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} -260 -530 0 0 {name=STIMULI only_toplevel=false
value="
* Transient simulation — 500ns to observe multiple comparison cycles
VIP IP GND 1.65
VIP2 IP2 GND 1.65
.tran 50p 2u

.save all

.control
run
set color0 = white
set color1 = black
*plot v(R_bar) v(V_bar)+4 v(UP_bar)+8 v(DN_bar)+12 title '11-Gate NAND PFD Waveforms (Active-Low)'

* Measure active-low pulse widths (falling edge to rising edge at 50% VDD = 1.65V)
meas tran up_width trig v(UP_bar) val=1.65 fall=1 targ v(UP_bar) val=1.65 rise=1
meas tran dn_width trig v(DN_bar) val=1.65 fall=1 targ v(DN_bar) val=1.65 rise=1

echo '--- PFD Verification Results ---'
echo 'UP_bar active-low pulse width (expected ~10ns for 10ns phase lead):'
echo $&up_width
echo 'DN_bar reset pulse width (short duration reset spike):'
echo $&dn_width
write tb_pfd_11gate.raw
.endc
"}
C {code_shown.sym} 70 40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="PFD TB — Fig. 14 Active-Low Architecture"}
C {libs/core_analog/pfd/pfd_11gate.sym} 640 -650 0 0 {name=x1}
C {launcher.sym} 830 -1470 0 0 {name=h3
descr="Netlist & Simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 830 -1430 0 0 {name=h4
descr="Load Waveforms"
tclcommand="xschem raw_read $netlist_dir/tb_pfd_11gate.raw tran"}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1370 -820 0 0 {name=x2}
C {vsource.sym} -140 -690 0 0 {name=V1 value=0.5 savecurrent=false}
C {lab_wire.sym} -140 -750 0 0 {name=p38 sig_type=std_logic lab=Vbn}
C {lab_wire.sym} 1200 -880 0 0 {name=p39 sig_type=std_logic lab=Vbn}
C {lab_wire.sym} 1370 -940 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1460 -710 0 1 {name=p41 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1590 -820 0 1 {name=p42 sig_type=std_logic lab=IP}
C {ammeter.sym} 1560 -820 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_wire.sym} 1360 -710 1 1 {name=p43 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1380 -710 1 1 {name=p44 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1400 -710 1 1 {name=p45 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1420 -710 1 1 {name=p46 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1270 -710 3 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1290 -710 3 0 {name=p48 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1310 -710 3 0 {name=p49 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1330 -710 3 0 {name=p50 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1200 -840 0 0 {name=p52 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1200 -800 0 0 {name=p54 sig_type=std_logic lab=DN}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1370 -520 0 0 {name=x3}
C {lab_wire.sym} 1200 -580 0 0 {name=p55 sig_type=std_logic lab=Vbn}
C {lab_wire.sym} 1370 -640 0 0 {name=p56 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1460 -410 0 1 {name=p57 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1590 -520 0 1 {name=p58 sig_type=std_logic lab=IP2}
C {ammeter.sym} 1560 -520 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 1360 -410 1 1 {name=p59 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1380 -410 1 1 {name=p60 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1400 -410 1 1 {name=p61 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1420 -410 1 1 {name=p62 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1270 -410 3 0 {name=p63 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1290 -410 3 0 {name=p64 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1310 -410 3 0 {name=p65 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1330 -410 3 0 {name=p66 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1200 -820 0 0 {name=p18 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1200 -780 0 0 {name=p19 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1200 -540 0 0 {name=p20 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1200 -500 0 0 {name=p21 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1200 -520 0 0 {name=p22 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1200 -480 0 0 {name=p23 sig_type=std_logic lab=DNb}
C {gnd.sym} 40 -750 0 0 {name=l3 lab=GND}
C {libs/core_analog/pfd_s2d/pfd_s2d.sym} 900 -650 0 0 {name=x4}
C {lab_wire.sym} 980 -680 0 1 {name=p10 sig_type=std_logic lab=UP}
C {lab_wire.sym} 980 -640 0 1 {name=p11 sig_type=std_logic lab=DN}
C {lab_wire.sym} 980 -660 0 1 {name=p12 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 980 -620 0 1 {name=p13 sig_type=std_logic lab=DNb}
