v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Delay Chain Testbench} 100 -700 0 0 0.5 0.5 {}
T {Measure propagation delay through 4 inverters} 100 -670 0 0 0.3 0.3 {}
N 200 -490 200 -460 {
lab=IN}
N 200 -400 200 -370 {
lab=GND}
N 100 -490 100 -460 {
lab=VDD}
N 100 -400 100 -370 {
lab=GND}
N 100 -370 200 -370 {
lab=GND}
N 200 -370 200 -340 {
lab=GND}
N 300 -430 350 -430 {
lab=IN}
N 550 -430 610 -430 {
lab=OUT}
N 350 -430 370 -430 {lab=IN}
N 530 -430 550 -430 {lab=OUT}
N 450 -510 450 -470 {lab=VDD}
N 450 -390 450 -350 {lab=GND}
C {delay_chain.sym} 450 -430 0 0 {name=x1}
C {vsource.sym} 200 -430 0 0 {name=V_IN value="PULSE(0 3.3 5n 100p 100p 10n 20n)"
savecurrent=false}
C {vsource.sym} 100 -430 0 0 {name=V_VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -340 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 200 -490 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_wire.sym} 100 -490 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 330 -430 0 0 {name=p3 sig_type=std_logic lab=IN}
C {lab_wire.sym} 610 -430 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 450 -350 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_wire.sym} 450 -510 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 50 -300 0 0 {name=STIMULI only_toplevel=false
value="
.tran 10p 60n
.save all
.control
run
plot v(IN) v(OUT)+4 title 'Delay Chain: IN vs OUT (non-inverting)'
meas tran t_delay_rise trig v(IN) val=1.65 rise=1 targ v(OUT) val=1.65 rise=1
meas tran t_delay_fall trig v(IN) val=1.65 fall=1 targ v(OUT) val=1.65 fall=1
meas tran glitch_high max v(OUT) from=<time near falling edge start> to=<time near falling edge mid>
meas tran glitch_low  min v(OUT) from=<time near rising edge start> to=<time near rising edge mid>
echo '--- Delay Chain Verification ---'
echo 'Rising delay:' $&t_delay_rise
echo 'Falling delay:' $&t_delay_fall
echo 'Target: 1-2ns for dead-zone elimination'
.endc
"}
C {code_shown.sym} 500 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -40 0 0 {name=l2 author="Delay Chain Testbench"}
