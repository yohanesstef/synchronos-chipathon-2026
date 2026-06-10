v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -150 220 -150 {lab=UP}
N 200 -120 220 -120 {lab=DN}
N 260 -150 280 -150 {lab=OUT}
C {ipin.sym} 200 -150 0 0 {name=p1 lab=UP}
C {ipin.sym} 200 -120 0 0 {name=p2 lab=DN}
C {opin.sym} 280 -150 0 0 {name=p3 lab=OUT}
C {netlist.sym} -50 -380 0 0 {name=s1 value="
* Bulletproof Charge Pump: Continuous Triode-Region Soft-Clipping
.param param_k = 60e-6

* UP (Sinks to Ground): Smoothly rolls off current as Vctrl drops from 0.1V to 0V
B_Iup OUT 0 I='V(UP) > 1.65 ? (param_k * ((2.6 - max(0.2, min(2.6, V(OUT))))^2 + 0.001)) * max(0, min(1, V(OUT)/0.1)) : 0'

* DN (Sources from VDD): Smoothly rolls off current as Vctrl rises from 3.2V to 3.3V
B_Idn OUT 0 I='V(DN) > 1.65 ? -(param_k * ((2.6 - max(0.2, min(2.6, V(OUT))))^2 + 0.001)) * max(0, min(1, (3.3 - V(OUT))/0.1)) : 0'
"}
C {noconn.sym} 220 -150 2 0 {name=l1}
C {noconn.sym} 220 -120 2 0 {name=l2}
C {noconn.sym} 260 -150 0 0 {name=l3}
