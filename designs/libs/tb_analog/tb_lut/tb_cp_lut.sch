v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 -130 -300 -120 {lab=VDD}
N -300 -80 -300 -70 {lab=0}
C {devices/vsource.sym} -300 -100 0 0 {name=V1 value=5 savecurrent=false}
C {devices/gnd.sym} -300 -70 0 0 {name=l1 lab=0}
C {devices/lab_pin.sym} -300 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 40 0 1 {name=p3 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -160 60 0 1 {name=p5 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -220 100 0 1 {name=p7 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -210 120 0 1 {name=p9 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -160 80 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 160 0 1 {name=p15 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -160 180 0 1 {name=p17 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 160 80 0 1 {name=p18 sig_type=std_logic lab=cp_tune_3}
C {devices/lab_pin.sym} 160 100 0 1 {name=p19 sig_type=std_logic lab=cp_tune_2}
C {devices/lab_pin.sym} 160 120 0 1 {name=p20 sig_type=std_logic lab=cp_tune_1}
C {devices/lab_pin.sym} 160 140 0 1 {name=p21 sig_type=std_logic lab=cp_tune_0}
C {devices/lab_pin.sym} 0 20 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 0 240 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 400 0 0 0 {name=s1 only_toplevel=false value="
* 1. Extracted SPICE Subcircuit 
.include /workspace/designs/libs/core_analog/lut/cp_lut.spice

* 2. GF180 Standard Cell Library
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice

* 3. Device Models
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.tran 1n 50n
.save all
.control
  run
  * Expecting output to be Code 3 (0011)
  plot v(cp_tune_3)+6 v(cp_tune_2)+4 v(cp_tune_1)+2 v(cp_tune_0)
.endc"}
C {devices/lab_pin.sym} -240 130 0 1 {name=p2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -160 100 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 120 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 140 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {libs/core_analog/lut/cp_lut.sym} 0 200 0 0 {name=x2}
