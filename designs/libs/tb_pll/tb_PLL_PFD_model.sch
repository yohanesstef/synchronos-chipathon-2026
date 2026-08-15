v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1130 -1170 3080 -240 {flags=graph
y1=0
ypos1=-0.45
ypos2=2.55
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
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
vco_out
pre_div
div_out
up
dn
\\"up-dn; up dn -\\"
blank
space
tune"
rawfile=$netlist_dir/tb_PLL_PFD_model.raw
hilight_wave=-1
digital=1
y2=3
sim_type=dc}
B 2 3090 -1160 3890 -760 {flags=graph
y1=-2.0976652e-07
y2=1.028958e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5330011e-06
x2=5.1270747e-06
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
hilight_wave=-1}
B 2 3090 -760 3890 -360 {flags=graph
y1=0.00079
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5330011e-06
x2=5.1270747e-06
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
hilight_wave=-1}
B 2 3890 -1160 4690 -760 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.3846161e-06
x2=9.7624049e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
rawfile=$netlist_dir/tb_PLL_PFD_model.raw
sim_type=tran
color=4
node=vco_out
}
P 4 1 1910 -1580 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} 30 -1560 0 0 0.4 0.4 {}
N 2250 -1620 2280 -1620 {lab=tune}
N 2050 -1620 2060 -1620 {lab=UP}
N 2050 -1570 2060 -1570 {lab=DN}
N 2300 -1850 2300 -1830 {lab=VDD}
N 2300 -1850 2410 -1850 {lab=VDD}
N 2410 -1850 2410 -1830 {lab=VDD}
N 2300 -1770 2300 -1750 {lab=#net1}
N 2360 -1880 2360 -1850 {lab=VDD}
N 2410 -1770 2410 -1620 {lab=tune}
N 2300 -1690 2300 -1680 {lab=tune}
N 2740 -1620 2800 -1620 {lab=vco_out}
N 2730 -1380 2750 -1380 {lab=vco_out}
N 2750 -1620 2750 -1380 {lab=vco_out}
N 2280 -1620 2440 -1620 {lab=tune}
N 2430 -1380 2730 -1380 {lab=vco_out}
N 1760 -1620 1810 -1620 {lab=Ub}
N 1760 -1560 1810 -1560 {lab=Db}
N 1650 -1650 1890 -1650 {lab=VDD}
N 1650 -1530 1890 -1530 {lab=AVSS}
N 1940 -1380 1970 -1380 {lab=div_out}
N 1520 -1560 1540 -1560 {lab=div_outb}
N 1470 -1620 1490 -1620 {lab=refb}
N 1970 -1380 1990 -1380 {lab=div_out}
N 1600 -1380 1840 -1380 {lab=div_outb}
N 1990 -1380 2130 -1380 {lab=div_out}
N 1520 -1380 1600 -1380 {lab=div_outb}
N 1520 -1560 1520 -1380 {lab=div_outb}
N 1490 -1620 1540 -1620 {lab=refb}
N 1300 -1620 1310 -1620 {lab=reference}
N 2300 -1680 2300 -1620 {lab=tune}
C {code_shown.sym} -1520 -1730 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 75 -1188.75 0 0 {name=Simulation only_toplevel=false value="
.options method=gear
VDD VDD 0 3.3
VAVDD AVDD 0 3.3
Vss AVSS 0 0

.options reltol=1e-5 cshunt=1e-15 itl4=50 gmin=1e-12
.options method=gear

* control is for tests when opening the loop
* see the Vcontrol voltage source
.ic v(tune)=2
* reference frequency
.param f_ref = 10MEG
* divider
.param R_div=2
.param N_div=35
* loop filter parameters
.param Ci_filter = 10p
.param Cj_filter = 1p
.param td_ref='1/f_ref' tp_ref='td_ref/2'
Vref reference gnd pulse(0 3.3 0 100p 100p tp_ref td_ref)

.control
set wr_singlescale
set wr_vecnames

*save all
save v(vco_out) v(reference) v(up) v(dn) v(tune)

TRAN 100p 100u
linearize v(vco_out) v(reference) v(up) v(dn) v(tune)
*fft v(vco_out)

write tb_PLL_PFD_model2.raw
wrdata /foss/designs/synchronos-chipathon-2026/designs/libs/scripts/sim_data/tb_PLL_PFD_model2.txt tran.all
.endc
"}
C {lab_wire.sym} 2800 -1620 0 1 {name=p2 sig_type=std_logic lab=vco_out
}
C {lab_wire.sym} 1300 -1620 0 0 {name=p4 sig_type=std_logic lab=reference}
C {capa-2.sym} 2300 -1800 0 0 {name=C1
m=1
value=\{Ci_filter\}
footprint=1206
device=polarized_capacitor}
C {res.sym} 2300 -1720 0 1 {name=R4
value="R='1.4 / (2 * 60e-6 * (2.6 - max(0.0, min(2.59, v(tune)))))'"
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 2360 -1880 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa-2.sym} 2410 -1800 0 0 {name=C2
m=1
value=\{Cj_filter\}
footprint=1206
device=polarized_capacitor}
C {libs/model_pll/CP_model.sym} 2110 -1610 0 0 {name=x2}
C {libs/model_pll/vco_model.sym} 2590 -1610 0 0 {name=x3}
C {libs/model_pll/freq_divider.sym} 2280 -1380 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 2070 -1260 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_PFD_model2.raw tran"
}
C {lab_wire.sym} 2050 -1620 0 0 {name=p1 sig_type=std_logic lab=UP}
C {lab_wire.sym} 2050 -1570 0 0 {name=p10 sig_type=std_logic lab=DN}
C {lab_wire.sym} 2390 -1620 0 0 {name=p11 sig_type=std_logic lab=tune}
C {libs/model_pll/freq_divider.sym} 2410 -2020 0 0 {name=x5 divide_factor=\{R_div\}}
C {lab_wire.sym} 2260 -2020 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1600 -1380 0 0 {name=p3 sig_type=std_logic lab=div_outb}
C {libs/core_analog/pfd/pfd_11gate.sym} 1650 -1590 0 0 {name=x7}
C {lab_wire.sym} 1810 -1620 0 0 {name=p12 sig_type=std_logic lab=Ub}
C {lab_wire.sym} 1810 -1560 0 0 {name=p14 sig_type=std_logic lab=Db}
C {libs/core_analog/pfd_s2d/pfd_s2d.sym} 1890 -1590 0 0 {name=x8}
C {lab_wire.sym} 1970 -1620 0 1 {name=p15 sig_type=std_logic lab=UP}
C {lab_wire.sym} 1970 -1580 0 1 {name=p16 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1970 -1600 0 1 {name=p17 sig_type=std_logic lab=UPb}
C {lab_wire.sym} 1970 -1560 0 1 {name=p18 sig_type=std_logic lab=DNb}
C {libs/core_analog/inv/inv.sym} 1900 -1380 0 1 {name=x11}
C {libs/core_analog/inv/inv.sym} 1410 -1620 0 0 {name=x12}
C {lab_pin.sym} 1920 -1420 2 0 {name=p19 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1920 -1340 0 1 {name=p20 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1390 -1660 2 1 {name=p21 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1390 -1580 0 0 {name=p22 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1890 -1650 2 0 {name=p85 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1890 -1530 0 1 {name=p86 sig_type=std_logic lab=AVSS}
C {lab_wire.sym} 2000 -1380 0 1 {name=p5 sig_type=std_logic lab=div_out}
C {lab_wire.sym} 1480 -1620 0 1 {name=p6 sig_type=std_logic lab=refb}
C {res.sym} 1340 -1620 1 1 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
