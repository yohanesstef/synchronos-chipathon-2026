v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 510 -980 1310 -580 {flags=graph
y1=-0.04
y2=3.4
ypos1=-0.26979181
ypos2=3.3151858
divy=5
subdivy=1
unity=1
x1=0.0045218262
x2=0.024521826
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="phase4
phase3
phase2
phase1"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
digital=1}
B 2 510 -580 1310 -180 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=3.3
divy=5
subdivy=1
unity=1
x1=0.0045218262
x2=0.024521826
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5 6 7 18"
node="UP
DN
REFERENCE
PRE_DIV
DIV_OUT"
digital=1}
B 2 1310 -580 2110 -180 {flags=graph
y1=0.42
y2=2.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0045218262
x2=0.024521826
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
hcursor1_y=2.5790364}
B 2 1310 -980 2110 -580 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0045218262
x2=0.024521826
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
hcursor1_y=2.7950287
hcursor2_y=1.101568}
P 4 1 1070 -1400 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -620 -1550 0 0 0.4 0.4 {}
N 500 -1350 500 -1320 {lab=GND}
N 500 -1430 500 -1410 {lab=reference}
N 900 -1380 930 -1380 {lab=div_out}
N 900 -1380 900 -1200 {lab=div_out}
N 1150 -1380 1180 -1380 {lab=DNb}
N 1150 -1420 1180 -1420 {lab=UPb}
N 500 -1440 500 -1430 {lab=reference}
N 500 -1440 560 -1440 {lab=reference}
N 860 -1440 930 -1440 {lab=pre_div}
N 900 -1200 1590 -1200 {lab=div_out}
N 1710 -1450 1770 -1450 {lab=VCTRL}
N 1910 -1390 1980 -1390 {lab=VBN}
N 1940 -1390 1940 -1370 {lab=VBN}
N 1710 -1520 1710 -1510 {lab=AVDD}
N 2080 -1340 2080 -1300 {lab=AVSS}
N 1840 -1300 2080 -1300 {lab=AVSS}
N 1840 -1340 1840 -1300 {lab=AVSS}
N 2080 -1520 2080 -1500 {lab=AVDD_VCO}
N 1840 -1520 1840 -1500 {lab=AVDD_VCO}
N 1760 -1390 1770 -1390 {lab=STARTUP}
N 2420 -1430 2420 -1380 {lab=phase[1..4]}
N 2420 -1490 2420 -1460 {lab=AVDD}
N 2420 -1350 2420 -1320 {lab=AVSS}
N 2360 -1350 2380 -1350 {lab=OUT[1..4]}
N 2360 -1460 2360 -1350 {lab=OUT[1..4]}
N 2360 -1460 2380 -1460 {lab=OUT[1..4]}
N 2600 -1850 2610 -1850 {lab=AVDD}
N 2610 -1850 2610 -1640 {lab=AVDD}
N 2600 -1640 2610 -1640 {lab=AVDD}
N 2600 -1710 2610 -1710 {lab=AVDD}
N 2600 -1780 2610 -1780 {lab=AVDD}
N 2600 -1760 2620 -1760 {lab=AVSS}
N 2620 -1830 2620 -1760 {lab=AVSS}
N 2600 -1830 2620 -1830 {lab=AVSS}
N 2620 -1760 2620 -1620 {lab=AVSS}
N 2600 -1620 2620 -1620 {lab=AVSS}
N 2600 -1690 2620 -1690 {lab=AVSS}
N 2420 -1510 2420 -1490 {lab=AVDD}
N 2420 -1320 2420 -1300 {lab=AVSS}
N 2600 -1810 2650 -1810 {lab=OUT1}
N 2600 -1740 2650 -1740 {lab=OUT2}
N 2600 -1670 2650 -1670 {lab=OUT3}
N 2600 -1600 2650 -1600 {lab=OUT4}
N 2280 -1810 2300 -1810 {lab=VBN}
N 2280 -1810 2280 -1600 {lab=VBN}
N 2280 -1600 2300 -1600 {lab=VBN}
N 2280 -1670 2300 -1670 {lab=VBN}
N 2280 -1740 2300 -1740 {lab=VBN}
N 910 -1610 910 -1600 {lab=AVSS}
N 910 -1540 910 -1530 {lab=0}
N 910 -1710 910 -1670 {lab=AVDD}
N 910 -1610 1030 -1610 {lab=AVSS}
N 1000 -1710 1000 -1670 {lab=AVDD_VCO}
N 1840 -1520 2080 -1520 {lab=AVDD_VCO}
N 1320 -1630 1370 -1630 {lab=S1}
N 1320 -1610 1390 -1610 {lab=S2}
N 1320 -1590 1410 -1590 {lab=S3}
N 1320 -1570 1430 -1570 {lab=S4}
N 1560 -1650 1610 -1650 {lab=AVSS}
N 1520 -1570 1610 -1570 {lab=S4b}
N 1500 -1590 1610 -1590 {lab=S3b}
N 1480 -1610 1610 -1610 {lab=S2b}
N 1460 -1630 1610 -1630 {lab=S1b}
N 1280 -1820 1300 -1820 {lab=VBN}
N 1280 -1390 1300 -1390 {lab=VBN}
N 1150 -1400 1180 -1400 {lab=DN}
N 1150 -1440 1180 -1440 {lab=UP}
N 1270 -1720 1300 -1720 {lab=DNb}
N 1270 -1760 1300 -1760 {lab=UPb}
N 1270 -1740 1300 -1740 {lab=DN}
N 1270 -1780 1300 -1780 {lab=UP}
N 1270 -1490 1300 -1490 {lab=DNb}
N 1270 -1450 1300 -1450 {lab=UPb}
N 1270 -1470 1300 -1470 {lab=DN}
N 1270 -1430 1300 -1430 {lab=UP}
N 1470 -1900 1470 -1880 {lab=AVDD}
N 1470 -1330 1470 -1310 {lab=AVDD}
N 2240 -1330 2240 -1310 {lab=phase[1..4]}
N 2240 -1250 2240 -1230 {lab=AVSS}
N 1560 -1650 1560 -1560 {lab=AVSS}
N 1220 -1820 1280 -1820 {lab=VBN}
N 1220 -1820 1220 -1390 {lab=VBN}
N 1220 -1390 1280 -1390 {lab=VBN}
N 2070 -1840 2070 -1760 {lab=VBP}
N 1460 -1630 1460 -1560 {lab=S1b}
N 1480 -1610 1480 -1560 {lab=S2b}
N 1500 -1590 1500 -1560 {lab=S3b}
N 1520 -1570 1520 -1560 {lab=S4b}
N 1370 -1630 1370 -1560 {lab=S1}
N 1390 -1610 1390 -1560 {lab=S2}
N 1410 -1590 1410 -1560 {lab=S3}
N 1430 -1570 1430 -1560 {lab=S4}
N 1430 -1650 1430 -1570 {lab=S4}
N 1410 -1650 1410 -1590 {lab=S3}
N 1390 -1650 1390 -1610 {lab=S2}
N 1370 -1650 1370 -1630 {lab=S1}
N 1460 -1650 1460 -1630 {lab=S1b}
N 1480 -1650 1480 -1610 {lab=S2b}
N 1500 -1650 1500 -1590 {lab=S3b}
N 1520 -1650 1520 -1570 {lab=S4b}
N 1940 -1310 1940 -1300 {lab=AVSS}
N 2070 -1790 2090 -1790 {lab=VBP}
N 2150 -1790 2170 -1790 {lab=AVSS}
N 1740 -1630 1790 -1630 {lab=S1}
N 1740 -1610 1810 -1610 {lab=S2}
N 1740 -1590 1830 -1590 {lab=S3}
N 1740 -1570 1850 -1570 {lab=S4}
N 1980 -1650 2030 -1650 {lab=AVSS}
N 1940 -1570 2030 -1570 {lab=S4b}
N 1920 -1590 2030 -1590 {lab=S3b}
N 1900 -1610 2030 -1610 {lab=S2b}
N 1880 -1630 2030 -1630 {lab=S1b}
N 1980 -1650 1980 -1560 {lab=AVSS}
N 1880 -1630 1880 -1560 {lab=S1b}
N 1900 -1610 1900 -1560 {lab=S2b}
N 1920 -1590 1920 -1560 {lab=S3b}
N 1940 -1570 1940 -1560 {lab=S4b}
N 1790 -1630 1790 -1560 {lab=S1}
N 1810 -1610 1810 -1560 {lab=S2}
N 1830 -1590 1830 -1560 {lab=S3}
N 1850 -1570 1850 -1560 {lab=S4}
N 1850 -1650 1850 -1570 {lab=S4}
N 1830 -1650 1830 -1590 {lab=S3}
N 1810 -1650 1810 -1610 {lab=S2}
N 1790 -1650 1790 -1630 {lab=S1}
N 1880 -1650 1880 -1630 {lab=S1b}
N 1900 -1650 1900 -1610 {lab=S2b}
N 1920 -1650 1920 -1590 {lab=S3b}
N 1940 -1650 1940 -1570 {lab=S4b}
N 1700 -1450 1710 -1450 {lab=VCTRL}
N 1690 -1450 1700 -1450 {lab=VCTRL}
N 1710 -1450 1710 -1430 {lab=VCTRL}
N 1960 -1450 1980 -1450 {lab=VBP}
N 2050 -1760 2070 -1760 {lab=VBP}
N 1640 -1770 1640 -1760 {lab=#net1}
N 1630 -1760 1640 -1760 {lab=#net1}
N 2070 -1920 2070 -1900 {lab=#net1}
N 1640 -1920 2070 -1920 {lab=#net1}
N 1640 -1920 1640 -1770 {lab=#net1}
N 1890 -1900 1890 -1880 {lab=AVDD}
N 1710 -1770 1720 -1770 {lab=VBN}
C {lab_wire.sym} 1590 -1200 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {sqwsource.sym} 500 -1380 0 0 {name=Vreference vhi=3.3 freq=\{f_ref\}}
C {gnd.sym} 500 -1320 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 500 -1430 0 0 {name=p4 sig_type=std_logic lab=reference}
C {lab_wire.sym} 1150 -1440 0 1 {name=p5 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1150 -1400 0 1 {name=p6 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1150 -1380 0 1 {name=p7 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1150 -1420 0 1 {name=p8 sig_type=std_logic lab=UPb}
C {libs/model_pll/pfd_model.sym} 1000 -1410 0 0 {name=x1}
C {libs/model_pll/freq_divider.sym} 1740 -1200 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 570 -1090 0 0 {name=h2
descr="load tran 1" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N2_350MEG.raw tran"
}
C {libs/model_pll/freq_divider.sym} 710 -1440 0 0 {name=x5 divide_factor=\{R_div\}}
C {lab_wire.sym} 870 -1440 0 1 {name=p12 sig_type=std_logic lab=pre_div}
C {libs/core_analog/vco/vco.sym} 2080 -1420 0 0 {name=x3}
C {libs/core_analog/bias_generator/bias_generator.sym} 1840 -1420 0 0 {name=x6}
C {lab_pin.sym} 1220 -1610 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1840 -1300 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {capa.sym} 1710 -1480 0 0 {name=C2
m=1
value=2.1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1710 -1520 0 1 {name=p10 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1760 -1390 0 0 {name=p11 sig_type=std_logic lab=STARTUP}
C {lab_pin.sym} 2150 -1450 2 0 {name=p13 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 2150 -1390 2 0 {name=p14 sig_type=std_logic lab=VON[4..1]}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2450 -1830 0 0 {name=x8}
C {symbols/pfet_03v3.sym} 2400 -1460 0 0 {name=M1[1..4]
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
C {symbols/nfet_03v3.sym} 2400 -1350 0 0 {name=M2[1..4]
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
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2450 -1760 0 0 {name=x9}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2450 -1690 0 0 {name=x10}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2450 -1620 0 0 {name=x11}
C {lab_pin.sym} 2620 -1620 0 1 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2610 -1850 0 1 {name=p16 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2420 -1510 0 1 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2420 -1300 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2280 -1810 0 0 {name=p20 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2300 -1830 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2300 -1850 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2300 -1710 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2300 -1690 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2300 -1760 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2300 -1780 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2300 -1640 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2300 -1620 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2650 -1810 0 1 {name=p29 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 2650 -1740 0 1 {name=p30 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 2650 -1670 0 1 {name=p31 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 2650 -1600 0 1 {name=p32 sig_type=std_logic lab=OUT4}
C {lab_pin.sym} 2240 -1330 0 1 {name=p33 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2420 -1410 0 1 {name=p34 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2360 -1410 0 0 {name=p35 sig_type=std_logic lab=OUT[1..4]}
C {devices/code_shown.sym} -235 -1090 0 0 {name=Simulation1 only_toplevel=false value="
*.param f_ref=2MEG R_div=2 N_div=255
.param f_ref=2e3 R_div=2 N_div=255

.ic v(VCTRL)=2.6 v(vbp)=2.6
*.ic v(VCTRL)=1 v(vbp)=1

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-2 cshunt=1e-15
.options method=gear

.param d1=0 d2=0 d3=0 d4=0
.param d1b=3.3 d2b=3.3 d3b=3.3 d4b=3.3

*.param d1=3.3 d2=3.3 d3=3.3 d4=3.3
*.param d1b=0 d2b=0 d3b=0 d4b=0

VS1 S1 0 d1
VS2 S2 0 d2
VS3 S3 0 d3
VS4 S4 0 d4

VS1b S1b 0 d1b
VS2b S2b 0 d2b
VS3b S3b 0 d3b
VS4b S4b 0 d4b

.control

* save all
save v(VCTRL) v(vbp) v(vbn) v(vop1) v(von1) v(vop3) v(von3)
+v(reference) v(div_out) v(pre_div) v(phase1)
+v(phase2) v(phase3) v(phase4) v(up) v(dn)

*OP
*show all

tran 10n 40m
*tran 0.1n 100u

remzerovec

*tran 1
*write tb_PLL_CP_VCO_model_R2_N2_350MEG.raw
*tran 2
*write tb_PLL_CP_VCO_model_R2_N255_255MEG.raw 

*tran 3
*write tb_PLL_CP_VCO_model_R2_N2_50kHz.raw 
*tran 4
write tb_PLL_CP_VCO_model_R2_N255_255kHz.raw 

*tran 5

*tran 6

*tran 8

*tran 10

.endc
"}
C {devices/code_shown.sym} -250 -1260 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice SS
*.lib $::180MCU_MODELS/sm141064.ngspice FF
*.lib $::180MCU_MODELS/sm141064.ngspice SF
*.lib $::180MCU_MODELS/sm141064.ngspice FS
"}
C {vsource.sym} 910 -1640 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 910 -1530 0 0 {name=l1 lab=0}
C {vsource.sym} 910 -1570 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 910 -1710 0 0 {name=p36 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 910 -1610 0 0 {name=p37 sig_type=std_logic lab=AVSS}
C {vsource.sym} 1000 -1640 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_pin.sym} 1000 -1710 0 1 {name=p40 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 2080 -1520 0 1 {name=p41 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 1940 -1380 0 0 {name=p38 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1960 -1450 0 0 {name=p39 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1710 -1430 0 1 {name=p42 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 1470 -1900 0 1 {name=p43 sig_type=std_logic lab=AVDD}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1470 -1760 0 0 {name=x2}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 1470 -1450 2 1 {name=x7}
C {lab_wire.sym} 1270 -1780 0 0 {name=p47 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1270 -1740 0 0 {name=p48 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1270 -1720 0 0 {name=p49 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1270 -1760 0 0 {name=p50 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1270 -1430 2 1 {name=p51 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1270 -1470 2 1 {name=p52 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1270 -1490 2 1 {name=p53 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1270 -1450 2 1 {name=p54 sig_type=std_logic lab=UPb}
C {lab_pin.sym} 1470 -1310 2 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1890 -1200 0 1 {name=p44 sig_type=std_logic lab=phase1}
C {capa.sym} 2240 -1280 0 0 {name=CN[4..1]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2240 -1230 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1610 -1650 0 1 {name=p46 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1610 -1630 2 0 {name=p55 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1610 -1610 2 0 {name=p56 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1610 -1590 2 0 {name=p57 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1610 -1570 2 0 {name=p58 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1320 -1630 2 1 {name=p59 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1320 -1610 2 1 {name=p60 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1320 -1590 2 1 {name=p61 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1320 -1570 2 1 {name=p62 sig_type=std_logic lab=S4}
C {ammeter.sym} 2070 -1870 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 1660 -1450 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/launcher.sym} 570 -1060 0 0 {name=h1
descr="load tran 2" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255MEG.raw tran"
}
C {capa.sym} 1940 -1340 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2120 -1790 3 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2170 -1790 2 0 {name=p45 sig_type=std_logic lab=AVSS}
C {devices/launcher.sym} 570 -1000 0 0 {name=h4
descr="load tran 4" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255kHz.raw tran"
}
C {devices/launcher.sym} 570 -1030 0 0 {name=h3
descr="load tran 3" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N2_50kHz.raw tran"
}
C {libs/core_analog/programmable_ffz/programmable_ffz.sym} 1890 -1770 0 0 {name=x12}
C {lab_pin.sym} 2030 -1650 0 1 {name=p63 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2030 -1630 2 0 {name=p64 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 2030 -1610 2 0 {name=p65 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 2030 -1590 2 0 {name=p66 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 2030 -1570 2 0 {name=p67 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1740 -1630 2 1 {name=p68 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1740 -1610 2 1 {name=p69 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1740 -1590 2 1 {name=p70 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1740 -1570 2 1 {name=p71 sig_type=std_logic lab=S4}
C {lab_pin.sym} 2070 -1760 0 1 {name=p72 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1890 -1900 0 1 {name=p73 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1710 -1770 0 0 {name=p74 sig_type=std_logic lab=VBN}
