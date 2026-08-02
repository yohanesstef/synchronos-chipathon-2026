v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 850 -1040 1650 -640 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Phase (deg); ph(out)\\"
\\"Magnitude (dB); out db20()\\""
color="4 5"
dataset=-1
unitx=1
logx=1
logy=0
}
T {tcleval(Aol: [to_eng [xschem raw value Aol 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]])} 470 -820 0 0 0.6 0.6 {floater=1}
N 460 -180 580 -180 {lab=AVSS}
N 460 -180 460 -170 {lab=AVSS}
N 460 -110 460 -100 {lab=0}
N 460 -280 460 -240 {lab=AVDD}
N 840 -190 895 -190 {lab=AVSS}
N 840 -230 895 -230 {lab=Vin}
N 640 -280 640 -240 {lab=Vin}
N 580 -180 700 -180 {lab=AVSS}
N 700 -280 700 -240 {lab=Vcm}
N 935 -180 935 -125 {lab=Vcm}
N 800 -125 935 -125 {lab=Vcm}
N 800 -180 800 -125 {lab=Vcm}
N 800 -265 800 -240 {lab=Vi-}
N 935 -265 935 -240 {lab=Vi+}
N 1070 -240 1100 -240 {lab=Vi+}
N 1070 -180 1100 -180 {lab=Vi-}
N 1220 -210 1250 -210 {lab=out}
N 1180 -130 1180 -110 {lab=AVSS}
N 1180 -310 1180 -290 {lab=AVDD}
N 1140 -310 1140 -290 {lab=VB}
N 1250 -210 1290 -210 {lab=out}
N 1290 -150 1290 -120 {lab=AVSS}
N 1180 -120 1290 -120 {lab=AVSS}
N 1060 -460 1060 -430 {lab=VB}
N 1020 -430 1060 -430 {lab=VB}
N 1020 -430 1020 -400 {lab=VB}
N 1020 -510 1020 -490 {lab=AVDD}
N 1020 -340 1020 -300 {lab=AVSS}
N 1020 -490 1020 -460 {lab=AVDD}
C {libs/core_analog/ota_5t/ota_5t.sym} 1150 -210 0 0 {name=x1}
C {devices/code_shown.sym} -80 -690 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice SS
*.lib $::180MCU_MODELS/sm141064.ngspice FF
*.lib $::180MCU_MODELS/sm141064.ngspice SF
*.lib $::180MCU_MODELS/sm141064.ngspice FS
"}
C {vsource.sym} 460 -210 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 460 -100 0 0 {name=l1 lab=0}
C {vsource.sym} 460 -140 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 460 -280 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 460 -180 0 0 {name=p5 sig_type=std_logic lab=AVSS}
C {vcvs.sym} 800 -210 0 1 {name=E1 value=-0.5}
C {vcvs.sym} 935 -210 0 0 {name=E2 value=0.5}
C {vsource.sym} 640 -210 0 0 {name=V5 value="ac 1" savecurrent=false}
C {vsource.sym} 700 -210 0 0 {name=V6 value=Vcm savecurrent=false}
C {lab_pin.sym} 640 -280 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 700 -280 0 0 {name=p11 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 865 -230 1 0 {name=p12 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 865 -190 3 0 {name=p13 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 865 -125 3 0 {name=p14 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 800 -265 0 0 {name=p15 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 935 -265 0 1 {name=p16 sig_type=std_logic lab=Vi+}
C {lab_pin.sym} 1290 -210 0 1 {name=p3 sig_type=std_logic lab=out}
C {lab_pin.sym} 1070 -180 0 0 {name=p1 sig_type=std_logic lab=Vi-}
C {lab_pin.sym} 1180 -310 0 1 {name=p6 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 1180 -110 0 1 {name=p7 sig_type=std_logic lab=AVSS}
C {capa.sym} 1290 -180 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1020 -510 0 0 {name=p8 sig_type=std_logic lab=AVDD}
C {isource.sym} 1020 -370 0 0 {name=I0 value=104u}
C {lab_pin.sym} 1020 -300 0 0 {name=p9 sig_type=std_logic lab=AVSS}
C {lab_pin.sym} 1140 -310 0 0 {name=p17 sig_type=std_logic lab=VB}
C {lab_pin.sym} 1060 -430 0 1 {name=p18 sig_type=std_logic lab=VB}
C {code_shown.sym} -80 -520 0 0 {name=s1 only_toplevel=false value="
.option wnflag=1
.option safecurrents
.option solver=klu
.param VCM=1.65

*vin1 in1 gnd pulse(0 3.3 0 10n 10n 5u 10u)
*vin2 in2 gnd pulse(0 3.3 0 10n 10n 5u 10u)
*vin3 in3 gnd pulse(0 3.3 0 10n 10n 5u 10u)

.control
reset
save all
set num_threads=8
op
show
write tb_ota_5t.raw
*dc vin1 -1 4 0.1
*tran 10n 30u
ac dec 100 1 100e9

let vout_mag =abs(v(out))
let vout_phase_margin = phase(v(out))*180/pi + 180
meas ac Aol find vout_mag at = 10
meas ac UGF when vout_mag=1 fall=1
meas ac PM find vout_phase_margin when vout_mag=1

*let v_swing=3.22-0.4837
*let vout_limit=\{3.22-v_swing*0.01\}
*meas tran tcross WHEN V(OUT)=vout_limit
*let vena_limit=\{0.4837+v_swing*0.01\}
*meas tran tstart WHEN v(VOUT)=vena_limit
*let tsettle=tcross-tstart
*print tsettle

write tb_ota_5t.raw

.endc
"}
C {devices/launcher.sym} 640 -850 0 0 {name=h5
descr="load ac" 
tclcommand="xschem raw_read $netlist_dir/tb_ota_5t.raw ac"
}
C {lab_pin.sym} 1070 -240 0 0 {name=p4 sig_type=std_logic lab=Vi+}
C {symbols/pfet_03v3.sym} 1040 -460 0 1 {name=M1
L=0.5u
W=16.8u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
