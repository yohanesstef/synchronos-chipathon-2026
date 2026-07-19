v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {devices/vsource.sym} -300 -100 0 0 {name=V1 value=5 savecurrent=false}
C {devices/gnd.sym} -300 -70 0 0 {name=l1 lab=0}
C {devices/lab_pin.sym} -300 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -200 -100 0 0 {name=V2 value="PWL(0 0 10n 0 10.1n 5)" savecurrent=false}
C {devices/gnd.sym} -200 -70 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} -200 -130 0 0 {name=p2 sig_type=std_logic lab=rstn}
C {devices/vsource.sym} -100 -100 0 0 {name=V3 value="PULSE(0 5 0 1n 1n 49n 100n)" savecurrent=false}
C {devices/gnd.sym} -100 -70 0 0 {name=l3 lab=0}
C {devices/lab_pin.sym} -100 -130 0 0 {name=p3 sig_type=std_logic lab=sclk}
C {devices/vsource.sym} 0 -100 0 0 {name=V4 value="PWL(0 5 200n 5 200.1n 0 400n 0 400.1n 5 600n 5 600.1n 0)" savecurrent=false}
C {devices/gnd.sym} 0 -70 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 0 -130 0 0 {name=p4 sig_type=std_logic lab=sdin}
C {devices/vsource.sym} 100 -100 0 0 {name=V5 value="PWL(0 0 820n 0 820.1n 5 850n 5 850.1n 0)" savecurrent=false}
C {devices/gnd.sym} 100 -70 0 0 {name=l5 lab=0}
C {devices/lab_pin.sym} 100 -130 0 0 {name=p5 sig_type=std_logic lab=latch}
C {devices/lab_pin.sym} -160 120 0 0 {name=p6 sig_type=std_logic lab=sclk}
C {devices/lab_pin.sym} -160 160 0 0 {name=p7 sig_type=std_logic lab=sdin}
C {devices/lab_pin.sym} -160 200 0 0 {name=p8 sig_type=std_logic lab=latch}
C {devices/lab_pin.sym} -160 240 0 0 {name=p9 sig_type=std_logic lab=rstn}
C {devices/lab_pin.sym} 160 120 0 1 {name=p10 sig_type=std_logic lab=div_ctrl_7}
C {devices/lab_pin.sym} 160 140 0 1 {name=p11 sig_type=std_logic lab=div_ctrl_6}
C {devices/lab_pin.sym} 160 160 0 1 {name=p12 sig_type=std_logic lab=div_ctrl_5}
C {devices/lab_pin.sym} 160 180 0 1 {name=p13 sig_type=std_logic lab=div_ctrl_4}
C {devices/lab_pin.sym} 160 200 0 1 {name=p14 sig_type=std_logic lab=div_ctrl_3}
C {devices/lab_pin.sym} 160 220 0 1 {name=p15 sig_type=std_logic lab=div_ctrl_2}
C {devices/lab_pin.sym} 160 240 0 1 {name=p16 sig_type=std_logic lab=div_ctrl_1}
C {devices/lab_pin.sym} 160 260 0 1 {name=p17 sig_type=std_logic lab=div_ctrl_0}
C {devices/lab_pin.sym} 0 60 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 0 340 0 0 {name=l6 lab=0}
C {devices/code_shown.sym} 400 0 0 0 {name=s1 only_toplevel=false value="
* 1. Extracted SPICE Subcircuit (Ensure name matches your LVS extraction)
.include /workspace/designs/libs/core_analog/spi/spi_to_parallel.spice

* 2. GF180 Standard Cell Library
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice

* 3. Device Models
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.tran 1n 1000n
.save all
.control
  run
  * Plot 1: The Input Stimulus
  plot v(sclk)+12 v(sdin)+6 v(latch)
  
  * Plot 2: The Output Bus (with escaped brackets for Ngspice)
plot v(div_ctrl_7)+14 v(div_ctrl_6)+12 v(div_ctrl_5)+10 v(div_ctrl_4)+8 v(div_ctrl_3)+6 v(div_ctrl_2)+4 v(div_ctrl_1)+2 v(div_ctrl_0)
.endc"}
C {libs/core_analog/spi/spi_to_parallel.sym} 0 200 0 0 {name=x2}
