v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1230 -1410 2030 -1010 {flags=graph
y1=-5.9e-05
y2=3.4
ypos1=-5.9e-05
ypos2=3.4
divy=5
subdivy=1
unity=1
x1=2.9303363e-05
x2=2.9325794e-05
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
legend=1
rawfile=$netlist_dir/tb_PLL_full_N35_350MEG.raw
sim_type=tran}
B 2 1230 -1010 2030 -610 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=3.3
divy=5
subdivy=1
unity=1
x1=2.9275954e-05
x2=2.9330716e-05
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
B 2 1230 -610 2030 -210 {flags=graph
y1=0.32
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.9275954e-05
x2=2.9330716e-05
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
B 2 2030 -610 2830 -210 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.9275954e-05
x2=2.9330716e-05
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
P 4 1 1780 -1850 {}
N 1610 -1830 1640 -1830 {lab=div_outb}
N 1610 -1830 1610 -1650 {lab=div_outb}
N 1860 -1830 1890 -1830 {lab=DB}
N 1860 -1890 1890 -1890 {lab=UB}
N 1570 -1890 1640 -1890 {lab=pre_divb}
N 2420 -1900 2480 -1900 {lab=VCTRL}
N 2620 -1840 2690 -1840 {lab=VBN}
N 2650 -1840 2650 -1820 {lab=VBN}
N 2420 -1970 2420 -1960 {lab=AVDD}
N 2790 -1790 2790 -1750 {lab=AVSS}
N 2550 -1750 2790 -1750 {lab=AVSS}
N 2550 -1790 2550 -1750 {lab=AVSS}
N 2790 -1970 2790 -1950 {lab=AVDD_VCO}
N 2550 -1970 2550 -1950 {lab=AVDD_VCO}
N 2470 -1840 2480 -1840 {lab=STARTUP}
N 3130 -1880 3130 -1830 {lab=phase[1..4]}
N 3130 -1940 3130 -1910 {lab=AVDD}
N 3130 -1800 3130 -1770 {lab=AVSS}
N 3070 -1800 3090 -1800 {lab=OUT[1..4]}
N 3070 -1910 3070 -1800 {lab=OUT[1..4]}
N 3070 -1910 3090 -1910 {lab=OUT[1..4]}
N 3310 -2300 3320 -2300 {lab=AVDD}
N 3320 -2300 3320 -2090 {lab=AVDD}
N 3310 -2090 3320 -2090 {lab=AVDD}
N 3310 -2160 3320 -2160 {lab=AVDD}
N 3310 -2230 3320 -2230 {lab=AVDD}
N 3310 -2210 3330 -2210 {lab=AVSS}
N 3330 -2280 3330 -2210 {lab=AVSS}
N 3310 -2280 3330 -2280 {lab=AVSS}
N 3330 -2210 3330 -2070 {lab=AVSS}
N 3310 -2070 3330 -2070 {lab=AVSS}
N 3310 -2140 3330 -2140 {lab=AVSS}
N 3130 -1960 3130 -1940 {lab=AVDD}
N 3130 -1770 3130 -1750 {lab=AVSS}
N 3310 -2260 3360 -2260 {lab=OUT1}
N 3310 -2190 3360 -2190 {lab=OUT2}
N 3310 -2120 3360 -2120 {lab=OUT3}
N 3310 -2050 3360 -2050 {lab=OUT4}
N 2990 -2260 3010 -2260 {lab=VBN}
N 2990 -2260 2990 -2050 {lab=VBN}
N 2990 -2050 3010 -2050 {lab=VBN}
N 2990 -2120 3010 -2120 {lab=VBN}
N 2990 -2190 3010 -2190 {lab=VBN}
N 1920 -2490 1920 -2480 {lab=AVSS}
N 1920 -2420 1920 -2410 {lab=0}
N 1920 -2590 1920 -2550 {lab=AVDD}
N 1920 -2490 2040 -2490 {lab=AVSS}
N 2010 -2590 2010 -2550 {lab=AVDD_VCO}
N 2550 -1970 2790 -1970 {lab=AVDD_VCO}
N 2030 -2080 2080 -2080 {lab=S1}
N 2030 -2060 2100 -2060 {lab=S2}
N 2030 -2040 2120 -2040 {lab=S3}
N 2030 -2020 2140 -2020 {lab=S4}
N 2270 -2100 2320 -2100 {lab=AVSS}
N 2230 -2020 2320 -2020 {lab=Sb4}
N 2210 -2040 2320 -2040 {lab=Sb3}
N 2190 -2060 2320 -2060 {lab=Sb2}
N 2170 -2080 2320 -2080 {lab=Sb1}
N 1990 -2270 2010 -2270 {lab=VBN}
N 1990 -1840 2010 -1840 {lab=VBN}
N 1980 -2170 2010 -2170 {lab=DNb}
N 1980 -2210 2010 -2210 {lab=UPb}
N 1980 -2190 2010 -2190 {lab=DN}
N 1980 -2230 2010 -2230 {lab=UP}
N 1980 -1940 2010 -1940 {lab=DNb}
N 1980 -1900 2010 -1900 {lab=UPb}
N 1980 -1920 2010 -1920 {lab=DN}
N 1980 -1880 2010 -1880 {lab=UP}
N 2180 -2350 2180 -2330 {lab=AVDD}
N 2180 -1780 2180 -1760 {lab=AVDD}
N 2950 -1780 2950 -1760 {lab=phase[1..4]}
N 2950 -1700 2950 -1680 {lab=AVSS}
N 2270 -2100 2270 -2010 {lab=AVSS}
N 1930 -2270 1990 -2270 {lab=VBN}
N 1930 -2270 1930 -1840 {lab=VBN}
N 1930 -1840 1990 -1840 {lab=VBN}
N 2780 -2290 2780 -2210 {lab=VBP}
N 2170 -2080 2170 -2010 {lab=Sb1}
N 2190 -2060 2190 -2010 {lab=Sb2}
N 2210 -2040 2210 -2010 {lab=Sb3}
N 2230 -2020 2230 -2010 {lab=Sb4}
N 2080 -2080 2080 -2010 {lab=S1}
N 2100 -2060 2100 -2010 {lab=S2}
N 2120 -2040 2120 -2010 {lab=S3}
N 2140 -2020 2140 -2010 {lab=S4}
N 2140 -2100 2140 -2020 {lab=S4}
N 2120 -2100 2120 -2040 {lab=S3}
N 2100 -2100 2100 -2060 {lab=S2}
N 2080 -2100 2080 -2080 {lab=S1}
N 2170 -2100 2170 -2080 {lab=Sb1}
N 2190 -2100 2190 -2060 {lab=Sb2}
N 2210 -2100 2210 -2040 {lab=Sb3}
N 2230 -2100 2230 -2020 {lab=Sb4}
N 2650 -1760 2650 -1750 {lab=AVSS}
N 2780 -2240 2800 -2240 {lab=VBP}
N 2860 -2240 2880 -2240 {lab=AVSS}
N 2450 -2080 2500 -2080 {lab=S1}
N 2450 -2060 2520 -2060 {lab=S2}
N 2450 -2040 2540 -2040 {lab=S3}
N 2450 -2020 2560 -2020 {lab=S4}
N 2690 -2100 2740 -2100 {lab=AVSS}
N 2650 -2020 2740 -2020 {lab=Sb4}
N 2630 -2040 2740 -2040 {lab=Sb3}
N 2610 -2060 2740 -2060 {lab=Sb2}
N 2590 -2080 2740 -2080 {lab=Sb1}
N 2690 -2100 2690 -2010 {lab=AVSS}
N 2590 -2080 2590 -2010 {lab=Sb1}
N 2610 -2060 2610 -2010 {lab=Sb2}
N 2630 -2040 2630 -2010 {lab=Sb3}
N 2650 -2020 2650 -2010 {lab=Sb4}
N 2500 -2080 2500 -2010 {lab=S1}
N 2520 -2060 2520 -2010 {lab=S2}
N 2540 -2040 2540 -2010 {lab=S3}
N 2560 -2020 2560 -2010 {lab=S4}
N 2560 -2100 2560 -2020 {lab=S4}
N 2540 -2100 2540 -2040 {lab=S3}
N 2520 -2100 2520 -2060 {lab=S2}
N 2500 -2100 2500 -2080 {lab=S1}
N 2590 -2100 2590 -2080 {lab=Sb1}
N 2610 -2100 2610 -2060 {lab=Sb2}
N 2630 -2100 2630 -2040 {lab=Sb3}
N 2650 -2100 2650 -2020 {lab=Sb4}
N 2410 -1900 2420 -1900 {lab=VCTRL}
N 2400 -1900 2410 -1900 {lab=VCTRL}
N 2420 -1900 2420 -1880 {lab=VCTRL}
N 2670 -1900 2690 -1900 {lab=VBP}
N 2760 -2210 2780 -2210 {lab=VBP}
N 2350 -2220 2350 -2210 {lab=#net1}
N 2340 -2210 2350 -2210 {lab=#net1}
N 2780 -2370 2780 -2350 {lab=#net1}
N 2350 -2370 2780 -2370 {lab=#net1}
N 2350 -2370 2350 -2220 {lab=#net1}
N 2600 -2350 2600 -2330 {lab=AVDD}
N 2420 -2220 2430 -2220 {lab=VBN}
N 1770 -1670 1770 -1620 {lab=div_outb}
N 1810 -1700 1810 -1590 {lab=div_out}
N 1760 -1590 1770 -1590 {lab=GND}
N 1760 -1590 1760 -1560 {lab=GND}
N 1760 -1560 1770 -1560 {lab=GND}
N 1760 -1700 1770 -1700 {lab=AVDD}
N 1760 -1730 1760 -1700 {lab=AVDD}
N 1760 -1730 1770 -1730 {lab=AVDD}
N 1770 -1760 1770 -1730 {lab=AVDD}
N 1770 -1560 1770 -1530 {lab=GND}
N 1810 -1650 1980 -1650 {lab=div_out}
N 1980 -1650 2300 -1650 {lab=div_out}
N 1610 -1650 1770 -1650 {lab=div_outb}
N 1510 -1890 1510 -1840 {lab=pre_divb}
N 1470 -1920 1470 -1810 {lab=reference}
N 1510 -1810 1520 -1810 {lab=GND}
N 1520 -1810 1520 -1780 {lab=GND}
N 1510 -1780 1520 -1780 {lab=GND}
N 1510 -1920 1520 -1920 {lab=AVDD}
N 1520 -1950 1520 -1920 {lab=AVDD}
N 1510 -1950 1520 -1950 {lab=AVDD}
N 1510 -1980 1510 -1950 {lab=AVDD}
N 1510 -1780 1510 -1750 {lab=GND}
N 1510 -1890 1570 -1890 {lab=pre_divb}
N 1440 -1890 1470 -1890 {lab=reference}
N 1430 -1890 1440 -1890 {lab=reference}
N 2300 -1560 2390 -1560 {lab=div_out}
N 2300 -1650 2300 -1560 {lab=div_out}
N 1490 -1540 1500 -1540 {lab=0}
N 1490 -1480 1510 -1480 {lab=rst}
N 1510 -1600 1510 -1480 {lab=rst}
N 1500 -1550 1500 -1540 {lab=0}
N 1460 -1550 1500 -1550 {lab=0}
N 1460 -1550 1460 -1540 {lab=0}
N 2710 -1660 2740 -1660 {lab=phase1}
N 2710 -1640 2740 -1640 {lab=rst}
N 2710 -1600 2830 -1600 {lab=D7}
N 2710 -1580 2830 -1580 {lab=D6}
N 2710 -1560 2830 -1560 {lab=D5}
N 2710 -1540 2830 -1540 {lab=D4}
N 2710 -1520 2830 -1520 {lab=D3}
N 2710 -1500 2830 -1500 {lab=D2}
N 2710 -1480 2830 -1480 {lab=D1}
N 2710 -1460 2830 -1460 {lab=D0}
N 3390 -1560 3390 -1510 {lab=Sb[1..4]}
N 3390 -1620 3390 -1590 {lab=AVDD}
N 3390 -1480 3390 -1450 {lab=AVSS}
N 3330 -1480 3350 -1480 {lab=S[1..4]}
N 3330 -1590 3330 -1480 {lab=S[1..4]}
N 3330 -1590 3350 -1590 {lab=S[1..4]}
N 3390 -1640 3390 -1620 {lab=AVDD}
N 3390 -1450 3390 -1430 {lab=AVSS}
C {lab_wire.sym} 2270 -1650 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {lab_wire.sym} 1860 -1830 0 1 {name=p7 sig_type=std_logic lab=DB}
C {lab_wire.sym} 1860 -1890 0 1 {name=p8 sig_type=std_logic lab=UB}
C {devices/launcher.sym} 2160 -1370 0 0 {name=h2
descr="load tran 1" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N2_350MEG.raw tran"
}
C {lab_wire.sym} 1470 -1890 0 0 {name=p12 sig_type=std_logic lab=reference}
C {libs/core_analog/vco/vco.sym} 2790 -1870 0 0 {name=x3}
C {libs/core_analog/bias_generator/bias_generator.sym} 2550 -1870 0 0 {name=x6}
C {lab_pin.sym} 1930 -2060 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2550 -1750 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {capa.sym} 2420 -1930 0 0 {name=C2
m=1
value=2.1n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2420 -1970 0 1 {name=p10 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2470 -1840 0 0 {name=p11 sig_type=std_logic lab=STARTUP}
C {lab_pin.sym} 2860 -1900 2 0 {name=p13 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 2860 -1840 2 0 {name=p14 sig_type=std_logic lab=VON[4..1]}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 3160 -2280 0 0 {name=x8}
C {symbols/pfet_03v3.sym} 3110 -1910 0 0 {name=M1[1..4]
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
C {symbols/nfet_03v3.sym} 3110 -1800 0 0 {name=M2[1..4]
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
C {libs/core_analog/d2s_converter/d2s_converter.sym} 3160 -2210 0 0 {name=x9}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 3160 -2140 0 0 {name=x10}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 3160 -2070 0 0 {name=x11}
C {lab_pin.sym} 3330 -2070 0 1 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 3320 -2300 0 1 {name=p16 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 3130 -1960 0 1 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 3130 -1750 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2990 -2260 0 0 {name=p20 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 3010 -2280 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 3010 -2300 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 3010 -2160 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 3010 -2140 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 3010 -2210 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 3010 -2230 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 3010 -2090 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 3010 -2070 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 3360 -2260 0 1 {name=p29 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 3360 -2190 0 1 {name=p30 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 3360 -2120 0 1 {name=p31 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 3360 -2050 0 1 {name=p32 sig_type=std_logic lab=OUT4}
C {lab_pin.sym} 2950 -1780 0 1 {name=p33 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 3130 -1860 0 1 {name=p34 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 3070 -1860 0 0 {name=p35 sig_type=std_logic lab=OUT[1..4]}
C {devices/code_shown.sym} -525 -1270 0 0 {name=Simulation1 only_toplevel=false value="
.param f_ref=10MEG
.param tp_ref='td_ref/2' td_ref='1/f_ref'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

*.ic v(VCTRL)=2.6 v(vbp)=2.6
.ic v(VCTRL)=1 v(vbp)=1

.ic v(vop1)=3.3 v(von1)=0 v(startup)=0
.options reltol=1e-5 cshunt=1e-15
.options method=gear

.param state_H=3.3 state_=0

.param
+d0=state_H
+d1=state_H
+d2=state_
+d3=state_
+d4=state_
+d5=state_H
+d6=state_
+d7=state_

VD0 D0 0 d0
VD1 D1 0 d1
VD2 D2 0 d2
VD3 D3 0 d3
VD4 D4 0 d4
VD5 D5 0 d5
VD6 D6 0 d6
VD7 D7 0 d7

.control
set wr_singlescale
set wr_vecnames

* save all
save v(VCTRL) v(vbp) v(vbn)
+v(reference) v(div_out) v(pre_div) v(div_outb) v(pre_divb)
+v(phase1) v(phase2) v(phase3) v(phase4) v(up) v(dn)
+v(s1) v(s2) v(s3) v(s4)

*OP
*show all

*tran 100n 20m
tran 1n 1u

remzerovec

*write tb_PLL_full_R2_N70_350MEG.raw
write tb_PLL_full_N35_350MEG_test.raw
*write tb_PLL_full_N35_350MEG.raw

*wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb_PLL_full_N35_350MEG.txt tran.all


.endc
"}
C {vsource.sym} 1920 -2520 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1920 -2410 0 0 {name=l1 lab=0}
C {vsource.sym} 1920 -2450 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1920 -2590 0 0 {name=p36 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1920 -2490 0 0 {name=p37 sig_type=std_logic lab=AVSS}
C {vsource.sym} 2010 -2520 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_pin.sym} 2010 -2590 0 1 {name=p40 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 2790 -1970 0 1 {name=p41 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 2650 -1830 0 0 {name=p38 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2670 -1900 0 0 {name=p39 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 2420 -1880 0 1 {name=p42 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 2180 -2350 0 1 {name=p43 sig_type=std_logic lab=AVDD}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 2180 -2210 0 0 {name=x2}
C {libs/core_analog/programmable_charge_pump/programmable_charge_pump.sym} 2180 -1900 2 1 {name=x7}
C {lab_wire.sym} 1980 -2230 0 0 {name=p47 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1980 -2190 0 0 {name=p48 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1980 -2170 0 0 {name=p49 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1980 -2210 0 0 {name=p50 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1980 -1880 2 1 {name=p51 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1980 -1920 2 1 {name=p52 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1980 -1940 2 1 {name=p53 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1980 -1900 2 1 {name=p54 sig_type=std_logic lab=UPb}
C {lab_pin.sym} 2180 -1760 2 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2740 -1660 0 1 {name=p44 sig_type=std_logic lab=phase1}
C {capa.sym} 2950 -1730 0 0 {name=CN[4..1]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2950 -1680 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2320 -2100 0 1 {name=p46 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2030 -2080 2 1 {name=p59 sig_type=std_logic lab=S1}
C {lab_pin.sym} 2030 -2060 2 1 {name=p60 sig_type=std_logic lab=S2}
C {lab_pin.sym} 2030 -2040 2 1 {name=p61 sig_type=std_logic lab=S3}
C {lab_pin.sym} 2030 -2020 2 1 {name=p62 sig_type=std_logic lab=S4}
C {ammeter.sym} 2780 -2320 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 2370 -1900 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/launcher.sym} 2160 -1340 0 0 {name=h1
descr="load tran 2" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255MEG.raw tran"
}
C {capa.sym} 2650 -1790 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2830 -2240 3 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2880 -2240 2 0 {name=p45 sig_type=std_logic lab=AVSS}
C {devices/launcher.sym} 2160 -1280 0 0 {name=h4
descr="load tran 4" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N255_255kHz.raw tran"
}
C {devices/launcher.sym} 2160 -1310 0 0 {name=h3
descr="load tran 3" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N2_50kHz.raw tran"
}
C {libs/core_analog/programmable_ffz/programmable_ffz.sym} 2600 -2220 0 0 {name=x12}
C {lab_pin.sym} 2740 -2100 0 1 {name=p63 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2740 -2080 2 0 {name=p64 sig_type=std_logic lab=Sb1}
C {lab_pin.sym} 2450 -2080 2 1 {name=p68 sig_type=std_logic lab=S1}
C {lab_pin.sym} 2450 -2060 2 1 {name=p69 sig_type=std_logic lab=S2}
C {lab_pin.sym} 2450 -2040 2 1 {name=p70 sig_type=std_logic lab=S3}
C {lab_pin.sym} 2450 -2020 2 1 {name=p71 sig_type=std_logic lab=S4}
C {lab_pin.sym} 2780 -2210 0 1 {name=p72 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 2600 -2350 0 1 {name=p73 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2420 -2220 0 0 {name=p74 sig_type=std_logic lab=VBN}
C {devices/launcher.sym} 2160 -1250 0 0 {name=h5
descr="load tran 5" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_R2_N200_200kHz.raw tran"
}
C {libs/core_analog/pfd/pfd_11gate.sym} 1750 -1860 0 0 {name=x1}
C {lab_pin.sym} 1750 -1800 0 1 {name=p6 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1750 -1920 0 1 {name=p5 sig_type=std_logic lab=AVDD}
C {symbols/pfet_03v3.sym} 1790 -1700 0 1 {name=M1[0:1]
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
C {symbols/nfet_03v3.sym} 1790 -1590 0 1 {name=M2[0:1]
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
C {lab_wire.sym} 1770 -1530 0 1 {name=p87 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1770 -1760 0 0 {name=p89 sig_type=std_logic lab=AVDD}
C {symbols/pfet_03v3.sym} 1490 -1920 0 0 {name=M3[0:1]
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
C {symbols/nfet_03v3.sym} 1490 -1810 0 0 {name=M4[0:1]
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
C {lab_wire.sym} 1510 -1750 0 0 {name=p88 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1510 -1980 0 1 {name=p90 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 1670 -1650 0 0 {name=p92 sig_type=std_logic lab=div_outb
}
C {lab_wire.sym} 1640 -1890 3 1 {name=p91 sig_type=std_logic lab=pre_divb}
C {libs/core_analog/pulse_swallow_div/src/pulse_swallow_div.sym} 2550 -1560 0 1 {name=x5}
C {lab_wire.sym} 2550 -1420 0 0 {name=p101 sig_type=std_logic lab=GND}
C {lab_pin.sym} 2740 -1640 0 1 {name=p4 sig_type=std_logic lab=rst}
C {vsource.sym} 1490 -1510 2 0 {name=V3 value="PWL(0 0 10n 0 10.1n 3.3)" savecurrent=false}
C {gnd.sym} 1460 -1540 0 0 {name=l4 lab=0}
C {lab_wire.sym} 1510 -1600 0 1 {name=p108 sig_type=std_logic lab=rst}
C {code_shown.sym} -540 -1450 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/designs/synchronos-chipathon-2026/designs/libs/core_analog/pulse_swallow_div/src/pulse_swallow_div_clean.spice
.include /foss/designs/synchronos-chipathon-2026/designs/libs/core_analog/lut/cp_lut.spice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice

* 2. GF180 Base Transistor Models (TT Corner)
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
"}
C {lab_pin.sym} 2550 -1700 0 1 {name=p100 sig_type=std_logic lab=AVDD}
C {libs/core_analog/lut/cp_lut.sym} 2990 -1440 0 0 {name=x4}
C {lab_pin.sym} 2990 -1620 0 1 {name=p93 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 2990 -1400 0 1 {name=p94 sig_type=std_logic lab=GND}
C {symbols/pfet_03v3.sym} 3370 -1590 0 0 {name=M3[1..4]
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
C {symbols/nfet_03v3.sym} 3370 -1480 0 0 {name=M4[1..4]
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
C {lab_pin.sym} 3390 -1640 0 1 {name=p95 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 3390 -1430 0 1 {name=p96 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 3330 -1540 0 0 {name=p98 sig_type=std_logic lab=S[1..4]}
C {lab_pin.sym} 3150 -1500 2 0 {name=p99 sig_type=std_logic lab=S1}
C {lab_pin.sym} 3150 -1520 2 0 {name=p102 sig_type=std_logic lab=S2}
C {lab_pin.sym} 3150 -1540 2 0 {name=p103 sig_type=std_logic lab=S3}
C {lab_pin.sym} 3150 -1560 2 0 {name=p104 sig_type=std_logic lab=S4}
C {lab_pin.sym} 3390 -1540 0 1 {name=p97 sig_type=std_logic lab=Sb[1..4]}
C {lab_pin.sym} 2740 -2060 2 0 {name=p65 sig_type=std_logic lab=Sb2}
C {lab_pin.sym} 2740 -2040 2 0 {name=p66 sig_type=std_logic lab=Sb3}
C {lab_pin.sym} 2740 -2020 2 0 {name=p67 sig_type=std_logic lab=Sb4}
C {lab_pin.sym} 2320 -2080 2 0 {name=p105 sig_type=std_logic lab=Sb1}
C {lab_pin.sym} 2320 -2060 2 0 {name=p106 sig_type=std_logic lab=Sb2}
C {lab_pin.sym} 2320 -2040 2 0 {name=p107 sig_type=std_logic lab=Sb3}
C {lab_pin.sym} 2320 -2020 2 0 {name=p109 sig_type=std_logic lab=Sb4}
C {lab_pin.sym} 2750 -1600 0 1 {name=p55 sig_type=std_logic lab=D7}
C {lab_pin.sym} 2750 -1580 0 1 {name=p56 sig_type=std_logic lab=D6}
C {lab_pin.sym} 2750 -1560 0 1 {name=p57 sig_type=std_logic lab=D5}
C {lab_pin.sym} 2750 -1540 0 1 {name=p58 sig_type=std_logic lab=D4}
C {lab_pin.sym} 2750 -1520 0 1 {name=p110 sig_type=std_logic lab=D3}
C {lab_pin.sym} 2750 -1500 0 1 {name=p111 sig_type=std_logic lab=D2}
C {lab_pin.sym} 2750 -1480 0 1 {name=p112 sig_type=std_logic lab=D1}
C {lab_pin.sym} 2750 -1460 0 1 {name=p113 sig_type=std_logic lab=D0}
C {devices/launcher.sym} 2160 -1220 0 0 {name=h6
descr="load tran 5" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_full_N35_350MEG.raw tran"
}
C {libs/core_analog/pfd_s2d/pfd_s2d.sym} 1790 -2150 0 0 {name=x13}
