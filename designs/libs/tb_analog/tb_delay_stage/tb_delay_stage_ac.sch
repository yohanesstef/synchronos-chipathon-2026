v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 600 -1095 1400 -695 {flags=graph
y1=2
y2=3.9
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=6
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=1
hilight_wave=0
color=4
node=z}
B 2 1400 -1095 2200 -695 {flags=graph
y1=1000000
y2=8e+09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1000000
x2=1e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=freq
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 600 -1495 1400 -1095 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1000000
x2=1e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="8 18"
node="\\"Gain; deriv(v(Vo+)-v(Vo-))\\"
\\"Differential; v(Vo+) - v(Vo-)\\""}
B 2 1400 -1495 2200 -1095 {flags=graph
y1=-1.7
y2=5.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1000000
x2=1e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color="4 5"
node="gain
diff"}
N 555 -405 675 -405 {lab=AVSS}
N 555 -405 555 -395 {lab=AVSS}
N 555 -335 555 -325 {lab=0}
N 555 -505 555 -465 {lab=AVDD}
N 1010 -530 1010 -510 {lab=AVDD}
N 970 -530 970 -510 {lab=VBP}
N 1010 -350 1010 -330 {lab=AVSS}
N 970 -350 970 -330 {lab=VBN}
N 675 -505 675 -465 {lab=VOP}
N 675 -405 795 -405 {lab=AVSS}
N 795 -505 795 -465 {lab=Vcm}
N 910 -460 930 -460 {lab=Vcm}
N 1050 -400 1070 -400 {lab=VOP}
N 1050 -460 1070 -460 {lab=VON}
N 910 -400 930 -400 {lab=Vcm}
N 1070 -460 1120 -460 {lab=VON}
N 1070 -400 1120 -400 {lab=VOP}
N 1200 -530 1200 -510 {lab=AVDD}
N 1160 -530 1160 -510 {lab=VBP}
N 1200 -350 1200 -330 {lab=AVSS}
N 1160 -350 1160 -330 {lab=VBN}
N 1460 -380 1480 -380 {lab=VBN}
N 1480 -430 1480 -380 {lab=VBN}
N 1420 -430 1480 -430 {lab=VBN}
N 1420 -430 1420 -410 {lab=VBN}
N 1420 -350 1420 -310 {lab=AVSS}
N 1420 -460 1420 -430 {lab=VBN}
N 1420 -540 1420 -520 {lab=AVDD}
N 1410 -380 1420 -380 {lab=AVSS}
N 1410 -380 1410 -350 {lab=AVSS}
N 1410 -350 1420 -350 {lab=AVSS}
N 1240 -460 1260 -460 {lab=VON2}
N 1240 -400 1260 -400 {lab=VOP2}
N 910 -460 910 -400 {lab=Vcm}
N 1640 -510 1640 -480 {lab=AVDD}
N 1600 -480 1600 -450 {lab=VBP}
N 1600 -450 1640 -450 {lab=VBP}
N 1640 -530 1640 -510 {lab=AVDD}
N 1640 -450 1640 -420 {lab=VBP}
N 1640 -360 1640 -330 {lab=AVSS}
C {libs/core_analog/delay_stage/delay_stage.sym} 985 -430 0 0 {name=x1}
C {devices/code_shown.sym} -335 -650 0 0 {name=Simulation only_toplevel=false value="
.param vbp=2.1 vbn=1.2 Vin=0 Vcm=1.8
* --- AC Impedance Extraction ---
.ac dec 10 1Meg 10G

.control
  run
  
  * Extract frequency vector
  let freq = frequency
  
  * Calculate angular frequency (omega)
  let omega = 2 * pi * freq
  
  * Calculate complex impedance Z = V / I
  * Note: v(VOP) is 1 (AC source), I is current through the AC source (e.g., v1)
  let Z = v(VOP) / -i(v5)
  
  * Extract imaginary part of admittance (Y = 1/Z)
  * Y_imag = omega * C
  let Y_imag = imag(1/Z)
  
  * Calculate effective capacitance
  let C_eff = Y_imag / omega
  
  * Plot capacitance over frequency to verify stability
  plot C_eff ylimit 0 300f
  
  * Print value at target operating frequency (e.g., 350 MHz)
  meas ac C_target FIND C_eff AT=350Meg

write tb_delay_stage_ac.raw
.endc
"}
C {devices/code_shown.sym} -330 -770 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 555 -435 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 555 -325 0 0 {name=l1 lab=0}
C {vsource.sym} 555 -365 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1010 -530 0 1 {name=p1 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 555 -505 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 555 -405 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1010 -330 0 1 {name=p6 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 970 -330 0 0 {name=p7 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 970 -530 0 0 {name=p8 sig_type=std_logic lab=VBP}
C {vsource.sym} 675 -435 0 0 {name=V5 value="dc 1.8 ac 1" savecurrent=false}
C {vsource.sym} 795 -435 0 0 {name=V6 value=Vcm savecurrent=false}
C {lab_pin.sym} 675 -505 0 0 {name=p10 sig_type=std_logic lab=VOP}
C {lab_pin.sym} 795 -505 0 0 {name=p11 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1090 -400 1 1 {name=p19 sig_type=std_logic lab=VOP}
C {devices/launcher.sym} 700 -670 0 0 {name=h2
descr="load tran" 
tclcommand="xschem raw_read $netlist_dir/tb_delay_stage.raw tran"
}
C {devices/launcher.sym} 885 -670 0 0 {name=h1
descr="load dc" 
tclcommand="xschem raw_read $netlist_dir/tb_delay_stage.raw dc"
}
C {lab_pin.sym} 1090 -460 3 1 {name=p9 sig_type=std_logic lab=VON}
C {libs/core_analog/delay_stage/delay_stage.sym} 1175 -430 0 0 {name=x2}
C {lab_pin.sym} 1200 -530 0 1 {name=p20 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1160 -530 0 0 {name=p21 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1200 -330 0 1 {name=p22 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1160 -330 0 0 {name=p23 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1480 -430 0 1 {name=p24 sig_type=std_logic lab=VBN}
C {symbols/nfet_03v3.sym} 1440 -380 0 1 {name=M7
L=1u
W=37.7u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1420 -310 0 0 {name=p25 sig_type=std_logic lab=AVSS}
C {isource.sym} 1420 -490 0 0 {name=I0 value=819u}
C {lab_pin.sym} 1420 -540 0 0 {name=p26 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1260 -400 1 1 {name=p27 sig_type=std_logic lab=VOP2}
C {lab_pin.sym} 1260 -460 3 1 {name=p28 sig_type=std_logic lab=VON2}
C {lab_pin.sym} 910 -430 0 0 {name=p3 sig_type=std_logic lab=Vcm}
C {devices/launcher.sym} 530 -670 0 0 {name=h3
descr="load ac" 
tclcommand="xschem raw_read $netlist_dir/tb_delay_stage_ac.raw ac"
}
C {symbols/pfet_03v3.sym} 1620 -480 0 0 {name=M2
L=1u
W=0.74u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1640 -530 0 0 {name=p12 sig_type=std_logic lab=AVDD}
C {isource.sym} 1640 -390 0 0 {name=I1 value=204.75u}
C {lab_pin.sym} 1640 -330 0 0 {name=p13 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1600 -450 0 0 {name=p14 sig_type=std_logic lab=VBP}
