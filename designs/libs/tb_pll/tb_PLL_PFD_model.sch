v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 70 -1050 2020 -120 {flags=graph
y1=0
ypos1=0.75
ypos2=3.75
divy=5
subdivy=1
unity=1
x1=0.00017946383
x2=0.00018396743
divx=5
subdivx=1
xlabmag=0.5
ylabmag=0.5
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
color="4 5 6 7 8 9 10 11 12 13"
node="reference
div_out
vco_out
pre_divb
div_outb
up
dn
\\"up-dn; up dn -\\"
blank
tune"
rawfile=$netlist_dir/tb_PLL_PFD_model.raw
hilight_wave=-1
digital=1
y2=3}
B 2 2030 -1040 2830 -640 {flags=graph
y1=-1.5e-05
y2=0.0003
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00017946383
x2=0.00018396743
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas1)
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
rawfile=$netlist_dir/tb_PLL_PFD_model.raw}
B 2 2030 -640 2830 -240 {flags=graph
y1=1.1e-05
y2=2.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00017946383
x2=0.00018396743
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=tune
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
rawfile=$netlist_dir/tb_PLL_PFD_model.raw}
P 4 1 830 -1460 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -1030 -1440 0 0 0.4 0.4 {}
N 1190 -1500 1220 -1500 {lab=tune}
N 990 -1500 1000 -1500 {lab=UP}
N 990 -1450 1000 -1450 {lab=DN}
N 1240 -1730 1240 -1710 {lab=VDD}
N 1240 -1730 1350 -1730 {lab=VDD}
N 1350 -1730 1350 -1710 {lab=VDD}
N 1240 -1650 1240 -1630 {lab=#net1}
N 1300 -1760 1300 -1730 {lab=VDD}
N 1350 -1650 1350 -1500 {lab=tune}
N 1240 -1570 1240 -1560 {lab=#net2}
N 1680 -1500 1740 -1500 {lab=vco_out}
N 1670 -1260 1690 -1260 {lab=vco_out}
N 1690 -1500 1690 -1260 {lab=vco_out}
N 1220 -1500 1380 -1500 {lab=tune}
N 910 -1440 940 -1440 {lab=DB}
N 910 -1500 940 -1500 {lab=UB}
N 620 -1500 690 -1500 {lab=pre_divb}
N 1995 -1935 1995 -1885 {lab=U}
N 1955 -1965 1955 -1855 {lab=Ub}
N 1995 -1855 2005 -1855 {lab=GND}
N 2005 -1855 2005 -1825 {lab=GND}
N 1995 -1825 2005 -1825 {lab=GND}
N 1995 -1965 2005 -1965 {lab=AVDD}
N 2005 -1995 2005 -1965 {lab=AVDD}
N 1995 -1995 2005 -1995 {lab=AVDD}
N 1995 -2025 1995 -1995 {lab=AVDD}
N 1995 -1825 1995 -1795 {lab=GND}
N 2255 -2175 2255 -2005 {lab=U_delay}
N 2195 -2175 2195 -2005 {lab=U}
N 2225 -2015 2225 -2005 {lab=GND}
N 2225 -2015 2275 -2015 {lab=GND}
N 2225 -2175 2225 -2165 {lab=AVDD}
N 2225 -2165 2275 -2165 {lab=AVDD}
N 2455 -2115 2455 -2065 {lab=UPB}
N 2415 -2145 2415 -2035 {lab=U_delay}
N 2455 -2035 2465 -2035 {lab=GND}
N 2465 -2035 2465 -2005 {lab=GND}
N 2455 -2005 2465 -2005 {lab=GND}
N 2455 -2145 2465 -2145 {lab=AVDD}
N 2465 -2175 2465 -2145 {lab=AVDD}
N 2455 -2175 2465 -2175 {lab=AVDD}
N 2455 -2205 2455 -2175 {lab=AVDD}
N 2455 -2005 2455 -1975 {lab=GND}
N 2225 -1845 2225 -1795 {lab=U_B}
N 2185 -1875 2185 -1765 {lab=U}
N 2225 -1765 2235 -1765 {lab=GND}
N 2235 -1765 2235 -1735 {lab=GND}
N 2225 -1735 2235 -1735 {lab=GND}
N 2225 -1875 2235 -1875 {lab=AVDD}
N 2235 -1905 2235 -1875 {lab=AVDD}
N 2225 -1905 2235 -1905 {lab=AVDD}
N 2225 -1935 2225 -1905 {lab=AVDD}
N 2225 -1735 2225 -1705 {lab=GND}
N 2455 -1835 2455 -1785 {lab=UP}
N 2415 -1865 2415 -1755 {lab=U_B}
N 2455 -1755 2465 -1755 {lab=GND}
N 2465 -1755 2465 -1725 {lab=GND}
N 2455 -1725 2465 -1725 {lab=GND}
N 2455 -1865 2465 -1865 {lab=AVDD}
N 2465 -1895 2465 -1865 {lab=AVDD}
N 2455 -1895 2465 -1895 {lab=AVDD}
N 2455 -1925 2455 -1895 {lab=AVDD}
N 2455 -1725 2455 -1695 {lab=GND}
N 1995 -1915 2105 -1915 {lab=U}
N 2105 -2105 2105 -1915 {lab=U}
N 2105 -2105 2195 -2105 {lab=U}
N 2105 -1915 2105 -1825 {lab=U}
N 2105 -1825 2185 -1825 {lab=U}
N 2255 -2095 2415 -2095 {lab=U_delay}
N 2225 -1825 2415 -1825 {lab=U_B}
N 1995 -1375 1995 -1325 {lab=D}
N 1955 -1405 1955 -1295 {lab=Db}
N 1995 -1295 2005 -1295 {lab=GND}
N 2005 -1295 2005 -1265 {lab=GND}
N 1995 -1265 2005 -1265 {lab=GND}
N 1995 -1405 2005 -1405 {lab=AVDD}
N 2005 -1435 2005 -1405 {lab=AVDD}
N 1995 -1435 2005 -1435 {lab=AVDD}
N 1995 -1465 1995 -1435 {lab=AVDD}
N 1995 -1265 1995 -1235 {lab=GND}
N 2255 -1615 2255 -1445 {lab=D_delay}
N 2195 -1615 2195 -1445 {lab=D}
N 2225 -1455 2225 -1445 {lab=GND}
N 2225 -1455 2275 -1455 {lab=GND}
N 2225 -1615 2225 -1605 {lab=AVDD}
N 2225 -1605 2275 -1605 {lab=AVDD}
N 2455 -1555 2455 -1505 {lab=DNB}
N 2415 -1585 2415 -1475 {lab=D_delay}
N 2455 -1475 2465 -1475 {lab=GND}
N 2465 -1475 2465 -1445 {lab=GND}
N 2455 -1445 2465 -1445 {lab=GND}
N 2455 -1585 2465 -1585 {lab=AVDD}
N 2465 -1615 2465 -1585 {lab=AVDD}
N 2455 -1615 2465 -1615 {lab=AVDD}
N 2455 -1645 2455 -1615 {lab=AVDD}
N 2455 -1445 2455 -1415 {lab=GND}
N 2225 -1285 2225 -1235 {lab=D_B}
N 2185 -1315 2185 -1205 {lab=D}
N 2225 -1205 2235 -1205 {lab=GND}
N 2235 -1205 2235 -1175 {lab=GND}
N 2225 -1175 2235 -1175 {lab=GND}
N 2225 -1315 2235 -1315 {lab=AVDD}
N 2235 -1345 2235 -1315 {lab=AVDD}
N 2225 -1345 2235 -1345 {lab=AVDD}
N 2225 -1375 2225 -1345 {lab=AVDD}
N 2225 -1175 2225 -1145 {lab=GND}
N 2455 -1275 2455 -1225 {lab=DN}
N 2415 -1305 2415 -1195 {lab=D_B}
N 2455 -1195 2465 -1195 {lab=GND}
N 2465 -1195 2465 -1165 {lab=GND}
N 2455 -1165 2465 -1165 {lab=GND}
N 2455 -1305 2465 -1305 {lab=AVDD}
N 2465 -1335 2465 -1305 {lab=AVDD}
N 2455 -1335 2465 -1335 {lab=AVDD}
N 2455 -1365 2455 -1335 {lab=AVDD}
N 2455 -1165 2455 -1135 {lab=GND}
N 1995 -1355 2105 -1355 {lab=D}
N 2105 -1545 2105 -1355 {lab=D}
N 2105 -1545 2195 -1545 {lab=D}
N 2105 -1355 2105 -1265 {lab=D}
N 2105 -1265 2185 -1265 {lab=D}
N 2255 -1535 2415 -1535 {lab=D_delay}
N 2225 -1265 2415 -1265 {lab=D_B}
N 560 -1500 560 -1450 {lab=pre_divb}
N 520 -1530 520 -1420 {lab=reference}
N 560 -1420 570 -1420 {lab=AVSS}
N 570 -1420 570 -1390 {lab=AVSS}
N 560 -1390 570 -1390 {lab=AVSS}
N 560 -1530 570 -1530 {lab=AVDD}
N 570 -1560 570 -1530 {lab=AVDD}
N 560 -1560 570 -1560 {lab=AVDD}
N 560 -1590 560 -1560 {lab=AVDD}
N 560 -1500 620 -1500 {lab=pre_divb}
N 490 -1500 520 -1500 {lab=reference}
N 480 -1500 490 -1500 {lab=reference}
N 1200 -1280 1200 -1230 {lab=div_outb}
N 1240 -1310 1240 -1200 {lab=div_out}
N 1190 -1200 1200 -1200 {lab=GND}
N 1190 -1200 1190 -1170 {lab=GND}
N 1190 -1170 1200 -1170 {lab=GND}
N 1190 -1310 1200 -1310 {lab=AVDD}
N 1190 -1340 1190 -1310 {lab=AVDD}
N 1190 -1340 1200 -1340 {lab=AVDD}
N 1200 -1370 1200 -1340 {lab=AVDD}
N 1200 -1170 1200 -1140 {lab=GND}
N 1240 -1260 1370 -1260 {lab=div_out}
N 670 -1260 1200 -1260 {lab=div_outb}
N 670 -1440 670 -1260 {lab=div_outb}
N 670 -1440 690 -1440 {lab=div_outb}
C {lab_wire.sym} 1740 -1500 0 1 {name=p2 sig_type=std_logic lab=vco_out
}
C {lab_wire.sym} 1330 -1260 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {capa-2.sym} 1240 -1680 0 0 {name=C1
m=1
value=\{Ci_filter\}
footprint=1206
device=polarized_capacitor}
C {res.sym} 1240 -1600 0 1 {name=R4
value="R='1.4 / (2 * 60e-6 * (2.6 - max(0.0, min(2.59, v(tune)))))'"
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1300 -1760 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa-2.sym} 1350 -1680 0 0 {name=C2
m=1
value=\{Cj_filter\}
footprint=1206
device=polarized_capacitor}
C {libs/model_pll/CP_model.sym} 1050 -1490 0 0 {name=x2}
C {libs/model_pll/vco_model.sym} 1530 -1490 0 0 {name=x3}
C {libs/model_pll/freq_divider.sym} 1520 -1260 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 1010 -1140 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_PFD_model.raw tran"
}
C {ammeter.sym} 1240 -1530 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 990 -1500 0 0 {name=p1 sig_type=std_logic lab=UP}
C {lab_wire.sym} 990 -1450 0 0 {name=p10 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1330 -1500 0 0 {name=p11 sig_type=std_logic lab=tune}
C {code_shown.sym} -1390 -1520 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 910 -1440 0 1 {name=p15 sig_type=std_logic lab=DB}
C {lab_wire.sym} 910 -1500 0 1 {name=p16 sig_type=std_logic lab=UB}
C {lab_wire.sym} 520 -1500 0 0 {name=p17 sig_type=std_logic lab=reference}
C {libs/core_analog/pfd/pfd_11gate.sym} 800 -1470 0 0 {name=x1}
C {lab_pin.sym} 800 -1410 0 1 {name=p18 sig_type=std_logic lab=AVSS}
C {symbols/pfet_03v3.sym} 1975 -1965 0 0 {name=M15[0:1]
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
C {symbols/nfet_03v3.sym} 1975 -1855 0 0 {name=M16[0:1]
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
C {lab_wire.sym} 1995 -1795 0 0 {name=p116 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1955 -1915 0 0 {name=p117 sig_type=std_logic lab=Ub}
C {lab_wire.sym} 2105 -1955 0 1 {name=p118 sig_type=std_logic lab=U}
C {symbols/pfet_03v3.sym} 2225 -2195 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 2225 -1985 3 0 {name=M2
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
C {lab_wire.sym} 2275 -2015 0 1 {name=p119 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2255 -2095 0 1 {name=p121 sig_type=std_logic lab=U_delay}
C {lab_wire.sym} 2225 -2215 0 1 {name=p122 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2455 -1975 0 0 {name=p125 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2455 -2095 0 1 {name=p126 sig_type=std_logic lab=UPB}
C {lab_wire.sym} 2225 -1705 0 0 {name=p128 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2225 -1825 0 1 {name=p129 sig_type=std_logic lab=U_B}
C {symbols/pfet_03v3.sym} 2435 -2145 0 0 {name=M17[0:7]
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
C {symbols/nfet_03v3.sym} 2435 -2035 0 0 {name=M18[0:7]
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
C {symbols/pfet_03v3.sym} 2205 -1875 0 0 {name=M19[0:1]
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
C {symbols/nfet_03v3.sym} 2205 -1765 0 0 {name=M20[0:1]
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
C {lab_wire.sym} 2455 -1695 0 0 {name=p131 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2455 -1815 0 1 {name=p132 sig_type=std_logic lab=UP}
C {symbols/pfet_03v3.sym} 2435 -1865 0 0 {name=M21[0:7]
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
C {symbols/nfet_03v3.sym} 2435 -1755 0 0 {name=M22[0:7]
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
C {symbols/pfet_03v3.sym} 1975 -1405 0 0 {name=M23[0:1]
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
C {symbols/nfet_03v3.sym} 1975 -1295 0 0 {name=M24[0:1]
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
C {lab_wire.sym} 1995 -1235 0 0 {name=p134 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1955 -1355 0 0 {name=p135 sig_type=std_logic lab=Db}
C {lab_wire.sym} 2105 -1395 0 1 {name=p136 sig_type=std_logic lab=D}
C {lab_wire.sym} 2275 -1455 0 1 {name=p137 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2255 -1535 0 1 {name=p139 sig_type=std_logic lab=D_delay}
C {lab_wire.sym} 2225 -1655 0 1 {name=p140 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2455 -1415 0 0 {name=p143 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2455 -1535 0 1 {name=p144 sig_type=std_logic lab=DNB}
C {lab_wire.sym} 2225 -1145 0 0 {name=p146 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2225 -1265 0 1 {name=p147 sig_type=std_logic lab=D_B}
C {symbols/pfet_03v3.sym} 2435 -1585 0 0 {name=M25[0:7]
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
C {symbols/nfet_03v3.sym} 2435 -1475 0 0 {name=M26[0:7]
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
C {symbols/pfet_03v3.sym} 2205 -1315 0 0 {name=M27[0:1]
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
C {symbols/nfet_03v3.sym} 2205 -1205 0 0 {name=M28[0:1]
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
C {lab_wire.sym} 2455 -1135 0 0 {name=p149 sig_type=std_logic lab=GND}
C {lab_wire.sym} 2455 -1255 0 1 {name=p150 sig_type=std_logic lab=DN}
C {symbols/pfet_03v3.sym} 2435 -1305 0 0 {name=M29[0:7]
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
C {symbols/nfet_03v3.sym} 2435 -1195 0 0 {name=M30[0:7]
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
C {symbols/pfet_03v3.sym} 2225 -1635 1 0 {name=M3
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
C {symbols/nfet_03v3.sym} 2225 -1425 3 0 {name=M4
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
C {lab_pin.sym} 800 -1530 0 1 {name=p19 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2225 -1375 0 1 {name=p75 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2455 -1365 0 1 {name=p76 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2455 -1645 0 1 {name=p77 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2275 -1605 0 1 {name=p78 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2225 -1935 0 1 {name=p79 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2225 -1965 0 1 {name=p80 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2275 -2165 0 1 {name=p81 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2455 -2205 0 1 {name=p82 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2455 -1925 0 1 {name=p83 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1995 -2025 0 1 {name=p84 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 2225 -1405 0 1 {name=p85 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1995 -1465 0 1 {name=p86 sig_type=std_logic lab=AVDD}
C {symbols/pfet_03v3.sym} 540 -1530 0 0 {name=M3[0:1]
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
C {symbols/nfet_03v3.sym} 540 -1420 0 0 {name=M4[0:1]
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
C {lab_pin.sym} 2390 -1130 0 1 {name=p90 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 620 -1500 0 1 {name=p91 sig_type=std_logic lab=pre_divb}
C {devices/code_shown.sym} -1015 -1198.75 0 0 {name=Simulation1 only_toplevel=false value="
.options method=gear
VDD VDD 0 3.3
VSS VSS 0 0
VAVDD AVDD 0 3.3
VAVSS AVSS 0 0
* control is for tests when opening the loop
* see the Vcontrol voltage source
.ic v(tune)=2
* reference frequency
.param f_ref = 1MEG
* divider
.param R_div=2
.param N_div=10
* loop filter parameters
.param Ci_filter = 10p
.param Cj_filter = 1p
.param td_ref='1/f_ref' tp_ref='td_ref/2'
Vref reference gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.control
set wr_singlescale
set wr_vecnames

*save all
save v(vco_out) v(reference) v(up) v(dn) v(tune) v(pre_divb) v(div_out)  v(div_outb)
TRAN 10n 200u
remzerovec

write tb_PLL_PFD_model.raw
*wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb_PLL_div_model.txt tran.all
.endc
"}
C {symbols/pfet_03v3.sym} 1220 -1310 0 1 {name=M1[0:1]
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
C {symbols/nfet_03v3.sym} 1220 -1200 0 1 {name=M2[0:1]
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
C {lab_wire.sym} 1200 -1140 0 1 {name=p87 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1200 -1370 0 0 {name=p89 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 560 -1590 0 1 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 570 -1390 0 1 {name=p6 sig_type=std_logic lab=AVSS}
C {lab_wire.sym} 670 -1280 0 0 {name=p4 sig_type=std_logic lab=div_outb}
