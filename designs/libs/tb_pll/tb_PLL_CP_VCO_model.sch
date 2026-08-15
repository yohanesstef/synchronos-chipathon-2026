v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 300 -1020 1100 -620 {flags=graph
y1=-0.029
y2=3.4
ypos1=0.14245
ypos2=3.57145
divy=5
subdivy=1
unity=1
x1=3.5922998e-05
x2=3.6183891e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ck270
ck180
ck90
ck0"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1800844864
digital=1
legend=1}
B 2 300 -620 1100 -220 {flags=graph
y1=0
y2=3.3
ypos1=0.33
ypos2=3.63
divy=5
subdivy=1
unity=1
x1=3.5922998e-05
x2=3.6183891e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 7 18 4"
node="UP
DN
\\"UP-DN; UP DN -\\"
space
REFERENCE
DIV_OUT"
digital=1}
B 2 300 -220 1100 180 {flags=graph
y1=0
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.5922998e-05
x2=3.6183891e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VBP
VBN
VCTRL"
color="4 8 18"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
}
B 2 1100 -220 1900 180 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.5922998e-05
x2=3.6183891e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
hcursor2_y=1.101568
color=4
node="\\"i; i_vdd max()\\""}
P 4 1 980 -1540 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -840 -1340 0 0 0.4 0.4 {}
N 1490 -1510 1550 -1510 {lab=VCTRL}
N 1750 -1450 1760 -1450 {lab=VBN}
N 1720 -1450 1720 -1430 {lab=VBN}
N 1490 -1580 1490 -1570 {lab=AVDD}
N 1860 -1400 1860 -1360 {lab=AVSS}
N 1720 -1360 1860 -1360 {lab=AVSS}
N 1620 -1400 1620 -1360 {lab=AVSS}
N 1860 -1580 1860 -1560 {lab=AVDD}
N 1620 -1580 1620 -1560 {lab=AVDD}
N 1540 -1450 1550 -1450 {lab=STARTUP}
N 690 -1720 690 -1710 {lab=AVSS}
N 690 -1650 690 -1640 {lab=0}
N 1620 -1580 1860 -1580 {lab=AVDD}
N 1100 -1690 1150 -1690 {lab=S1}
N 1100 -1670 1170 -1670 {lab=S2}
N 1100 -1650 1190 -1650 {lab=S3}
N 1100 -1630 1210 -1630 {lab=S4}
N 1340 -1710 1390 -1710 {lab=AVSS}
N 1300 -1630 1390 -1630 {lab=S4b}
N 1280 -1650 1390 -1650 {lab=S3b}
N 1260 -1670 1390 -1670 {lab=S2b}
N 1240 -1690 1390 -1690 {lab=S1b}
N 1050 -1780 1080 -1780 {lab=DNb}
N 1050 -1820 1080 -1820 {lab=UPb}
N 1050 -1800 1080 -1800 {lab=DN}
N 1050 -1840 1080 -1840 {lab=UP}
N 1050 -1550 1080 -1550 {lab=DNb}
N 1050 -1510 1080 -1510 {lab=UPb}
N 1050 -1530 1080 -1530 {lab=DN}
N 1050 -1490 1080 -1490 {lab=UP}
N 1250 -1960 1250 -1940 {lab=AVDD}
N 1250 -1390 1250 -1370 {lab=AVDD}
N 1340 -1710 1340 -1620 {lab=AVSS}
N 1000 -1880 1080 -1880 {lab=VBN}
N 1000 -1880 1000 -1450 {lab=VBN}
N 1000 -1450 1080 -1450 {lab=VBN}
N 1850 -1850 1850 -1820 {lab=VBP}
N 1240 -1690 1240 -1620 {lab=S1b}
N 1260 -1670 1260 -1620 {lab=S2b}
N 1280 -1650 1280 -1620 {lab=S3b}
N 1300 -1630 1300 -1620 {lab=S4b}
N 1150 -1690 1150 -1620 {lab=S1}
N 1170 -1670 1170 -1620 {lab=S2}
N 1190 -1650 1190 -1620 {lab=S3}
N 1210 -1630 1210 -1620 {lab=S4}
N 1210 -1710 1210 -1630 {lab=S4}
N 1190 -1710 1190 -1650 {lab=S3}
N 1170 -1710 1170 -1670 {lab=S2}
N 1150 -1710 1150 -1690 {lab=S1}
N 1240 -1710 1240 -1690 {lab=S1b}
N 1260 -1710 1260 -1670 {lab=S2b}
N 1280 -1710 1280 -1650 {lab=S3b}
N 1300 -1710 1300 -1630 {lab=S4b}
N 1720 -1370 1720 -1360 {lab=AVSS}
N 1850 -1850 1870 -1850 {lab=VBP}
N 1930 -1850 1950 -1850 {lab=AVSS}
N 1520 -1690 1570 -1690 {lab=S1}
N 1520 -1670 1590 -1670 {lab=S2}
N 1520 -1650 1610 -1650 {lab=S3}
N 1520 -1630 1630 -1630 {lab=S4}
N 1760 -1710 1810 -1710 {lab=AVSS}
N 1720 -1630 1810 -1630 {lab=S4b}
N 1700 -1650 1810 -1650 {lab=S3b}
N 1680 -1670 1810 -1670 {lab=S2b}
N 1660 -1690 1810 -1690 {lab=S1b}
N 1760 -1710 1760 -1620 {lab=AVSS}
N 1660 -1690 1660 -1620 {lab=S1b}
N 1680 -1670 1680 -1620 {lab=S2b}
N 1700 -1650 1700 -1620 {lab=S3b}
N 1720 -1630 1720 -1620 {lab=S4b}
N 1570 -1690 1570 -1620 {lab=S1}
N 1590 -1670 1590 -1620 {lab=S2}
N 1610 -1650 1610 -1620 {lab=S3}
N 1630 -1630 1630 -1620 {lab=S4}
N 1630 -1710 1630 -1630 {lab=S4}
N 1610 -1710 1610 -1650 {lab=S3}
N 1590 -1710 1590 -1670 {lab=S2}
N 1570 -1710 1570 -1690 {lab=S1}
N 1660 -1710 1660 -1690 {lab=S1b}
N 1680 -1710 1680 -1670 {lab=S2b}
N 1700 -1710 1700 -1650 {lab=S3b}
N 1720 -1710 1720 -1630 {lab=S4b}
N 1490 -1510 1490 -1490 {lab=VCTRL}
N 1740 -1510 1760 -1510 {lab=VBP}
N 1830 -1820 1850 -1820 {lab=VBP}
N 1410 -1820 1420 -1820 {lab=VBP}
N 1850 -1980 1850 -1850 {lab=VBP}
N 1420 -1980 1850 -1980 {lab=VBP}
N 1420 -1980 1420 -1820 {lab=VBP}
N 1670 -1960 1670 -1940 {lab=AVDD}
N 1490 -1830 1500 -1830 {lab=VBN}
N 1930 -1510 2050 -1510 {lab=VOP[4..1]}
N 1930 -1450 2050 -1450 {lab=VON[4..1]}
N 1750 -1380 2100 -1380 {lab=VBN}
N 1750 -1450 1750 -1380 {lab=VBN}
N 2250 -1510 2250 -1260 {lab=CK0}
N 2220 -1510 2250 -1510 {lab=CK0}
N 2220 -1490 2270 -1490 {lab=CK90}
N 2250 -1510 2270 -1510 {lab=CK0}
N 2220 -1470 2270 -1470 {lab=CK180}
N 2220 -1450 2270 -1450 {lab=CK270}
N 2220 -1430 2270 -1430 {lab=DUMMY[1..4]}
N 1670 -1260 2250 -1260 {lab=CK0}
N 1410 -1510 1490 -1510 {lab=VCTRL}
N 690 -1850 690 -1840 {lab=AVDD}
N 690 -1860 690 -1850 {lab=AVDD}
N 690 -1550 730 -1550 {lab=reference}
N 1690 -1450 1720 -1450 {lab=VBN}
N 1620 -1360 1720 -1360 {lab=AVSS}
N 1720 -1450 1750 -1450 {lab=VBN}
N 690 -1490 730 -1490 {lab=div_out}
N 1330 -1260 1370 -1260 {lab=div_out}
C {lab_wire.sym} 690 -1550 0 0 {name=p4 sig_type=std_logic lab=reference}
C {libs/model_pll/freq_divider.sym} 1520 -1260 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 1230 -980 0 0 {name=h2
descr="load tran 1" 
tclcommand="xschem raw_read $netlist_dir/tb1.raw tran"
}
C {libs/core_analog/vco/vco.sym} 1860 -1480 0 0 {name=x3}
C {libs/core_analog/bias_generator/bias_generator.sym} 1620 -1480 0 0 {name=x6}
C {lab_pin.sym} 1000 -1670 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1620 -1360 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {capa.sym} 1490 -1540 0 0 {name=C2
m=1
value=2.1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1490 -1580 0 1 {name=p10 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1540 -1450 0 0 {name=p11 sig_type=std_logic lab=STARTUP}
C {lab_pin.sym} 1930 -1510 2 0 {name=p13 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 1930 -1450 2 0 {name=p14 sig_type=std_logic lab=VON[4..1]}
C {devices/code_shown.sym} -860 -1050 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice SS
*.lib $::180MCU_MODELS/sm141064.ngspice FF
*.lib $::180MCU_MODELS/sm141064.ngspice SF
*.lib $::180MCU_MODELS/sm141064.ngspice FS
"}
C {vsource.sym} 690 -1750 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 690 -1640 0 0 {name=l1 lab=0}
C {vsource.sym} 690 -1680 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 690 -1860 0 0 {name=p36 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 690 -1720 0 0 {name=p37 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1720 -1440 0 0 {name=p38 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1740 -1510 0 0 {name=p39 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1490 -1490 0 1 {name=p42 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 1250 -1960 0 1 {name=p43 sig_type=std_logic lab=AVDD}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1250 -1820 0 0 {name=x2}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1250 -1510 2 1 {name=x7}
C {lab_wire.sym} 1050 -1840 0 0 {name=p47 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1050 -1800 0 0 {name=p48 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1050 -1780 0 0 {name=p49 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1050 -1820 0 0 {name=p50 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1050 -1490 2 1 {name=p51 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1050 -1530 2 1 {name=p52 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1050 -1550 2 1 {name=p53 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1050 -1510 2 1 {name=p54 sig_type=std_logic lab=UPb}
C {lab_pin.sym} 1250 -1370 2 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1390 -1710 0 1 {name=p46 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1390 -1690 2 0 {name=p55 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1390 -1670 2 0 {name=p56 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1390 -1650 2 0 {name=p57 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1390 -1630 2 0 {name=p58 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1100 -1690 2 1 {name=p59 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1100 -1670 2 1 {name=p60 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1100 -1650 2 1 {name=p61 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1100 -1630 2 1 {name=p62 sig_type=std_logic lab=S4}
C {devices/launcher.sym} 1230 -950 0 0 {name=h1
descr="load tran 2" 
tclcommand="xschem raw_read $netlist_dir/tb2.raw tran"
}
C {capa.sym} 1720 -1400 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1900 -1850 3 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1950 -1850 2 0 {name=p45 sig_type=std_logic lab=AVSS}
C {libs/core_analog/programmable_ffz/programmable_ffz.sym} 1670 -1830 0 0 {name=x12}
C {lab_pin.sym} 1810 -1710 0 1 {name=p63 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1810 -1690 2 0 {name=p64 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1810 -1670 2 0 {name=p65 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1810 -1650 2 0 {name=p66 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1810 -1630 2 0 {name=p67 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1520 -1690 2 1 {name=p68 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1520 -1670 2 1 {name=p69 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1520 -1650 2 1 {name=p70 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1520 -1630 2 1 {name=p71 sig_type=std_logic lab=S4}
C {lab_pin.sym} 1850 -1820 0 1 {name=p72 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1670 -1960 0 1 {name=p73 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1490 -1830 0 0 {name=p74 sig_type=std_logic lab=VBN}
C {libs/core_analog/d2s_top/d2s_top.sym} 2140 -1480 0 0 {name=x8}
C {lab_pin.sym} 2140 -1560 0 1 {name=p15 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2140 -1380 0 1 {name=p16 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2270 -1510 0 1 {name=p186 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 2270 -1490 0 1 {name=p187 sig_type=std_logic lab=CK90}
C {lab_pin.sym} 2270 -1470 0 1 {name=p188 sig_type=std_logic lab=CK180}
C {lab_pin.sym} 2270 -1450 0 1 {name=p189 sig_type=std_logic lab=CK270}
C {lab_pin.sym} 2270 -1430 0 1 {name=p190 sig_type=std_logic lab=DUMMY[1..4]}
C {capa.sym} 2370 -1230 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2370 -1260 0 1 {name=p17 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 2370 -1200 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {capa.sym} 2460 -1230 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2460 -1200 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {capa.sym} 2550 -1230 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2550 -1200 0 1 {name=p20 sig_type=std_logic lab=AVSS}
C {capa.sym} 2640 -1230 0 0 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2640 -1200 0 1 {name=p21 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2460 -1260 0 1 {name=p22 sig_type=std_logic lab=CK90}
C {lab_pin.sym} 2550 -1260 0 1 {name=p23 sig_type=std_logic lab=CK180}
C {lab_pin.sym} 2640 -1260 0 1 {name=p24 sig_type=std_logic lab=CK270}
C {lab_pin.sym} 1860 -1580 0 1 {name=p12 sig_type=std_logic lab=AVDD}
C {devices/launcher.sym} 1230 -920 0 0 {name=h3
descr="load tran 3" 
tclcommand="xschem raw_read $netlist_dir/tb3.raw tran"
}
C {devices/launcher.sym} 1230 -890 0 0 {name=h4
descr="load tran 4" 
tclcommand="xschem raw_read $netlist_dir/tb4.raw tran"
}
C {devices/launcher.sym} 1230 -860 0 0 {name=h5
descr="load tran 5" 
tclcommand="xschem raw_read $netlist_dir/tb5.raw tran"
}
C {lab_wire.sym} 950 -1550 0 1 {name=p28 sig_type=std_logic lab=UP}
C {lab_wire.sym} 950 -1510 0 1 {name=p29 sig_type=std_logic lab=DN}
C {lab_wire.sym} 950 -1530 0 1 {name=p30 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 950 -1490 0 1 {name=p31 sig_type=std_logic lab=DNb}
C {libs/model_pll/pfd_model.sym} 800 -1520 0 0 {name=x10}
C {lab_wire.sym} 690 -1490 0 0 {name=p5 sig_type=std_logic lab=div_out
}
C {lab_wire.sym} 1330 -1260 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {ammeter.sym} 690 -1810 2 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -825 -870 0 0 {name=tb2 only_toplevel=false value="
==============Fref, N======================
.param f_ref=1MEG R_div=2 N_div=35

.ic v(VCTRL)=1.5 v(vbp)=1.5
==============Frequency Calculation========
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15 itl4=50 gmin=1e-12
.options method=gear

.param d1=0 d2=3.3 d3=3.3 d4=0
.param d1b=3.3 d2b=0 d3b=0 d4b=3.3

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control
set wr_singlescale
set wr_vecnames

save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)

tran 100p 15u

linearize v(CK0) v(CK90) v(CK180) v(CK270) v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(up) v(dn) i(vmeas)

meas tran I_vdd AVG i(vmeas) FROM=1u TO=15u

remzerovec

write tb2.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb2.txt tran.all

.endc
"}
