v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 70 -1050 2020 -120 {flags=graph
y1=0
ypos1=0.3
ypos2=3.3
divy=5
subdivy=1
unity=1
x1=9.9364749e-07
x2=1.9231582e-06
divx=5
subdivx=1
xlabmag=0.5
ylabmag=0.5
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
color="4 5 6 7 8 9 10 16 4 4"
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
rawfile=$netlist_dir/tb_PLL_model.raw
hilight_wave=-1
digital=1
y2=3}
B 2 2030 -1040 2830 -640 {flags=graph
y1=-3.4467793e-08
y2=1.5327951e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9364749e-07
x2=1.9231582e-06
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
B 2 2030 -640 2830 -240 {flags=graph
y1=3.2061109
y2=3.2880309
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9364749e-07
x2=1.9231582e-06
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
P 4 1 850 -1460 {}
T {Testbench to try out the various Xspice 'behavioral' models of PLL components

  * These models have been built assuming a VDD of 3.3V. This is 'hardcoded' in the models  
    but could be parametrized if needed.

  * The PFD reset_delay and the CP current are defined with local parameters inside the models. 

  * The divide_factor of the divider is a parameter you can set for the symbol instance. 
} -1030 -1440 0 0 0.4 0.4 {}
N 280 -1410 280 -1380 {lab=GND}
N 280 -1490 280 -1470 {lab=reference}
N 680 -1440 710 -1440 {lab=div_out}
N 680 -1440 680 -1260 {lab=div_out}
N 1190 -1500 1220 -1500 {lab=tune}
N 990 -1500 1000 -1500 {lab=UP}
N 990 -1450 1000 -1450 {lab=DN}
N 930 -1440 960 -1440 {lab=DNb}
N 930 -1480 960 -1480 {lab=UPb}
N 1240 -1730 1240 -1710 {lab=VDD}
N 1240 -1730 1350 -1730 {lab=VDD}
N 1350 -1730 1350 -1710 {lab=VDD}
N 1240 -1650 1240 -1630 {lab=#net1}
N 1300 -1760 1300 -1730 {lab=VDD}
N 1350 -1650 1350 -1500 {lab=tune}
N 1240 -1570 1240 -1560 {lab=#net2}
N 280 -1500 280 -1490 {lab=reference}
N 280 -1500 340 -1500 {lab=reference}
N 1680 -1500 1740 -1500 {lab=vco_out}
N 1670 -1260 1690 -1260 {lab=vco_out}
N 1690 -1500 1690 -1260 {lab=vco_out}
N 640 -1500 710 -1500 {lab=pre_div}
N 680 -1260 1370 -1260 {lab=div_out}
N 1220 -1500 1380 -1500 {lab=tune}
C {devices/code_shown.sym} -275 -1158.75 0 0 {name=Simulation only_toplevel=false value="
.control

    save all
    TRAN 1n 500u 0 100p
    write tb_PLL_model.raw
    
.endc
"}
C {netlist.sym} -267.5 -952.5 0 0 {name=s1 value="
.options method=gear
VDD VDD 0 3.3
* control is for tests when opening the loop
* see the Vcontrol voltage source
.ic v(tune)=3.2
* reference frequency
.param f_ref = 10MEG
* divider
.param R_div=10
.param N_div=70
* loop filter parameters
.param Ci_filter = 10p
.param Cj_filter = 1p
"}
C {lab_wire.sym} 1740 -1500 0 1 {name=p2 sig_type=std_logic lab=vco_out
}
C {lab_wire.sym} 1330 -1260 0 0 {name=p3 sig_type=std_logic lab=div_out
}
C {sqwsource.sym} 280 -1440 0 0 {name=Vreference vhi=3.3 freq=\{f_ref\}}
C {gnd.sym} 280 -1380 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 280 -1490 0 0 {name=p4 sig_type=std_logic lab=reference}
C {lab_wire.sym} 930 -1500 0 1 {name=p5 sig_type=std_logic lab=UP}
C {lab_wire.sym} 930 -1460 0 1 {name=p6 sig_type=std_logic lab=DN}
C {lab_wire.sym} 930 -1440 0 1 {name=p7 sig_type=std_logic lab=DNb}
C {lab_wire.sym} 930 -1480 0 1 {name=p8 sig_type=std_logic lab=UPb}
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
C {noconn.sym} 960 -1440 0 1 {name=l6}
C {noconn.sym} 960 -1480 0 1 {name=l7}
C {capa-2.sym} 1350 -1680 0 0 {name=C2
m=1
value=\{Cj_filter\}
footprint=1206
device=polarized_capacitor}
C {libs/model_pll/pfd_model.sym} 780 -1470 0 0 {name=x1}
C {libs/model_pll/CP_model.sym} 1050 -1490 0 0 {name=x2}
C {libs/model_pll/vco_model.sym} 1530 -1490 0 0 {name=x3}
C {libs/model_pll/freq_divider.sym} 1520 -1260 0 1 {name=x4 divide_factor=\{N_div\}}
C {devices/launcher.sym} 1010 -1140 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_PLL_model.raw tran"
}
C {ammeter.sym} 1240 -1530 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 990 -1500 0 0 {name=p1 sig_type=std_logic lab=UP}
C {lab_wire.sym} 990 -1450 0 0 {name=p10 sig_type=std_logic lab=DN}
C {lab_wire.sym} 1330 -1500 0 0 {name=p11 sig_type=std_logic lab=tune}
C {libs/model_pll/freq_divider.sym} 490 -1500 0 0 {name=x5 divide_factor=\{R_div\}}
C {lab_wire.sym} 700 -1500 0 0 {name=p12 sig_type=std_logic lab=pre_div}
