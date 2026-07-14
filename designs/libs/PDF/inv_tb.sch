v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Inverter Testbench} 100 -700 0 0 0.5 0.5 {}
N 200 -490 200 -460 {
lab=IN}
N 200 -400 200 -370 {
lab=GND}
N 200 -370 200 -340 {
lab=GND}
N 100 -490 100 -460 {
lab=VDD}
N 100 -400 100 -370 {
lab=GND}
N 100 -370 200 -370 {
lab=GND}
N 300 -420 400 -420 {
lab=IN}
N 100 -510 100 -490 {lab=VDD}
N 200 -490 290 -490 {lab=IN}
N 290 -490 290 -420 {lab=IN}
N 290 -420 300 -420 {lab=IN}
N 400 -420 420 -420 {lab=IN}
C {vsource.sym} 200 -430 0 0 {name=V_IN value="PULSE(0 3.3 0 100p 100p 5n 10n)"
savecurrent=false}
C {vsource.sym} 100 -430 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -340 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -490 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_wire.sym} 100 -510 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -420 0 0 {name=p3 sig_type=std_logic lab=IN}
C {lab_wire.sym} 710 -430 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 650 -380 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_wire.sym} 640 -480 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 50 -300 0 0 {name=STIMULI only_toplevel=false
value="
.tran 10p 50n
.save all
.control
run
plot v(IN) v(OUT)+4 title 'Inverter: IN vs OUT'
meas tran tphl trig v(IN) val=1.65 rise=1 targ v(OUT) val=1.65 fall=1
meas tran tplh trig v(IN) val=1.65 fall=1 targ v(OUT) val=1.65 rise=1
echo '--- Inverter Delays ---'
echo 'tpHL:' $&tphl
echo 'tpLH:' $&tplh
.endc
"}
C {code_shown.sym} 500 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="INV Testbench"}
C {inv.sym} 640 -430 0 0 {name=x1}
C {lab_wire.sym} 560 -430 0 0 {name=p7 sig_type=std_logic lab=IN}
