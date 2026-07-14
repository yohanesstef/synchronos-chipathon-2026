v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
V {}
S {}
F {}
E {}
T {4-Stage Inverter Delay Chain} 70 -630 0 0 0.4 0.4 {}
T {Non-inverting (even stages). Provides ~1-2ns delay} 60 -600 0 0 0.3 0.3 {}
T {at TT corner for dead-zone elimination.} 70 -580 0 0 0.3 0.3 {}
T {Progressive sizing for speed: 0.5/1 -> 0.7/1.4 -> 1/2 -> 1.4/2.8 um} 80 -560 0 0 0.3 0.3 {}
N 300 -420 440 -420 {lab=VDD}
N 440 -420 580 -420 {lab=VDD}
N 580 -420 720 -420 {lab=VDD}
N 300 -320 440 -320 {lab=VSS}
N 440 -320 580 -320 {lab=VSS}
N 580 -320 720 -320 {lab=VSS}
N 260 -320 300 -320 {lab=VSS}
N 260 -320 260 -310 {lab=VSS}
N 260 -440 260 -420 {lab=VDD}
N 260 -420 300 -420 {lab=VDD}
N 340 -370 400 -370 {lab=#net1}
N 770 -370 820 -370 {lab=#net2}
N 970 -370 1010 -370 {lab=Y}
N 720 -420 900 -420 {lab=VDD}
N 720 -320 900 -320 {lab=VSS}
N 100 -370 170 -370 {lab=A}
N 170 -370 180 -370 {lab=A}
N 330 -370 340 -370 {lab=#net1}
N 550 -370 610 -370 {lab=#net3}
N 760 -370 770 -370 {lab=#net2}
N 900 -320 910 -320 {lab=VSS}
C {inv.sym} 260 -370 0 0 {name=x1}
C {inv.sym} 480 -370 0 0 {name=x2}
C {inv.sym} 690 -370 0 0 {name=x3}
C {inv.sym} 900 -370 0 0 {name=x4}
C {ipin.sym} 100 -370 0 0 {name=p1 lab=A}
C {opin.sym} 1010 -370 0 0 {name=p2 lab=Y}
C {iopin.sym} 260 -440 3 0 {name=p3 lab=VDD}
C {iopin.sym} 260 -310 1 0 {name=p4 lab=VSS}
