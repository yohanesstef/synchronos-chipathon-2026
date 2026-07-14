v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -200 90 -200 {lab=#net1}
N 20 -200 30 -200 {lab=0}
N 20 -140 40 -140 {lab=rst_n}
N 40 -260 40 -140 {lab=rst_n}
N 40 -260 90 -260 {lab=rst_n}
N 20 -390 90 -390 {lab=clk_in}
N 90 -390 90 -280 {lab=clk_in}
N 70 -220 70 -200 {lab=#net1}
N 70 -330 250 -330 {lab=#net1}
N 250 -330 250 -320 {lab=#net1}
N 20 -80 70 -80 {lab=#net1}
N 70 -200 70 -80 {lab=#net1}
N 20 -330 20 -240 {lab=0}
N 410 -180 430 -180 {lab=clk_out}
N 80 -80 90 -80 {lab=0}
N 80 -100 80 -80 {lab=0}
N 80 -180 90 -180 {lab=0}
N 80 -140 90 -140 {lab=0}
N 80 -160 80 -140 {lab=0}
N 80 -120 90 -120 {lab=0}
N 80 -140 80 -120 {lab=0}
N 80 -100 90 -100 {lab=0}
N 80 -120 80 -100 {lab=0}
N 30 -210 30 -200 {lab=0}
N -10 -210 30 -210 {lab=0}
N -10 -210 -10 -200 {lab=0}
N 70 -220 90 -220 {lab=#net1}
N 70 -330 70 -220 {lab=#net1}
N 80 -160 90 -160 {lab=0}
N 80 -180 80 -160 {lab=0}
C {pulse_swallow_div.sym} 250 -180 0 0 {name=x1}
C {vsource.sym} 20 -50 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 20 -20 0 0 {name=l1 lab=0}
C {vsource.sym} 20 -360 0 0 {name=V2 value="PULSE(0 3.3 0 50p 50p 2.03n 4.16n)" savecurrent=false}
C {gnd.sym} 20 -240 0 0 {name=l2 lab=0}
C {vsource.sym} 20 -170 2 0 {name=V3 value="PWL(0 0 10n 0 10.1n 3.3)" savecurrent=false}
C {code_shown.sym} 470 -350 0 0 {name=s1 only_toplevel=false value="* 1. Extracted Netlist and GF180 Standard Cells
.include /workspace/designs/libs/pulse_swallow_div/src/pulse_swallow_div_clean.spice
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice

* 2. GF180 Base Transistor Models (TT Corner)
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.tran 10p 500n
.save all
.control
  run
  plot v(clk_in) v(clk_out) xlimit 0 500n
  write pulse_swallow_div.raw
.endc"}
C {lab_pin.sym} 90 -370 0 0 {name=p1 sig_type=std_logic lab=clk_in}
C {lab_pin.sym} 430 -180 0 1 {name=p2 sig_type=std_logic lab=clk_out}
C {gnd.sym} 80 -80 0 0 {name=l3 lab=0}
C {gnd.sym} -10 -200 0 0 {name=l4 lab=0}
C {lab_pin.sym} 40 -240 0 1 {name=p3 sig_type=std_logic lab=rst_n}
C {gnd.sym} 250 -40 0 0 {name=l5 lab=0}
