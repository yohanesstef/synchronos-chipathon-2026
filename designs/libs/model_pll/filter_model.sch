v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -70 300 -50 {lab=#net1}
N 180 -50 300 -50 {lab=#net1}
N 180 -70 180 -50 {lab=#net1}
N 180 -150 180 -130 {lab=#net2}
N 180 -230 180 -210 {lab=#net3}
N 180 -230 300 -230 {lab=#net3}
N 300 -230 300 -130 {lab=#net3}
N 300 -230 410 -230 {lab=#net3}
N 90 -230 180 -230 {lab=#net3}
N 240 -50 240 -30 {lab=#net1}
C {res.sym} 180 -180 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 300 -100 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 180 -100 0 0 {name=CB
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {netlist.sym} 2.5 -512.5 0 0 {name=s1 value="
*.param VDD = 3.3
* control is for tests when opening the loop
* see the Vcontrol voltage source
.param vcontrol = 0.5
* reference frequency
.param f_ref = 24e6
* divider
.param divide_factor = 10
* loop filter parameters
.param Ci_filter = 100p
.param Rz_filter = 6.2k
.param Cj_filter = 5p
"}
