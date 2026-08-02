v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1480 -1330 2280 -930 {flags=graph
y1=-2.8131357
y2=4.3532259
ypos1=0.26974883
ypos2=4.1999872
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="up
dn
up_b
dn_b"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 1410 -430 2210 -30 {flags=graph
y1=-0.00045
y2=0.00039
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1410 -830 2210 -430 {flags=graph
y1=0
y2=3.3
ypos1=-0.27654376
ypos2=2.245174
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6 7 8"
node="up
s4
s3
s2
s1"
digital=1}
N 1240 -290 1260 -290 {lab=#net1}
N 1270 -490 1270 -470 {lab=VBN}
N 1270 -490 1330 -490 {lab=VBN}
N 1330 -490 1330 -440 {lab=VBN}
N 1270 -410 1270 -400 {lab=VSS}
N 1270 -570 1270 -550 {lab=VDD}
N 1250 -440 1270 -440 {lab=VSS}
N 1250 -440 1250 -400 {lab=VSS}
N 1250 -400 1270 -400 {lab=VSS}
N 1320 -290 1340 -290 {lab=VBP}
N 930 -160 980 -160 {lab=S1}
N 930 -140 1000 -140 {lab=S2}
N 930 -120 1020 -120 {lab=S3}
N 930 -100 1040 -100 {lab=S4}
N 1170 -180 1220 -180 {lab=VSS}
N 1130 -100 1220 -100 {lab=S4b}
N 1110 -120 1220 -120 {lab=S3b}
N 1090 -140 1220 -140 {lab=S2b}
N 1070 -160 1220 -160 {lab=S1b}
N 890 -300 910 -300 {lab=VBN}
N 1080 -430 1080 -410 {lab=VDD}
N 1040 -180 1040 -90 {lab=S4}
N 1020 -180 1020 -90 {lab=S3}
N 1000 -180 1000 -90 {lab=S2}
N 980 -180 980 -90 {lab=S1}
N 1070 -180 1070 -90 {lab=S1b}
N 1090 -180 1090 -90 {lab=S2b}
N 1110 -180 1110 -90 {lab=S3b}
N 1130 -180 1130 -90 {lab=S4b}
N 1170 -180 1170 -90 {lab=VSS}
N 1310 -440 1330 -440 {lab=VBN}
N 880 -300 890 -300 {lab=VBN}
C {devices/code_shown.sym} 10 -890 0 0 {name=Simulation only_toplevel=false value="

.ic v(ip) = 0

.param cpcurrent = 10u

vvss vss 0 dc 0
vvdd vdd 0 dc 3.3

vbp vbp 0 0.5


.param td=100n tr=0.1n tf=0.1n
+ts1=1u tp1='2*ts1'
+ts2=tp1 tp2='2*ts2'
+ts3=tp2 tp3='2*ts3'
+ts4=tp3 tp4='2*ts4'
+tsup=tp4 tpup='2*tsup'

VS1 S1 0 pulse(3.3 0 td tr tf ts1 tp1)
VS2 S2 0 pulse(3.3 0 td tr tf ts2 tp2)
VS3 S3 0 pulse(3.3 0 td tr tf ts3 tp3)
VS4 S4 0 pulse(3.3 0 td tr tf ts4 tp4)
VUP UP 0 pulse(3.3 0 td tr tf tsup tpup)

VS1b S1b 0 pulse(0 3.3 td tr tf ts1 tp1)
VS2b S2b 0 pulse(0 3.3 td tr tf ts2 tp2)
VS3b S3b 0 pulse(0 3.3 td tr tf ts3 tp3)
VS4b S4b 0 pulse(0 3.3 td tr tf ts4 tp4)
VUPb UPb 0 pulse(0 3.3 td tr tf tsup tpup)

*vdn dn 0 pwl(0 0 10n 0 10.01n 3.3 60n 3.3 60.01n 0 150n 0 150.1n 3.3)
*vdn_b dn_b 0 pwl(0 3.3 10n 3.3 10.01n 0 60n 0 60.01n 3.3 150n 3.3 150.1n 0)

*vup up 0 pwl(0 0 80n 0 80.01n 3.3 130n 3.3 130.01n 0 150n 0 150.1n 3.3)
*vup_b up_b 0 pwl(0 3.3 80n 3.3 80.01n 0 130n 0 130.01n 3.3 150n 3.3 150.1n 0)

.control
save all
tran 1n 40u
write tb_programmable_ffz.raw
.endc
"}
C {devices/code_shown.sym} 10 -990 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 1080 -430 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1220 -180 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {launcher.sym} 880 -650 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tb_programmable_ffz.raw tran"
}
C {lab_pin.sym} 1340 -290 0 1 {name=p8 sig_type=std_logic lab=VBP}
C {ammeter.sym} 1290 -290 3 1 {name=Vmeas savecurrent=true spice_ignore=0}
C {symbols/nfet_03v3.sym} 1290 -440 0 1 {name=M1
L=0.5u
W=11.25u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1270 -400 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {isource.sym} 1270 -520 0 0 {name=I0 value=10u}
C {lab_pin.sym} 1270 -570 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 880 -300 0 0 {name=p9 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1220 -160 2 0 {name=p55 sig_type=std_logic lab=S1b}
C {lab_pin.sym} 1220 -140 2 0 {name=p56 sig_type=std_logic lab=S2b}
C {lab_pin.sym} 1220 -120 2 0 {name=p57 sig_type=std_logic lab=S3b}
C {lab_pin.sym} 1220 -100 2 0 {name=p58 sig_type=std_logic lab=S4b}
C {lab_pin.sym} 930 -160 2 1 {name=p59 sig_type=std_logic lab=S1}
C {lab_pin.sym} 930 -140 2 1 {name=p60 sig_type=std_logic lab=S2}
C {lab_pin.sym} 930 -120 2 1 {name=p61 sig_type=std_logic lab=S3}
C {lab_pin.sym} 930 -100 2 1 {name=p62 sig_type=std_logic lab=S4}
C {lab_pin.sym} 1330 -490 0 1 {name=p1 sig_type=std_logic lab=VBN}
C {libs/core_analog/programmable_ffz/programmable_ffz.sym} 1080 -300 0 0 {name=x1}
