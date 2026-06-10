v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 550 -350 570 -350 {lab=cont}
N 620 -350 630 -350 {lab=aout}
C {ipin.sym} 550 -350 0 0 {name=p1 lab=cont}
C {opin.sym} 630 -350 0 0 {name=p2 lab=aout}
C {netlist.sym} 0 -360 0 0 {name=s1 value="
***** XSPICE analog sine VCO *************** 

.param vdd=3.3
.param vthp=0.7
.param vdsat=0.2
.param upper_limit=vdd-vthp-vdsat
.param lower_limit=0.2
asine cont aout analog_sin_osc
.model analog_sin_osc sine(
+ cntl_array = [ 0.0  3.3 ] 
+ freq_array = [ 400MEG 10k  ]
+ out_high = 3.3 out_low = 0.0 )
"
}
C {noconn.sym} 620 -350 0 0 {name=l1}
C {noconn.sym} 570 -350 0 1 {name=l2}
