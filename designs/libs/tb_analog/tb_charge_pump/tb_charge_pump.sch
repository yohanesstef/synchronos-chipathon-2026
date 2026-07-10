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
x1=-6.6303416e-08
x2=2.1340123e-07
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
B 2 1480 -920 2280 -520 {flags=graph
y1=-0.00051577802
y2=0.00051691998
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.6303416e-08
x2=2.1340123e-07
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
B 2 1480 -510 2280 -110 {flags=graph
y1=-1.3599278
y2=4.8339156
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.6303416e-08
x2=2.1340123e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=net1
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 670 -1330 1470 -930 {flags=graph
y1=7.4700715e-05
y2=0.00014437368
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.6303416e-08
x2=2.1340123e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(v.x1.vtail2)
i(v.x1.vtail)"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N 590 -310 610 -310 {lab=UP}
N 590 -290 610 -290 {lab=UP_B}
N 590 -270 610 -270 {lab=DN}
N 590 -250 610 -250 {lab=DN_B}
N 910 -310 930 -310 {lab=VDD}
N 910 -290 930 -290 {lab=VSS}
N 910 -270 930 -270 {lab=#net1}
N 450 -280 450 -260 {lab=#net2}
N 450 -280 510 -280 {lab=#net2}
N 510 -280 510 -230 {lab=#net2}
N 450 -200 450 -190 {lab=VSS}
N 450 -360 450 -340 {lab=VDD}
N 430 -230 450 -230 {lab=VSS}
N 430 -230 430 -190 {lab=VSS}
N 430 -190 450 -190 {lab=VSS}
N 990 -270 1010 -270 {lab=IP}
N 490 -230 610 -230 {lab=#net2}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Nahwan Assaify"}
C {/foss/designs/synchronos-chipathon-2026/designs/libs/core_analog/charge_pump/charge_pump.sym} 760 -270 0 0 {name=x1}
C {devices/code_shown.sym} 50 -880 0 0 {name=Simulation only_toplevel=false value="

.ic v(ip) = 0

.param cpcurrent = 100u

vvss vss 0 dc 0
vvdd vdd 0 dc 3.3

vip ip 0 dc 1.65

vvbn vbn 0 dc 1.5

vdn dn 0 pwl(0 0 10n 0 10.01n 3.3 60n 3.3 60.01n 0 150n 0 150.1n 3.3)
vdn_b dn_b 0 pwl(0 3.3 10n 3.3 10.01n 0 60n 0 60.01n 3.3 150n 3.3 150.1n 0)

vup up 0 pwl(0 0 80n 0 80.01n 3.3 130n 3.3 130.01n 0 150n 0 150.1n 3.3)
vup_b up_b 0 pwl(0 3.3 80n 3.3 80.01n 0 130n 0 130.01n 3.3 150n 3.3 150.1n 0)

.control
save all
tran 0.001n 200n
write tb_charge_pump.raw
.endc
"}
C {devices/code_shown.sym} 50 -980 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 590 -310 0 0 {name=p1 sig_type=std_logic lab=UP}
C {lab_pin.sym} 590 -290 0 0 {name=p2 sig_type=std_logic lab=UP_B}
C {lab_pin.sym} 590 -270 0 0 {name=p3 sig_type=std_logic lab=DN}
C {lab_pin.sym} 590 -250 0 0 {name=p4 sig_type=std_logic lab=DN_B}
C {lab_pin.sym} 930 -310 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 930 -290 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {launcher.sym} 730 -490 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tb_charge_pump.raw tran"
}
C {lab_pin.sym} 1010 -270 0 1 {name=p8 sig_type=std_logic lab=IP}
C {ammeter.sym} 960 -270 3 1 {name=Vmeas savecurrent=true spice_ignore=0}
C {symbols/nfet_03v3.sym} 470 -230 0 1 {name=M1
L=0.6u
W=17u
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
C {lab_pin.sym} 450 -190 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {isource.sym} 450 -310 0 0 {name=I0 value=cpcurrent}
C {lab_pin.sym} 450 -360 0 1 {name=p10 sig_type=std_logic lab=VDD}
