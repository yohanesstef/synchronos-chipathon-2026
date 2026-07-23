v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -240 280 -160 280 {lab=sda_oe}
N -260 240 -160 240 {lab=sda}
N -280 330 -260 330 {lab=0}
N -280 240 -260 240 {lab=sda}
N -280 240 -280 250 {lab=sda}
N -290 280 -280 280 {lab=0}
N -290 280 -290 310 {lab=0}
N -290 310 -280 310 {lab=0}
N -280 310 -280 330 {lab=0}
C {devices/vsource.sym} -300 -100 0 0 {name=V1 value=5 savecurrent=false}
C {devices/gnd.sym} -300 -70 0 0 {name=l1 lab=0}
C {devices/lab_pin.sym} -300 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -200 -100 0 0 {name=V2 value="PWL(0 0 300n 0 300.1n 5)" savecurrent=false}
C {devices/gnd.sym} -200 -70 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} -200 -130 0 0 {name=p2 sig_type=std_logic lab=rstn}
C {devices/vsource.sym} -100 -100 0 0 {name=V3 value="PULSE(0 5 0 1n 1n 49n 100n)" savecurrent=false}
C {devices/gnd.sym} -100 -70 0 0 {name=l3 lab=0}
C {devices/lab_pin.sym} -100 -130 0 0 {name=p3 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 0 -100 0 0 {name=V4 value="PWL(0 5 2u 5 2.1u 0 3u 0 3.1u 5 4.5u 5 4.6u 0 5.5u 0 5.6u 5 7.0u 5 7.1u 0 8.0u 0 8.1u 5 9.5u 5 9.6u 0 10.5u 0 10.6u 5 12.0u 5 12.1u 0 13.0u 0 13.1u 5 14.5u 5 14.6u 0 15.5u 0 15.6u 5 17.0u 5 17.1u 0 18.0u 0 18.1u 5 19.5u 5 19.6u 0 20.5u 0 20.6u 5 22.0u 5 22.1u 0 23.0u 0 23.1u 5 24.5u 5 24.6u 0 25.5u 0 25.6u 5 27.0u 5 27.1u 0 28.0u 0 28.1u 5 29.5u 5 29.6u 0 30.5u 0 30.6u 5 32.0u 5 32.1u 0 33.0u 0 33.1u 5 34.5u 5 34.6u 0 35.5u 0 35.6u 5 37.0u 5 37.1u 0 38.0u 0 38.1u 5 39.5u 5 39.6u 0 40.5u 0 40.6u 5 42.0u 5 42.1u 0 43.0u 0 43.1u 5 44.5u 5 44.6u 0 45.5u 0 45.6u 5 47.0u 5 47.1u 0 48.0u 0 48.1u 5 50u 5)" savecurrent=false}
C {devices/gnd.sym} 0 -70 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 0 -130 0 0 {name=p4 sig_type=std_logic lab=scl}
C {devices/vsource.sym} 100 -100 0 0 {name=V5 value="PWL(0 5 1u 5 1.1u 0 2.5u 0 2.6u 5 5.0u 5 5.1u 0 7.5u 0 7.6u 5 10.0u 5 10.1u 0 12.5u 0 12.6u 0 15.0u 0 15.1u 0 17.5u 0 17.6u 0 20.0u 0 20.1u 0 22.5u 0 22.6u 5 25.0u 5 25.1u 5 27.5u 5 27.6u 5 30.0u 5 30.1u 0 32.5u 0 32.6u 0 35.0u 0 35.1u 5 37.5u 5 37.6u 5 40.0u 5 40.1u 0 42.5u 0 42.6u 0 45.0u 0 45.1u 5 47.5u 5 47.6u 0 48.5u 0 48.6u 5)" savecurrent=false}
C {devices/gnd.sym} 100 -70 0 0 {name=l5 lab=0}
C {res.sym} 100 -160 0 0 {name=R1 value=1k footprint=1206 device=resistor m=1}
C {devices/lab_pin.sym} 100 -190 0 0 {name=p5 sig_type=std_logic lab=sda}
C {devices/lab_pin.sym} -160 120 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -160 160 0 0 {name=p7 sig_type=std_logic lab=rstn}
C {devices/lab_pin.sym} -160 200 0 0 {name=p8 sig_type=std_logic lab=scl}
C {devices/lab_pin.sym} -160 240 0 0 {name=p9 sig_type=std_logic lab=sda}
C {devices/lab_pin.sym} -160 280 0 0 {name=p19 sig_type=std_logic lab=sda_oe}
C {devices/lab_pin.sym} 160 120 0 1 {name=p10 sig_type=std_logic lab=div_ctrl_15}
C {devices/lab_pin.sym} 160 140 0 1 {name=p11 sig_type=std_logic lab=div_ctrl_14}
C {devices/lab_pin.sym} 160 160 0 1 {name=p12 sig_type=std_logic lab=div_ctrl_13}
C {devices/lab_pin.sym} 160 180 0 1 {name=p13 sig_type=std_logic lab=div_ctrl_12}
C {devices/lab_pin.sym} 160 200 0 1 {name=p14 sig_type=std_logic lab=div_ctrl_11}
C {devices/lab_pin.sym} 160 220 0 1 {name=p15 sig_type=std_logic lab=div_ctrl_10}
C {devices/lab_pin.sym} 160 240 0 1 {name=p16 sig_type=std_logic lab=div_ctrl_9}
C {devices/lab_pin.sym} 160 260 0 1 {name=p17 sig_type=std_logic lab=div_ctrl_8}
C {devices/lab_pin.sym} 160 280 0 1 {name=p18 sig_type=std_logic lab=div_ctrl_7}
C {devices/lab_pin.sym} 160 300 0 1 {name=p20 sig_type=std_logic lab=div_ctrl_6}
C {devices/lab_pin.sym} 160 320 0 1 {name=p21 sig_type=std_logic lab=div_ctrl_5}
C {devices/lab_pin.sym} 160 340 0 1 {name=p22 sig_type=std_logic lab=div_ctrl_4}
C {devices/lab_pin.sym} 160 360 0 1 {name=p23 sig_type=std_logic lab=div_ctrl_3}
C {devices/lab_pin.sym} 160 380 0 1 {name=p24 sig_type=std_logic lab=div_ctrl_2}
C {devices/lab_pin.sym} 160 400 0 1 {name=p25 sig_type=std_logic lab=div_ctrl_1}
C {devices/lab_pin.sym} 160 420 0 1 {name=p26 sig_type=std_logic lab=div_ctrl_0}
C {devices/lab_pin.sym} 0 80 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 0 460 0 0 {name=l6 lab=0}
C {devices/gnd.sym} -260 330 0 0 {name=l7 lab=0}
C {symbols/nfet_03v3.sym} -260 280 0 1 {name=M1
L=0.28u
W=0.22u
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
C {devices/code_shown.sym} 400 100 0 0 {name=s1 only_toplevel=false value="
* 1. Extracted SPICE Subcircuit (Ensure name matches LVS extraction)
.include /workspace/designs/libs/core_analog/I2C/i2c_target.spice
* 2. GF180 Standard Cell Library
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
* 3. Device Models
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.tran 10n 55u
.save all
.control
  run
  * Plot 1: Input Stimulus (Notice SDA will dip slightly below 5V when ACK'd)
  plot v(scl)+6 v(sda) v(sda_oe)-6
  * Plot 2: Output Bus (Cleaned up without escaped brackets!)
  plot v(div_ctrl_15)+30 v(div_ctrl_14)+28 v(div_ctrl_13)+26 v(div_ctrl_12)+24 v(div_ctrl_11)+22 v(div_ctrl_10)+20 v(div_ctrl_9)+18 v(div_ctrl_8)+16 v(div_ctrl_7)+14 v(div_ctrl_6)+12 v(div_ctrl_5)+10 v(div_ctrl_4)+8 v(div_ctrl_3)+6 v(div_ctrl_2)+4 v(div_ctrl_1)+2 v(div_ctrl_0)
.endc"}
C {/workspace/designs/libs/core_analog/I2C/i2c_target.sym} 0 280 0 0 {name=x1}
