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
x1=0
x2=2e-06
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
x1=0
x2=2e-06
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
x1=0
x2=2e-06
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
x1=0
x2=2e-06
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
N 920 -980 920 -930 {lab=U}
N 880 -1010 880 -900 {lab=Ub}
N 920 -900 930 -900 {lab=GND}
N 930 -900 930 -870 {lab=GND}
N 920 -870 930 -870 {lab=GND}
N 920 -1010 930 -1010 {lab=VDD}
N 930 -1040 930 -1010 {lab=VDD}
N 920 -1040 930 -1040 {lab=VDD}
N 920 -1070 920 -1040 {lab=VDD}
N 920 -870 920 -840 {lab=GND}
N 1180 -1220 1180 -1050 {lab=U_delay}
N 1120 -1220 1120 -1050 {lab=U}
N 1150 -1060 1150 -1050 {lab=GND}
N 1150 -1060 1200 -1060 {lab=GND}
N 1150 -1220 1150 -1210 {lab=VDD}
N 1150 -1210 1200 -1210 {lab=VDD}
N -140 -750 -140 -720 {lab=Vbn}
N -140 -660 -140 -630 {lab=GND}
N -140 -630 -60 -630 {lab=GND}
N 1380 -1160 1380 -1110 {lab=UPB}
N 1340 -1190 1340 -1080 {lab=U_delay}
N 1380 -1080 1390 -1080 {lab=GND}
N 1390 -1080 1390 -1050 {lab=GND}
N 1380 -1050 1390 -1050 {lab=GND}
N 1380 -1190 1390 -1190 {lab=VDD}
N 1390 -1220 1390 -1190 {lab=VDD}
N 1380 -1220 1390 -1220 {lab=VDD}
N 1380 -1250 1380 -1220 {lab=VDD}
N 1380 -1050 1380 -1020 {lab=GND}
N 1150 -890 1150 -840 {lab=U_B}
N 1110 -920 1110 -810 {lab=U}
N 1150 -810 1160 -810 {lab=GND}
N 1160 -810 1160 -780 {lab=GND}
N 1150 -780 1160 -780 {lab=GND}
N 1150 -920 1160 -920 {lab=VDD}
N 1160 -950 1160 -920 {lab=VDD}
N 1150 -950 1160 -950 {lab=VDD}
N 1150 -980 1150 -950 {lab=VDD}
N 1150 -780 1150 -750 {lab=GND}
N 1380 -880 1380 -830 {lab=UP}
N 1340 -910 1340 -800 {lab=U_B}
N 1380 -800 1390 -800 {lab=GND}
N 1390 -800 1390 -770 {lab=GND}
N 1380 -770 1390 -770 {lab=GND}
N 1380 -910 1390 -910 {lab=VDD}
N 1390 -940 1390 -910 {lab=VDD}
N 1380 -940 1390 -940 {lab=VDD}
N 1380 -970 1380 -940 {lab=VDD}
N 1380 -770 1380 -740 {lab=GND}
N 920 -960 1030 -960 {lab=U}
N 1030 -1150 1030 -960 {lab=U}
N 1030 -1150 1120 -1150 {lab=U}
N 1030 -960 1030 -870 {lab=U}
N 1030 -870 1110 -870 {lab=U}
N 1180 -1140 1340 -1140 {lab=U_delay}
N 1150 -870 1340 -870 {lab=U_B}
N 920 -420 920 -370 {lab=D}
N 880 -450 880 -340 {lab=Db}
N 920 -340 930 -340 {lab=GND}
N 930 -340 930 -310 {lab=GND}
N 920 -310 930 -310 {lab=GND}
N 920 -450 930 -450 {lab=VDD}
N 930 -480 930 -450 {lab=VDD}
N 920 -480 930 -480 {lab=VDD}
N 920 -510 920 -480 {lab=VDD}
N 920 -310 920 -280 {lab=GND}
N 1180 -660 1180 -490 {lab=D_delay}
N 1120 -660 1120 -490 {lab=D}
N 1150 -500 1150 -490 {lab=GND}
N 1150 -500 1200 -500 {lab=GND}
N 1150 -660 1150 -650 {lab=VDD}
N 1150 -650 1200 -650 {lab=VDD}
N 1380 -600 1380 -550 {lab=DNB}
N 1340 -630 1340 -520 {lab=D_delay}
N 1380 -520 1390 -520 {lab=GND}
N 1390 -520 1390 -490 {lab=GND}
N 1380 -490 1390 -490 {lab=GND}
N 1380 -630 1390 -630 {lab=VDD}
N 1390 -660 1390 -630 {lab=VDD}
N 1380 -660 1390 -660 {lab=VDD}
N 1380 -690 1380 -660 {lab=VDD}
N 1380 -490 1380 -460 {lab=GND}
N 1150 -330 1150 -280 {lab=D_B}
N 1110 -360 1110 -250 {lab=D}
N 1150 -250 1160 -250 {lab=GND}
N 1160 -250 1160 -220 {lab=GND}
N 1150 -220 1160 -220 {lab=GND}
N 1150 -360 1160 -360 {lab=VDD}
N 1160 -390 1160 -360 {lab=VDD}
N 1150 -390 1160 -390 {lab=VDD}
N 1150 -420 1150 -390 {lab=VDD}
N 1150 -220 1150 -190 {lab=GND}
N 1380 -320 1380 -270 {lab=DN}
N 1340 -350 1340 -240 {lab=D_B}
N 1380 -240 1390 -240 {lab=GND}
N 1390 -240 1390 -210 {lab=GND}
N 1380 -210 1390 -210 {lab=GND}
N 1380 -350 1390 -350 {lab=VDD}
N 1390 -380 1390 -350 {lab=VDD}
N 1380 -380 1390 -380 {lab=VDD}
N 1380 -410 1380 -380 {lab=VDD}
N 1380 -210 1380 -180 {lab=GND}
N 920 -400 1030 -400 {lab=D}
N 1030 -590 1030 -400 {lab=D}
N 1030 -590 1120 -590 {lab=D}
N 1030 -400 1030 -310 {lab=D}
N 1030 -310 1110 -310 {lab=D}
N 1180 -580 1340 -580 {lab=D_delay}
N 1150 -310 1340 -310 {lab=D_B}
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
C {symbols/pfet_03v3.sym} 900 -1010 0 0 {name=M1[0:1]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 900 -900 0 0 {name=M2[0:1]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 920 -1070 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 920 -840 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_wire.sym} 880 -960 0 0 {name=p12 sig_type=std_logic lab=Ub}
C {lab_wire.sym} 1030 -1000 0 1 {name=p16 sig_type=std_logic lab=U}
C {symbols/pfet_03v3.sym} 1150 -1240 1 0 {name=M5
L=0.3u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1150 -1030 3 0 {name=M6
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1200 -1060 0 1 {name=p26 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1200 -1210 0 1 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1180 -1140 0 1 {name=p29 sig_type=std_logic lab=U_delay}
C {lab_wire.sym} 1150 -1260 0 1 {name=p34 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1150 -1010 0 1 {name=p35 sig_type=std_logic lab=VDD}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1750 -810 0 0 {name=x2}
C {vsource.sym} -140 -690 0 0 {name=V1 value=0.5 savecurrent=false}
C {lab_wire.sym} -140 -750 0 0 {name=p38 sig_type=std_logic lab=Vbn}
C {lab_wire.sym} 1580 -870 0 0 {name=p39 sig_type=std_logic lab=Vbn}
C {lab_wire.sym} 1750 -930 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1840 -700 0 1 {name=p41 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1970 -810 0 1 {name=p42 sig_type=std_logic lab=IP}
C {ammeter.sym} 1940 -810 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_wire.sym} 1740 -700 1 1 {name=p43 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1760 -700 1 1 {name=p44 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1780 -700 1 1 {name=p45 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1800 -700 1 1 {name=p46 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1650 -700 3 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1670 -700 3 0 {name=p48 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1690 -700 3 0 {name=p49 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1710 -700 3 0 {name=p50 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1580 -830 0 0 {name=p52 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1580 -790 0 0 {name=p54 sig_type=std_logic lab=DN}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1750 -510 0 0 {name=x3}
C {lab_wire.sym} 1580 -570 0 0 {name=p55 sig_type=std_logic lab=Vbn}
C {lab_wire.sym} 1750 -630 0 0 {name=p56 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1840 -400 0 1 {name=p57 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1970 -510 0 1 {name=p58 sig_type=std_logic lab=IP2}
C {ammeter.sym} 1940 -510 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 1740 -400 1 1 {name=p59 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1760 -400 1 1 {name=p60 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1780 -400 1 1 {name=p61 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1800 -400 1 1 {name=p62 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1650 -400 3 0 {name=p63 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1670 -400 3 0 {name=p64 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1690 -400 3 0 {name=p65 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1710 -400 3 0 {name=p66 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -1250 0 0 {name=p72 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -1020 0 0 {name=p73 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1380 -1140 0 1 {name=p74 sig_type=std_logic lab=UPB}
C {lab_wire.sym} 1580 -810 0 0 {name=p18 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1580 -770 0 0 {name=p19 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1580 -530 0 0 {name=p20 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1580 -490 0 0 {name=p21 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1580 -510 0 0 {name=p22 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1580 -470 0 0 {name=p23 sig_type=std_logic lab=DNb}
C {gnd.sym} 40 -750 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 1150 -980 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1150 -750 0 0 {name=p25 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1150 -870 0 1 {name=p69 sig_type=std_logic lab=U_B}
C {symbols/pfet_03v3.sym} 1360 -1190 0 0 {name=M5[0:7]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1360 -1080 0 0 {name=M6[0:7]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1130 -920 0 0 {name=M9[0:1]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1130 -810 0 0 {name=M10[0:1]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1380 -970 0 0 {name=p79 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -740 0 0 {name=p80 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1380 -860 0 1 {name=p81 sig_type=std_logic lab=UP}
C {symbols/pfet_03v3.sym} 1360 -910 0 0 {name=M13[0:7]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1360 -800 0 0 {name=M14[0:7]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 900 -450 0 0 {name=M3[0:1]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 900 -340 0 0 {name=M4[0:1]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 920 -510 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 920 -280 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_wire.sym} 880 -400 0 0 {name=p15 sig_type=std_logic lab=Db}
C {lab_wire.sym} 1030 -440 0 1 {name=p17 sig_type=std_logic lab=D}
C {lab_wire.sym} 1200 -500 0 1 {name=p28 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1200 -650 0 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1180 -580 0 1 {name=p31 sig_type=std_logic lab=D_delay}
C {lab_wire.sym} 1150 -700 0 1 {name=p32 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1150 -450 0 1 {name=p33 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -690 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -460 0 0 {name=p37 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1380 -580 0 1 {name=p51 sig_type=std_logic lab=DNB}
C {lab_wire.sym} 1150 -420 0 0 {name=p53 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1150 -190 0 0 {name=p67 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1150 -310 0 1 {name=p68 sig_type=std_logic lab=D_B}
C {symbols/pfet_03v3.sym} 1360 -630 0 0 {name=M7[0:7]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1360 -520 0 0 {name=M8[0:7]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1130 -360 0 0 {name=M11[0:1]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1130 -250 0 0 {name=M12[0:1]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1380 -410 0 0 {name=p70 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -180 0 0 {name=p71 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1380 -300 0 1 {name=p75 sig_type=std_logic lab=DN}
C {symbols/pfet_03v3.sym} 1360 -350 0 0 {name=M15[0:7]
L=0.28u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1360 -240 0 0 {name=M16[0:7]
L=0.28u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1150 -680 1 0 {name=M1
L=0.3u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1150 -470 3 0 {name=M2
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
