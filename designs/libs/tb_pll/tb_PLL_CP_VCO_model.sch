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
ypos1=0.22932973
ypos2=2.4439645
divy=5
subdivy=1
unity=1
x1=2.7383091e-05
x2=7.8583091e-05
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
hilight_wave=-1800844864
digital=1
legend=1}
B 2 300 -620 1100 -220 {flags=graph
y1=0
y2=3.3
ypos1=-0.165
ypos2=3.135
divy=5
subdivy=1
unity=1
x1=2.7383091e-05
x2=7.8583091e-05
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
REFERENCE
PRE_DIV
DIV_OUT"
digital=1}
B 2 300 -220 1100 180 {flags=graph
y1=0.82
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7383091e-05
x2=7.8583091e-05
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
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7383091e-05
x2=7.8583091e-05
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
P 4 1 850 -1460 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -840 -1340 0 0 0.4 0.4 {}
N 280 -1410 280 -1380 {lab=GND}
N 280 -1490 280 -1470 {lab=reference}
N 680 -1440 710 -1440 {lab=div_out}
N 680 -1440 680 -1260 {lab=div_out}
N 930 -1440 960 -1440 {lab=DNb}
N 930 -1480 960 -1480 {lab=UPb}
N 280 -1500 280 -1490 {lab=reference}
N 280 -1500 340 -1500 {lab=reference}
N 640 -1500 710 -1500 {lab=pre_div}
N 680 -1260 1370 -1260 {lab=div_out}
N 1490 -1510 1550 -1510 {lab=VCTRL}
N 1690 -1450 1760 -1450 {lab=VBN}
N 1720 -1450 1720 -1430 {lab=VBN}
N 1490 -1580 1490 -1570 {lab=AVDD}
N 1860 -1400 1860 -1360 {lab=AVSS}
N 1620 -1360 1860 -1360 {lab=AVSS}
N 1620 -1400 1620 -1360 {lab=AVSS}
N 1860 -1580 1860 -1560 {lab=AVDD_VCO}
N 1620 -1580 1620 -1560 {lab=AVDD_VCO}
N 1540 -1450 1550 -1450 {lab=STARTUP}
N 2200 -1490 2200 -1440 {lab=phase[1..4]}
N 2200 -1550 2200 -1520 {lab=AVDD}
N 2200 -1410 2200 -1380 {lab=AVSS}
N 2140 -1410 2160 -1410 {lab=OUT[1..4]}
N 2140 -1520 2140 -1410 {lab=OUT[1..4]}
N 2140 -1520 2160 -1520 {lab=OUT[1..4]}
N 2380 -1910 2390 -1910 {lab=AVDD}
N 2390 -1910 2390 -1700 {lab=AVDD}
N 2380 -1700 2390 -1700 {lab=AVDD}
N 2380 -1770 2390 -1770 {lab=AVDD}
N 2380 -1840 2390 -1840 {lab=AVDD}
N 2380 -1820 2400 -1820 {lab=AVSS}
N 2400 -1890 2400 -1820 {lab=AVSS}
N 2380 -1890 2400 -1890 {lab=AVSS}
N 2400 -1820 2400 -1680 {lab=AVSS}
N 2380 -1680 2400 -1680 {lab=AVSS}
N 2380 -1750 2400 -1750 {lab=AVSS}
N 2200 -1570 2200 -1550 {lab=AVDD}
N 2200 -1380 2200 -1360 {lab=AVSS}
N 2380 -1870 2430 -1870 {lab=OUT1}
N 2380 -1800 2430 -1800 {lab=OUT2}
N 2380 -1730 2430 -1730 {lab=OUT3}
N 2380 -1660 2430 -1660 {lab=OUT4}
N 2060 -1870 2080 -1870 {lab=VBN}
N 2060 -1870 2060 -1660 {lab=VBN}
N 2060 -1660 2080 -1660 {lab=VBN}
N 2060 -1730 2080 -1730 {lab=VBN}
N 2060 -1800 2080 -1800 {lab=VBN}
N 690 -1670 690 -1660 {lab=AVSS}
N 690 -1600 690 -1590 {lab=0}
N 690 -1770 690 -1730 {lab=AVDD}
N 690 -1670 810 -1670 {lab=AVSS}
N 780 -1770 780 -1730 {lab=AVDD_VCO}
N 1620 -1580 1860 -1580 {lab=AVDD_VCO}
N 1100 -1690 1150 -1690 {lab=S1}
N 1100 -1670 1170 -1670 {lab=S2}
N 1100 -1650 1190 -1650 {lab=S3}
N 1100 -1630 1210 -1630 {lab=S4}
N 1340 -1710 1390 -1710 {lab=AVSS}
N 1300 -1630 1390 -1630 {lab=S4b}
N 1280 -1650 1390 -1650 {lab=S3b}
N 1260 -1670 1390 -1670 {lab=S2b}
N 1240 -1690 1390 -1690 {lab=S1b}
N 1060 -1880 1080 -1880 {lab=VBN}
N 1060 -1450 1080 -1450 {lab=VBN}
N 930 -1460 960 -1460 {lab=DN}
N 930 -1500 960 -1500 {lab=UP}
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
N 2020 -1390 2020 -1370 {lab=phase[1..4]}
N 2020 -1310 2020 -1290 {lab=AVSS}
N 1340 -1710 1340 -1620 {lab=AVSS}
N 1000 -1880 1060 -1880 {lab=VBN}
N 1000 -1880 1000 -1450 {lab=VBN}
N 1000 -1450 1060 -1450 {lab=VBN}
N 1850 -1900 1850 -1820 {lab=VBP}
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
N 1480 -1510 1490 -1510 {lab=VCTRL}
N 1470 -1510 1480 -1510 {lab=VCTRL}
N 1490 -1510 1490 -1490 {lab=VCTRL}
N 1740 -1510 1760 -1510 {lab=VBP}
N 1830 -1820 1850 -1820 {lab=VBP}
N 1420 -1830 1420 -1820 {lab=#net1}
N 1410 -1820 1420 -1820 {lab=#net1}
N 1850 -1980 1850 -1960 {lab=#net1}
N 1420 -1980 1850 -1980 {lab=#net1}
N 1420 -1980 1420 -1830 {lab=#net1}
N 1670 -1960 1670 -1940 {lab=AVDD}
N 1490 -1830 1500 -1830 {lab=VBN}
C {lab_wire.sym} 1370 -1260 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {sqwsource.sym} 280 -1440 0 0 {name=Vreference vhi=3.3 freq=\{f_ref\}}
C {gnd.sym} 280 -1380 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 280 -1490 0 0 {name=p4 sig_type=std_logic lab=reference}
C {lab_wire.sym} 930 -1500 0 1 {name=p5 sig_type=std_logic lab=UP}
C {lab_wire.sym} 930 -1460 0 1 {name=p6 sig_type=std_logic lab=DN}
C {lab_wire.sym} 930 -1440 0 1 {name=p7 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 930 -1480 0 1 {name=p8 sig_type=std_logic lab=UPb}
C {libs/model_pll/pfd_model.sym} 780 -1470 0 0 {name=x1}
C {libs/model_pll/freq_divider.sym} 1520 -1260 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 1230 -980 0 0 {name=h2
descr="load tran 1" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N2_350MEG.raw tran"
}
C {libs/model_pll/freq_divider.sym} 490 -1500 0 0 {name=x5 divide_factor=\{R_div\}}
C {lab_wire.sym} 650 -1500 0 1 {name=p12 sig_type=std_logic lab=pre_div}
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
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2230 -1890 0 0 {name=x8}
C {symbols/pfet_03v3.sym} 2180 -1520 0 0 {name=M1[1..4]
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
C {symbols/nfet_03v3.sym} 2180 -1410 0 0 {name=M2[1..4]
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
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2230 -1820 0 0 {name=x9}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2230 -1750 0 0 {name=x10}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2230 -1680 0 0 {name=x11}
C {lab_pin.sym} 2400 -1680 0 1 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2390 -1910 0 1 {name=p16 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2200 -1570 0 1 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2200 -1360 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2060 -1870 0 0 {name=p20 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2080 -1890 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2080 -1910 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2080 -1770 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2080 -1750 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2080 -1820 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2080 -1840 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2080 -1700 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2080 -1680 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2430 -1870 0 1 {name=p29 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 2430 -1800 0 1 {name=p30 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 2430 -1730 0 1 {name=p31 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 2430 -1660 0 1 {name=p32 sig_type=std_logic lab=OUT4}
C {lab_pin.sym} 2020 -1390 0 1 {name=p33 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2200 -1470 0 1 {name=p34 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2140 -1470 0 0 {name=p35 sig_type=std_logic lab=OUT[1..4]}
C {devices/code_shown.sym} -845 -880 0 0 {name=Simulation1 only_toplevel=false value="
.param f_ref=2MEG R_div=2 N_div=255
*.param f_ref=2e3 R_div=2 N_div=255
.param tp_ref='1/f_ref' td_ref='tp_ref*2'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

*.ic v(VCTRL)=2.6 v(vbp)=2.6
.ic v(VCTRL)=1 v(vbp)=1

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
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
set wr_singlescale
set wr_vecnames

* save all
save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(phase1)
+v(phase2) v(phase3) v(phase4) v(up) v(dn)

*v(vop1) v(von1) v(vop3) v(von3)

*OP
*show all

*tran 100n 70m
tran 0.1n 100u

remzerovec

*tran 1
*write tb_PLL_CP_VCO_model_R2_N2_350MEG.raw
*tran 2
write tb_PLL_CP_VCO_model_R2_N255_255MEG.raw 

*tran 3
*write tb_PLL_CP_VCO_model_R2_N2_50kHz.raw 
*tran 4
*write tb_PLL_CP_VCO_model_R2_N255_255kHz.raw 
*write tb_PLL_CP_VCO_model_R2_N200_200kHz.raw 
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb_PLL_CP_VCO_model_R2_N255_255MEG.txt tran.all
*tran 5

*tran 6

*tran 8

*tran 10

.endc
"}
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
C {vsource.sym} 690 -1700 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 690 -1590 0 0 {name=l1 lab=0}
C {vsource.sym} 690 -1630 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 690 -1770 0 0 {name=p36 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 690 -1670 0 0 {name=p37 sig_type=std_logic lab=AVSS}
C {vsource.sym} 780 -1700 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_pin.sym} 780 -1770 0 1 {name=p40 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 1860 -1580 0 1 {name=p41 sig_type=std_logic lab=AVDD_VCO}
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
C {lab_pin.sym} 1670 -1260 0 1 {name=p44 sig_type=std_logic lab=phase1}
C {capa.sym} 2020 -1340 0 0 {name=CN[4..1]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2020 -1290 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1390 -1710 0 1 {name=p46 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1390 -1690 2 0 {name=p55 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1390 -1670 2 0 {name=p56 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1390 -1650 2 0 {name=p57 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1390 -1630 2 0 {name=p58 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 1100 -1690 2 1 {name=p59 sig_type=std_logic lab=S1}
C {lab_pin.sym} 1100 -1670 2 1 {name=p60 sig_type=std_logic lab=S2}
C {lab_pin.sym} 1100 -1650 2 1 {name=p61 sig_type=std_logic lab=S3}
C {lab_pin.sym} 1100 -1630 2 1 {name=p62 sig_type=std_logic lab=S4}
C {ammeter.sym} 1850 -1930 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 1440 -1510 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/launcher.sym} 1230 -950 0 0 {name=h1
descr="load tran 2" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255MEG.raw tran"
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
C {devices/launcher.sym} 1230 -890 0 0 {name=h4
descr="load tran 4" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255kHz.raw tran"
}
C {devices/launcher.sym} 1230 -920 0 0 {name=h3
descr="load tran 3" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N2_50kHz.raw tran"
}
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
C {devices/launcher.sym} 1230 -860 0 0 {name=h5
descr="load tran 5" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N200_200kHz.raw tran"
}
