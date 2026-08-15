v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 300 -1020 1100 -620 {flags=graph
y1=-5.9e-05
y2=3.4
ypos1=-5.9e-05
ypos2=3.4
divy=5
subdivy=1
unity=1
x1=2.401711e-07
x2=6.004591e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="CK270
CK180
CK90
CK0"
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
ypos1=0
ypos2=3.3
divy=5
subdivy=1
unity=1
x1=2.401711e-07
x2=6.004591e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 7 8 9"
node="UP
DN
\\"UP-DN; UP DN -\\"
REFERENCE
DIV_OUT
startup"
digital=1}
B 2 300 -220 1100 180 {flags=graph
y1=0.38
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.401711e-07
x2=6.004591e-07
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
x1=2.401711e-07
x2=6.004591e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 7"
node="vop3
vop1
von3
von1"
hcursor2_y=1.101568}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -840 -1340 0 0 0.4 0.4 {}
N 740 -1310 1430 -1310 {lab=div_out}
N 1550 -1560 1610 -1560 {lab=VCTRL}
N 1750 -1500 1820 -1500 {lab=VBN}
N 1780 -1500 1780 -1480 {lab=VBN}
N 1550 -1630 1550 -1620 {lab=AVDD}
N 1920 -1450 1920 -1410 {lab=AVSS}
N 1680 -1410 1920 -1410 {lab=AVSS}
N 1680 -1450 1680 -1410 {lab=AVSS}
N 1920 -1630 1920 -1610 {lab=AVDD}
N 1680 -1630 1680 -1610 {lab=AVDD}
N 1600 -1500 1610 -1500 {lab=STARTUP}
N 750 -1720 750 -1710 {lab=AVSS}
N 750 -1650 750 -1640 {lab=0}
N 750 -1820 750 -1780 {lab=AVDD}
N 1680 -1630 1920 -1630 {lab=AVDD}
N 1160 -1740 1210 -1740 {lab=S1}
N 1160 -1720 1230 -1720 {lab=S2}
N 1160 -1700 1250 -1700 {lab=S3}
N 1160 -1680 1270 -1680 {lab=S4}
N 1400 -1760 1450 -1760 {lab=AVSS}
N 1360 -1680 1450 -1680 {lab=S4b}
N 1340 -1700 1450 -1700 {lab=S3b}
N 1320 -1720 1450 -1720 {lab=S2b}
N 1300 -1740 1450 -1740 {lab=S1b}
N 1120 -1930 1140 -1930 {lab=VBN}
N 1120 -1500 1140 -1500 {lab=VBN}
N 1110 -1830 1140 -1830 {lab=DNb}
N 1110 -1870 1140 -1870 {lab=UPb}
N 1110 -1850 1140 -1850 {lab=DN}
N 1110 -1890 1140 -1890 {lab=UP}
N 1110 -1600 1140 -1600 {lab=DNb}
N 1110 -1560 1140 -1560 {lab=UPb}
N 1110 -1580 1140 -1580 {lab=DN}
N 1110 -1540 1140 -1540 {lab=UP}
N 1310 -2010 1310 -1990 {lab=AVDD}
N 1310 -1440 1310 -1420 {lab=AVDD}
N 1400 -1760 1400 -1670 {lab=AVSS}
N 1060 -1930 1120 -1930 {lab=VBN}
N 1060 -1930 1060 -1500 {lab=VBN}
N 1060 -1500 1120 -1500 {lab=VBN}
N 1910 -1950 1910 -1870 {lab=VBP}
N 1300 -1740 1300 -1670 {lab=S1b}
N 1320 -1720 1320 -1670 {lab=S2b}
N 1340 -1700 1340 -1670 {lab=S3b}
N 1360 -1680 1360 -1670 {lab=S4b}
N 1210 -1740 1210 -1670 {lab=S1}
N 1230 -1720 1230 -1670 {lab=S2}
N 1250 -1700 1250 -1670 {lab=S3}
N 1270 -1680 1270 -1670 {lab=S4}
N 1270 -1760 1270 -1680 {lab=S4}
N 1250 -1760 1250 -1700 {lab=S3}
N 1230 -1760 1230 -1720 {lab=S2}
N 1210 -1760 1210 -1740 {lab=S1}
N 1300 -1760 1300 -1740 {lab=S1b}
N 1320 -1760 1320 -1720 {lab=S2b}
N 1340 -1760 1340 -1700 {lab=S3b}
N 1360 -1760 1360 -1680 {lab=S4b}
N 1780 -1420 1780 -1410 {lab=AVSS}
N 1910 -1900 1930 -1900 {lab=VBP}
N 1990 -1900 2010 -1900 {lab=AVSS}
N 1580 -1740 1630 -1740 {lab=S1}
N 1580 -1720 1650 -1720 {lab=S2}
N 1580 -1700 1670 -1700 {lab=S3}
N 1580 -1680 1690 -1680 {lab=S4}
N 1820 -1760 1870 -1760 {lab=AVSS}
N 1780 -1680 1870 -1680 {lab=S4b}
N 1760 -1700 1870 -1700 {lab=S3b}
N 1740 -1720 1870 -1720 {lab=S2b}
N 1720 -1740 1870 -1740 {lab=S1b}
N 1820 -1760 1820 -1670 {lab=AVSS}
N 1720 -1740 1720 -1670 {lab=S1b}
N 1740 -1720 1740 -1670 {lab=S2b}
N 1760 -1700 1760 -1670 {lab=S3b}
N 1780 -1680 1780 -1670 {lab=S4b}
N 1630 -1740 1630 -1670 {lab=S1}
N 1650 -1720 1650 -1670 {lab=S2}
N 1670 -1700 1670 -1670 {lab=S3}
N 1690 -1680 1690 -1670 {lab=S4}
N 1690 -1760 1690 -1680 {lab=S4}
N 1670 -1760 1670 -1700 {lab=S3}
N 1650 -1760 1650 -1720 {lab=S2}
N 1630 -1760 1630 -1740 {lab=S1}
N 1720 -1760 1720 -1740 {lab=S1b}
N 1740 -1760 1740 -1720 {lab=S2b}
N 1760 -1760 1760 -1700 {lab=S3b}
N 1780 -1760 1780 -1680 {lab=S4b}
N 1540 -1560 1550 -1560 {lab=VCTRL}
N 1530 -1560 1540 -1560 {lab=VCTRL}
N 1550 -1560 1550 -1540 {lab=VCTRL}
N 1800 -1560 1820 -1560 {lab=VBP}
N 1890 -1870 1910 -1870 {lab=VBP}
N 1480 -1880 1480 -1870 {lab=VBP}
N 1470 -1870 1480 -1870 {lab=VBP}
N 1910 -2030 1910 -2010 {lab=VBP}
N 1480 -2030 1910 -2030 {lab=VBP}
N 1480 -2030 1480 -1880 {lab=VBP}
N 1730 -2010 1730 -1990 {lab=AVDD}
N 1550 -1880 1560 -1880 {lab=VBN}
N 1990 -1560 2110 -1560 {lab=#net1}
N 1990 -1500 2110 -1500 {lab=#net2}
N 1810 -1430 2160 -1430 {lab=VBN}
N 1810 -1500 1810 -1430 {lab=VBN}
N 2310 -1560 2310 -1380 {lab=CK0}
N 2280 -1560 2310 -1560 {lab=CK0}
N 2280 -1540 2330 -1540 {lab=CK90}
N 2310 -1560 2330 -1560 {lab=CK0}
N 2280 -1520 2330 -1520 {lab=CK180}
N 2280 -1500 2330 -1500 {lab=CK270}
N 2280 -1480 2330 -1480 {lab=DUMMY[1..4]}
N 2310 -1380 2310 -1310 {lab=CK0}
N 1730 -1310 2310 -1310 {lab=CK0}
N 800 -1580 850 -1580 {lab=Ub}
N 800 -1520 850 -1520 {lab=Db}
N 690 -1610 930 -1610 {lab=AVDD}
N 690 -1490 930 -1490 {lab=AVSS}
N 570 -1310 640 -1310 {lab=div_outb}
N 570 -1520 570 -1310 {lab=div_outb}
N 570 -1520 580 -1520 {lab=div_outb}
N 1470 -1560 1530 -1560 {lab=VCTRL}
N 530 -1580 580 -1580 {lab=refb}
N 400 -1580 430 -1580 {lab=reference}
N 1910 -2010 1910 -1950 {lab=VBP}
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
C {devices/launcher.sym} 1230 -950 0 0 {name=h1
descr="load tran 2" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255MEG.raw tran"
}
C {devices/launcher.sym} 1230 -890 0 0 {name=h4
descr="load tran 4" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255kHz.raw tran"
}
C {devices/launcher.sym} 1230 -920 0 0 {name=h3
descr="load tran 3" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_PFD_model_R2_N2_50kHz.raw tran"
}
C {devices/launcher.sym} 1230 -860 0 0 {name=h5
descr="load tran 5" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_PFD_model_R2_N35_350MHz.raw tran"
}
C {devices/code_shown.sym} -860 -860 0 0 {name=Simulation2 only_toplevel=false value="
.param f_ref=175MEG N_div=2
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)
*vs startup 0 pulse(0 1 10n 10n 10n 20n 100m)
*vbp vbp 0 1.5
*vbn vbn 0 1

*.ic v(VCTRL)=2.6 v(vbp)=2.6
.ic v(VCTRL)=1 v(vbp)=1

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
.options method=gear

*.param d1=0 d2=0 d3=0 d4=0
*.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=3.3

.param d1=3.3 d2=3.3 d3=3.3 d4=3.3
.param d1b=0 d2b=0 d3b=0 d4b=0

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

*save all
save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(refb) v(div_outb) v(div_out)
+v(CK0) v(CK90) v(CK180) v(CK270) v(up) v(dn)
+v(s1) v(s2) v(s3) v(s4) v(startup)

*OP
*show all

*tran 100n 20m
tran 0.1n 20u

remzerovec

write tb_PLL_CP_VCO_PFD_model_N2_350MEG.raw
*write tb_PLL_CP_VCO_PFD_model_N2_350MEG_test.raw

wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb_PLL_CP_VCO_PFD_model_N2_350MEG.txt tran.all


.endc
"}
C {code_shown.sym} -850 -1660 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/designs/synchronos-chipathon-2026/designs/libs/core_analog/lut/cp_lut.spice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
"}
C {devices/launcher.sym} 1230 -1010 0 0 {name=h6
descr="load tran 1" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_PFD_model_N2_350MEG.raw tran"
}
C {lab_wire.sym} 1430 -1310 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {lab_wire.sym} 400 -1580 0 0 {name=p4 sig_type=std_logic lab=reference}
C {libs/model_pll/freq_divider.sym} 1580 -1310 0 1 {name=x4 divide_factor=\{N_div\}}
C {libs/core_analog/vco/vco.sym} 1920 -1530 0 0 {name=x3}
C {libs/core_analog/bias_generator/bias_generator.sym} 1680 -1530 0 0 {name=x6}
C {lab_pin.sym} 1060 -1720 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1680 -1410 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {capa.sym} 1550 -1590 0 0 {name=C2
m=1
value=2.1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1550 -1630 0 1 {name=p10 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1600 -1500 0 0 {name=p11 sig_type=std_logic lab=STARTUP}
C {vsource.sym} 750 -1750 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 750 -1640 0 0 {name=l1 lab=0}
C {vsource.sym} 750 -1680 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 750 -1820 0 0 {name=p36 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 750 -1720 0 0 {name=p37 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1780 -1490 0 0 {name=p38 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1800 -1560 0 0 {name=p39 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1550 -1540 0 1 {name=p42 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 1310 -2010 0 1 {name=p43 sig_type=std_logic lab=AVDD}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1310 -1870 0 0 {name=x2}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1310 -1560 2 1 {name=x7}
C {lab_wire.sym} 1110 -1890 0 0 {name=p47 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1110 -1850 0 0 {name=p48 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1110 -1830 0 0 {name=p49 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1110 -1870 0 0 {name=p50 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1110 -1540 2 1 {name=p51 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1110 -1580 2 1 {name=p52 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1110 -1600 2 1 {name=p53 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1110 -1560 2 1 {name=p54 sig_type=std_logic lab=UPb}
C {lab_pin.sym} 1310 -1420 2 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1450 -1760 0 1 {name=p46 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1450 -1740 2 0 {name=p55 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1450 -1720 2 0 {name=p56 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1450 -1700 2 0 {name=p57 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1450 -1680 2 0 {name=p58 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1160 -1740 2 1 {name=p59 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1160 -1720 2 1 {name=p60 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1160 -1700 2 1 {name=p61 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1160 -1680 2 1 {name=p62 sig_type=std_logic lab=S4}
C {lab_pin.sym} 2010 -1900 2 0 {name=p45 sig_type=std_logic lab=AVSS}
C {libs/core_analog/programmable_ffz/programmable_ffz.sym} 1730 -1880 0 0 {name=x12}
C {lab_pin.sym} 1870 -1760 0 1 {name=p63 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1870 -1740 2 0 {name=p64 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1870 -1720 2 0 {name=p65 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1870 -1700 2 0 {name=p66 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1870 -1680 2 0 {name=p67 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1580 -1740 2 1 {name=p68 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1580 -1720 2 1 {name=p69 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1580 -1700 2 1 {name=p70 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1580 -1680 2 1 {name=p71 sig_type=std_logic lab=S4}
C {lab_pin.sym} 1910 -1870 0 1 {name=p72 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1730 -2010 0 1 {name=p73 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1550 -1880 0 0 {name=p74 sig_type=std_logic lab=VBN}
C {libs/core_analog/d2s_top/d2s_top.sym} 2200 -1530 0 0 {name=x8}
C {lab_pin.sym} 2200 -1610 0 1 {name=p15 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2200 -1430 0 1 {name=p16 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2330 -1560 0 1 {name=p186 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 2330 -1540 0 1 {name=p187 sig_type=std_logic lab=CK90}
C {lab_pin.sym} 2330 -1520 0 1 {name=p188 sig_type=std_logic lab=CK180}
C {lab_pin.sym} 2330 -1500 0 1 {name=p189 sig_type=std_logic lab=CK270}
C {lab_pin.sym} 2330 -1480 0 1 {name=p190 sig_type=std_logic lab=DUMMY[1..4]}
C {capa.sym} 2430 -1280 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2430 -1310 0 1 {name=p17 sig_type=std_logic lab=CK0}
C {lab_pin.sym} 2430 -1250 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {capa.sym} 2520 -1280 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2520 -1250 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {capa.sym} 2610 -1280 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2610 -1250 0 1 {name=p20 sig_type=std_logic lab=AVSS}
C {capa.sym} 2700 -1280 0 0 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2700 -1250 0 1 {name=p21 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2520 -1310 0 1 {name=p22 sig_type=std_logic lab=CK90}
C {lab_pin.sym} 2610 -1310 0 1 {name=p23 sig_type=std_logic lab=CK180}
C {lab_pin.sym} 2700 -1310 0 1 {name=p24 sig_type=std_logic lab=CK270}
C {libs/core_analog/pfd/pfd_11gate.sym} 690 -1550 0 0 {name=x5}
C {lab_wire.sym} 850 -1580 0 0 {name=p12 sig_type=std_logic lab=Ub}
C {lab_wire.sym} 850 -1520 0 0 {name=p25 sig_type=std_logic lab=Db}
C {libs/core_analog/pfd_s2d/pfd_s2d.sym} 930 -1550 0 0 {name=x9}
C {lab_wire.sym} 1010 -1580 0 1 {name=p26 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1010 -1540 0 1 {name=p27 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1010 -1560 0 1 {name=p28 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1010 -1520 0 1 {name=p29 sig_type=std_logic lab=DNb}
C {lab_pin.sym} 930 -1610 2 0 {name=p85 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 930 -1490 0 1 {name=p86 sig_type=std_logic lab=AVSS}
C {libs/core_analog/inv/inv.sym} 470 -1580 0 0 {name=x1}
C {lab_pin.sym} 450 -1620 2 0 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 450 -1540 0 1 {name=p6 sig_type=std_logic lab=AVSS}
C {libs/core_analog/inv/inv.sym} 700 -1310 0 1 {name=x10}
C {lab_pin.sym} 720 -1350 2 1 {name=p7 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 720 -1270 0 0 {name=p8 sig_type=std_logic lab=AVSS}
C {symbols/cap_mim_2f0fF.sym} 1960 -1900 3 1 {name=C8
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=50}
C {symbols/cap_mim_2f0fF.sym} 1780 -1450 2 1 {name=C9
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=50}
C {devices/code_shown.sym} -840 -1510 0 0 {name=MODELS2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {lab_pin.sym} 1920 -1630 0 1 {name=p30 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 570 -1430 0 0 {name=p13 sig_type=std_logic lab=div_outb
}
C {lab_wire.sym} 540 -1580 0 1 {name=p14 sig_type=std_logic lab=refb
}
