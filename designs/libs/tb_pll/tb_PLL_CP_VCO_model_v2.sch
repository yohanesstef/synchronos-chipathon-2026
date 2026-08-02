v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 300 -1020 1100 -620 {flags=graph
y1=-0.04
y2=3.4
ypos1=0.1
ypos2=2.1
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
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
B 2 300 -620 1100 -220 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=3.3
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
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
node="UP
DN
REFERENCE
DIV_OUT"
digital=1}
B 2 1100 -1020 1900 -620 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pre_div
phase1"
color="4 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 1100 -620 1900 -220 {flags=graph
y1=0.1
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VBP
VBN"
color="4 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 1900 -620 2700 -220 {flags=graph
y1=0.96
y2=0.99
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=VCTRL
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 1900 -1020 2700 -620 {flags=graph
y1=1.3e-05
y2=5.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=4
node=i(v.x6.vmeas2)}
B 2 2700 -620 3500 -220 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
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
von1"}
B 2 2700 -1020 3500 -620 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
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
von1"}
B 2 300 -220 1100 180 {flags=graph
y1=-0.00017240227
y2=0.0002036307
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5438986e-06
x2=2.8253736e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5"
node="i(vmeas1)
i(vmeas)"}
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
N 640 -1500 710 -1500 {lab=reference}
N 680 -1260 1370 -1260 {lab=div_out}
N 1490 -1550 1490 -1510 {lab=VCTRL}
N 1490 -1550 1550 -1550 {lab=VCTRL}
N 1690 -1550 1760 -1550 {lab=VBP}
N 1690 -1490 1760 -1490 {lab=VBN}
N 1720 -1490 1720 -1470 {lab=VBN}
N 1720 -1410 1720 -1400 {lab=AVSS}
N 1490 -1620 1490 -1610 {lab=AVDD}
N 1860 -1440 1860 -1400 {lab=AVSS}
N 1620 -1400 1860 -1400 {lab=AVSS}
N 1620 -1440 1620 -1400 {lab=AVSS}
N 1860 -1620 1860 -1600 {lab=AVDD_VCO}
N 1620 -1620 1620 -1600 {lab=AVDD_VCO}
N 1720 -1640 1720 -1550 {lab=VBP}
N 1540 -1490 1550 -1490 {lab=STARTUP}
N 2680 -1530 2680 -1480 {lab=phase[1..4]}
N 2680 -1590 2680 -1560 {lab=AVDD}
N 2680 -1450 2680 -1420 {lab=AVSS}
N 2620 -1450 2640 -1450 {lab=OUT[1..4]}
N 2620 -1560 2620 -1450 {lab=OUT[1..4]}
N 2620 -1560 2640 -1560 {lab=OUT[1..4]}
N 2390 -1620 2400 -1620 {lab=AVDD}
N 2400 -1620 2400 -1410 {lab=AVDD}
N 2390 -1410 2400 -1410 {lab=AVDD}
N 2390 -1480 2400 -1480 {lab=AVDD}
N 2390 -1550 2400 -1550 {lab=AVDD}
N 2390 -1530 2410 -1530 {lab=AVSS}
N 2410 -1600 2410 -1530 {lab=AVSS}
N 2390 -1600 2410 -1600 {lab=AVSS}
N 2410 -1530 2410 -1390 {lab=AVSS}
N 2390 -1390 2410 -1390 {lab=AVSS}
N 2390 -1460 2410 -1460 {lab=AVSS}
N 2680 -1610 2680 -1590 {lab=AVDD}
N 2680 -1420 2680 -1400 {lab=AVSS}
N 2390 -1580 2440 -1580 {lab=OUT1}
N 2390 -1510 2440 -1510 {lab=OUT2}
N 2390 -1440 2440 -1440 {lab=OUT3}
N 2390 -1370 2440 -1370 {lab=OUT4}
N 2070 -1580 2090 -1580 {lab=VBN}
N 2070 -1580 2070 -1370 {lab=VBN}
N 2070 -1370 2090 -1370 {lab=VBN}
N 2070 -1440 2090 -1440 {lab=VBN}
N 2070 -1510 2090 -1510 {lab=VBN}
N 690 -1670 690 -1660 {lab=AVSS}
N 690 -1600 690 -1590 {lab=0}
N 690 -1770 690 -1730 {lab=AVDD}
N 690 -1670 810 -1670 {lab=AVSS}
N 780 -1770 780 -1730 {lab=AVDD_VCO}
N 1620 -1620 1860 -1620 {lab=AVDD_VCO}
N 930 -1460 960 -1460 {lab=DN}
N 930 -1500 960 -1500 {lab=UP}
N 340 -1500 640 -1500 {lab=reference}
N 2850 -1510 2850 -1490 {lab=phase[1..4]}
N 2850 -1430 2850 -1410 {lab=AVSS}
N 1470 -1510 1490 -1510 {lab=VCTRL}
N 1360 -1670 1380 -1670 {lab=AVSS}
N 1380 -1640 1380 -1530 {lab=AVSS}
N 1360 -1530 1380 -1530 {lab=AVSS}
N 1360 -1550 1390 -1550 {lab=AVDD}
N 1390 -1660 1390 -1550 {lab=AVDD}
N 1360 -1690 1390 -1690 {lab=AVDD}
N 1360 -1650 1370 -1650 {lab=#net1}
N 1030 -1630 1060 -1630 {lab=DNb}
N 1030 -1670 1060 -1670 {lab=UPb}
N 1030 -1650 1060 -1650 {lab=DN}
N 1030 -1690 1060 -1690 {lab=UP}
N 1030 -1490 1060 -1490 {lab=DNb}
N 1030 -1530 1060 -1530 {lab=UPb}
N 1030 -1510 1060 -1510 {lab=DN}
N 1030 -1550 1060 -1550 {lab=UP}
N 1020 -1610 1060 -1610 {lab=VBN}
N 1020 -1580 1020 -1470 {lab=VBN}
N 1020 -1470 1060 -1470 {lab=VBN}
N 1360 -1510 1410 -1510 {lab=#net2}
N 1370 -1650 1580 -1650 {lab=#net1}
N 1640 -1650 1720 -1650 {lab=VBP}
N 1720 -1650 1720 -1640 {lab=VBP}
N 1380 -1670 1380 -1640 {lab=AVSS}
N 1390 -1690 1390 -1660 {lab=AVDD}
N 1020 -1610 1020 -1580 {lab=VBN}
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
C {devices/launcher.sym} 1010 -1140 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model_v2.raw tran"
}
C {libs/model_pll/freq_divider.sym} 410 -1630 0 0 {name=x5 divide_factor=\{R_div\}}
C {lab_wire.sym} 560 -1630 0 1 {name=p12 sig_type=std_logic lab=pre_div}
C {libs/core_analog/vco/vco.sym} 1860 -1520 0 0 {name=x3}
C {libs/core_analog/bias_generator/bias_generator.sym} 1620 -1520 0 0 {name=x6}
C {capa.sym} 1720 -1440 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1620 -1400 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {capa.sym} 1490 -1580 0 0 {name=C2
m=1
value=12.2n
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1490 -1620 0 1 {name=p10 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1540 -1490 0 0 {name=p11 sig_type=std_logic lab=STARTUP}
C {lab_pin.sym} 1930 -1550 2 0 {name=p13 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 1930 -1490 2 0 {name=p14 sig_type=std_logic lab=VON[4..1]}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2240 -1600 0 0 {name=x8}
C {symbols/pfet_03v3.sym} 2660 -1560 0 0 {name=M1[1..4]
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
C {symbols/nfet_03v3.sym} 2660 -1450 0 0 {name=M2[1..4]
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
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2240 -1530 0 0 {name=x9}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2240 -1460 0 0 {name=x10}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2240 -1390 0 0 {name=x11}
C {lab_pin.sym} 2410 -1390 0 1 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2400 -1620 0 1 {name=p16 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2680 -1610 0 1 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2680 -1400 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2070 -1580 0 0 {name=p20 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2090 -1600 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2090 -1620 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2090 -1480 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2090 -1460 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2090 -1530 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2090 -1550 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2090 -1410 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2090 -1390 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2440 -1580 0 1 {name=p29 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 2440 -1510 0 1 {name=p30 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 2440 -1440 0 1 {name=p31 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 2440 -1370 0 1 {name=p32 sig_type=std_logic lab=OUT4}
C {lab_pin.sym} 2850 -1510 0 1 {name=p33 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2680 -1510 0 1 {name=p34 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2620 -1510 0 0 {name=p35 sig_type=std_logic lab=OUT[1..4]}
C {devices/code_shown.sym} -455 -880 0 0 {name=Simulation1 only_toplevel=false value="
.param f_ref=10MEG R_div=2 N_div=20
.ic v(vop1)=3.3 v(von1)=0 v(startup)=0 v(VCTRL)=1 v(vbp)=1

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

save all

OP
show all

tran 1n 10u

remzerovec

write tb_PLL_CP_VCO_model_v2.raw
.endc
"}
C {devices/code_shown.sym} -470 -1050 0 0 {name=Models only_toplevel=false
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
C {lab_pin.sym} 1860 -1620 0 1 {name=p41 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 1720 -1480 0 0 {name=p38 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1720 -1570 0 1 {name=p39 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1490 -1510 0 1 {name=p42 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 260 -1630 0 0 {name=p45 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1670 -1260 0 1 {name=p44 sig_type=std_logic lab=phase1}
C {capa.sym} 2850 -1460 0 0 {name=CN[4..1]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2850 -1410 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {ammeter.sym} 1610 -1650 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 1440 -1510 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {libs/core_analog/charge_pump/charge_pump.sym} 1210 -1510 0 0 {name=x2}
C {libs/core_analog/charge_pump/charge_pump.sym} 1210 -1650 0 0 {name=x7}
C {lab_wire.sym} 1030 -1690 0 1 {name=p1 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1030 -1650 0 1 {name=p2 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1030 -1630 0 1 {name=p43 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1030 -1670 0 1 {name=p46 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1030 -1550 0 1 {name=p47 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1030 -1510 0 1 {name=p48 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1030 -1490 0 1 {name=p49 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 1030 -1530 0 1 {name=p50 sig_type=std_logic lab=UPb}
C {lab_pin.sym} 1020 -1470 0 0 {name=p51 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1390 -1690 0 1 {name=p52 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1380 -1620 0 1 {name=p53 sig_type=std_logic lab=AVSS}
