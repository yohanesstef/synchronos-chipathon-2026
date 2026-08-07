v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 560 -400 1360 0 {flags=graph
y1=-0.038
y2=3.4
ypos1=0.1339
ypos2=3.5719
divy=5
subdivy=1
unity=1
x1=1.2482538e-06
x2=4.7080619e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6"
node="clk_in
clk_out
rst_n"
digital=1}
N 20 -390 90 -390 {lab=clk_in}
N 90 -390 90 -280 {lab=clk_in}
N 250 -330 250 -320 {lab=VDD}
N 410 -180 430 -180 {lab=clk_out}
N 90 -220 90 -160 {lab=GND}
N 90 -100 90 -80 {lab=VDD}
C {vsource.sym} -190 -50 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -190 -20 0 0 {name=l1 lab=0}
C {vsource.sym} -120 -50 0 0 {name=V3 value="PWL(0 0 10n 0 10.1n 3.3)" savecurrent=false}
C {code_shown.sym} 0 -750 0 0 {name=s1 only_toplevel=false value="* 1. Extracted Netlist and GF180 Standard Cells
.include /foss/designs/synchronos-chipathon-2026/designs/libs/core_analog/pulse_swallow_div/src/pulse_swallow_div_clean.spice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice

* 2. GF180 Base Transistor Models (TT Corner)
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.param f_ref=10MEG
.param td_ref='1/f_ref' tp_ref='td_ref/2'
Vref clk_in gnd pulse(0 3.3 0 10p 10p tp_ref td_ref)

.tran 10n 5u
.save v(clk_in) v(clk_out) v(rst_n)
.control
  run
  *plot v(clk_in) v(clk_out) xlimit 0 500n
  write ys_pulse_swallow_div.raw
.endc"}
C {lab_pin.sym} 20 -390 0 0 {name=p1 sig_type=std_logic lab=clk_in}
C {lab_pin.sym} 430 -180 0 1 {name=p2 sig_type=std_logic lab=clk_out}
C {gnd.sym} -120 -20 0 0 {name=l4 lab=0}
C {lab_pin.sym} -120 -80 0 0 {name=p3 sig_type=std_logic lab=rst_n}
C {gnd.sym} 250 -40 0 0 {name=l5 lab=0}
C {libs/core_analog/pulse_swallow_div/src/pulse_swallow_div.sym} 250 -180 0 0 {name=x1}
C {launcher.sym} 630 30 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/ys_pulse_swallow_div.raw tran"
}
C {lab_pin.sym} -190 -80 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 250 -330 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -260 0 0 {name=p6 sig_type=std_logic lab=rst_n}
C {lab_pin.sym} 90 -220 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 90 -140 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -80 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -120 0 0 {name=p10 sig_type=std_logic lab=GND}
