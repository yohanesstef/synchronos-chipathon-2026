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
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2034981e-07
x2=7.6265257e-07
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
ypos1=-0.33
ypos2=2.97
divy=5
subdivy=1
unity=1
x1=7.2034981e-07
x2=7.6265257e-07
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
PHASE1"
digital=1}
B 2 1100 -1020 1900 -620 {flags=graph
y1=-0.035
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2034981e-07
x2=7.6265257e-07
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
y1=0.19
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2034981e-07
x2=7.6265257e-07
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
P 4 1 850 -1460 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -840 -1340 0 0 0.4 0.4 {}
N 280 -1410 280 -1380 {lab=GND}
N 280 -1490 280 -1470 {lab=reference}
N 680 -1440 710 -1440 {lab=phase1}
N 680 -1440 680 -1260 {lab=phase1}
N 930 -1440 960 -1440 {lab=DNb}
N 930 -1480 960 -1480 {lab=UPb}
N 280 -1500 280 -1490 {lab=reference}
N 280 -1500 340 -1500 {lab=reference}
N 640 -1500 710 -1500 {lab=reference}
N 680 -1260 1370 -1260 {lab=phase1}
N 930 -1500 1010 -1500 {lab=UP}
N 960 -1480 1010 -1480 {lab=UPb}
N 930 -1460 1010 -1460 {lab=DN}
N 960 -1440 970 -1440 {lab=DNb}
N 970 -1440 1010 -1440 {lab=DNb}
N 1000 -1550 1010 -1550 {lab=VBN}
N 1000 -1530 1000 -1420 {lab=VBN}
N 1000 -1420 1010 -1420 {lab=VBN}
N 990 -1570 1010 -1570 {lab=DNb}
N 990 -1550 990 -1440 {lab=DNb}
N 980 -1590 1010 -1590 {lab=DN}
N 980 -1570 980 -1460 {lab=DN}
N 970 -1610 1010 -1610 {lab=UPb}
N 970 -1590 970 -1480 {lab=UPb}
N 960 -1630 1010 -1630 {lab=UP}
N 960 -1630 960 -1500 {lab=UP}
N 1310 -1630 1320 -1630 {lab=AVDD}
N 1310 -1500 1320 -1500 {lab=AVDD}
N 1310 -1480 1330 -1480 {lab=AVSS}
N 1310 -1460 1370 -1460 {lab=VCTRL}
N 1370 -1500 1370 -1460 {lab=VCTRL}
N 1370 -1500 1430 -1500 {lab=VCTRL}
N 1570 -1500 1640 -1500 {lab=VBP}
N 1570 -1440 1640 -1440 {lab=VBN}
N 1600 -1440 1600 -1420 {lab=VBN}
N 1600 -1360 1600 -1350 {lab=AVSS}
N 1370 -1570 1370 -1560 {lab=AVDD}
N 1740 -1390 1740 -1350 {lab=AVSS}
N 1500 -1350 1740 -1350 {lab=AVSS}
N 1500 -1390 1500 -1350 {lab=AVSS}
N 1740 -1570 1740 -1550 {lab=AVDD_VCO}
N 1500 -1570 1500 -1550 {lab=AVDD_VCO}
N 1320 -1630 1320 -1500 {lab=AVDD}
N 1310 -1610 1330 -1610 {lab=AVSS}
N 1310 -1590 1600 -1590 {lab=VBP}
N 1600 -1590 1600 -1500 {lab=VBP}
N 1330 -1610 1330 -1480 {lab=AVSS}
N 970 -1610 970 -1590 {lab=UPb}
N 980 -1590 980 -1570 {lab=DN}
N 990 -1570 990 -1550 {lab=DNb}
N 1000 -1550 1000 -1530 {lab=VBN}
N 1420 -1440 1430 -1440 {lab=STARTUP}
N 2700 -1460 2700 -1410 {lab=phase[1..4]}
N 2700 -1520 2700 -1490 {lab=AVDD}
N 2700 -1380 2700 -1350 {lab=AVSS}
N 2640 -1380 2660 -1380 {lab=s[1..4]}
N 2640 -1490 2640 -1380 {lab=s[1..4]}
N 2640 -1490 2660 -1490 {lab=s[1..4]}
N 2340 -1550 2350 -1550 {lab=AVDD}
N 2350 -1550 2350 -1340 {lab=AVDD}
N 2340 -1340 2350 -1340 {lab=AVDD}
N 2340 -1410 2350 -1410 {lab=AVDD}
N 2340 -1480 2350 -1480 {lab=AVDD}
N 2340 -1460 2360 -1460 {lab=AVSS}
N 2360 -1530 2360 -1460 {lab=AVSS}
N 2340 -1530 2360 -1530 {lab=AVSS}
N 2360 -1460 2360 -1320 {lab=AVSS}
N 2340 -1320 2360 -1320 {lab=AVSS}
N 2340 -1390 2360 -1390 {lab=AVSS}
N 2700 -1540 2700 -1520 {lab=AVDD}
N 2700 -1350 2700 -1330 {lab=AVSS}
N 2340 -1510 2390 -1510 {lab=s1}
N 2340 -1440 2390 -1440 {lab=s2}
N 2340 -1370 2390 -1370 {lab=s3}
N 2340 -1300 2390 -1300 {lab=s4}
N 3010 -1390 3120 -1390 {lab=AVSS}
N 2020 -1510 2040 -1510 {lab=VBN}
N 2020 -1510 2020 -1300 {lab=VBN}
N 2020 -1300 2040 -1300 {lab=VBN}
N 2020 -1370 2040 -1370 {lab=VBN}
N 2020 -1440 2040 -1440 {lab=VBN}
N 690 -1670 690 -1660 {lab=AVSS}
N 690 -1600 690 -1590 {lab=0}
N 690 -1770 690 -1730 {lab=AVDD}
N 690 -1670 810 -1670 {lab=AVSS}
N 780 -1770 780 -1730 {lab=AVDD_VCO}
N 1500 -1570 1740 -1570 {lab=AVDD_VCO}
N 340 -1500 640 -1500 {lab=reference}
C {lab_wire.sym} 1370 -1260 0 1 {name=p2 sig_type=std_logic lab=phase1
}
C {lab_wire.sym} 1370 -1180 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {sqwsource.sym} 280 -1440 0 0 {name=Vreference vhi=3.3 freq=\{f_ref\}}
C {gnd.sym} 280 -1380 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 280 -1490 0 0 {name=p4 sig_type=std_logic lab=reference}
C {lab_wire.sym} 930 -1500 0 1 {name=p5 sig_type=std_logic lab=UP}
C {lab_wire.sym} 930 -1460 0 1 {name=p6 sig_type=std_logic lab=DN}
C {lab_wire.sym} 930 -1440 0 1 {name=p7 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 930 -1480 0 1 {name=p8 sig_type=std_logic lab=UPb}
C {libs/model_pll/pfd_model.sym} 780 -1470 0 0 {name=x1}
C {libs/model_pll/freq_divider.sym} 1520 -1180 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 1010 -1140 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_CP_VCO_model.raw tran"
}
C {libs/model_pll/freq_divider.sym} 410 -1630 0 0 {name=x5 divide_factor=\{R_div\}}
C {lab_wire.sym} 560 -1630 0 1 {name=p12 sig_type=std_logic lab=pre_div}
C {libs/core_analog/charge_pump/charge_pump.sym} 1160 -1460 0 0 {name=x2}
C {libs/core_analog/vco/vco.sym} 1740 -1470 0 0 {name=x3}
C {libs/core_analog/bias_generator/bias_generator.sym} 1500 -1470 0 0 {name=x6}
C {libs/core_analog/charge_pump/charge_pump.sym} 1160 -1590 0 0 {name=x7}
C {lab_pin.sym} 1000 -1420 0 0 {name=p1 sig_type=std_logic lab=VBN}
C {capa.sym} 1600 -1390 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1500 -1350 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {capa.sym} 1370 -1530 0 0 {name=C2
m=1
value=80p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1370 -1570 0 1 {name=p10 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1420 -1440 0 0 {name=p11 sig_type=std_logic lab=STARTUP}
C {lab_pin.sym} 1810 -1500 2 0 {name=p13 sig_type=std_logic lab=VOP[4..1]}
C {lab_pin.sym} 1810 -1440 2 0 {name=p14 sig_type=std_logic lab=VON[4..1]}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2190 -1530 0 0 {name=x8}
C {symbols/pfet_03v3.sym} 2680 -1490 0 0 {name=M1[1..4]
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
C {symbols/nfet_03v3.sym} 2680 -1380 0 0 {name=M2[1..4]
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
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2190 -1460 0 0 {name=x9}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2190 -1390 0 0 {name=x10}
C {libs/core_analog/d2s_converter/d2s_converter.sym} 2190 -1320 0 0 {name=x11}
C {lab_pin.sym} 2360 -1320 0 1 {name=p15 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2350 -1550 0 1 {name=p16 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2700 -1540 0 1 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2700 -1330 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 3120 -1390 0 1 {name=p19 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 2020 -1510 0 0 {name=p20 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 2040 -1530 2 1 {name=p21 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2040 -1550 2 1 {name=p22 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2040 -1410 2 1 {name=p23 sig_type=std_logic lab=VOP1}
C {lab_pin.sym} 2040 -1390 2 1 {name=p24 sig_type=std_logic lab=VON1}
C {lab_pin.sym} 2040 -1460 2 1 {name=p25 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2040 -1480 2 1 {name=p26 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2040 -1340 2 1 {name=p27 sig_type=std_logic lab=VOP3}
C {lab_pin.sym} 2040 -1320 2 1 {name=p28 sig_type=std_logic lab=VON3}
C {lab_pin.sym} 2390 -1510 0 1 {name=p29 sig_type=std_logic lab=s1}
C {lab_pin.sym} 2390 -1440 0 1 {name=p30 sig_type=std_logic lab=s2}
C {lab_pin.sym} 2390 -1370 0 1 {name=p31 sig_type=std_logic lab=s3}
C {lab_pin.sym} 2390 -1300 0 1 {name=p32 sig_type=std_logic lab=s4}
C {lab_pin.sym} 3010 -1450 0 1 {name=p33 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2700 -1440 0 1 {name=p34 sig_type=std_logic lab=phase[1..4]}
C {lab_pin.sym} 2640 -1440 0 0 {name=p35 sig_type=std_logic lab=s[1..4]}
C {devices/code_shown.sym} -455 -880 0 0 {name=Simulation1 only_toplevel=false value="
.param f_ref=350MEG R_div=2 N_div=70
.ic v(vop1)=3.3 v(von1)=0 v(startup)=0 v(VCTRL)=1

.control

save all

OP
show all

tran 100p 2u

remzerovec

write tb_PLL_CP_VCO_model.raw
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
C {lab_pin.sym} 1740 -1570 0 1 {name=p41 sig_type=std_logic lab=AVDD_VCO}
C {lab_pin.sym} 1600 -1430 0 0 {name=p38 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1600 -1510 0 0 {name=p39 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1370 -1460 0 1 {name=p42 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 1320 -1630 0 1 {name=p43 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1330 -1610 0 1 {name=p44 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 260 -1630 0 0 {name=p45 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1670 -1180 0 1 {name=p46 sig_type=std_logic lab=AVSS}
