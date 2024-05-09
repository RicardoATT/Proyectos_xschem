v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -650 -50 -650 -30 {
lab=Vss}
N -830 50 -830 60 {
lab=Vdd}
N -830 40 -830 50 {
lab=Vdd}
N -830 120 -830 140 {
lab=GND}
N -910 50 -910 60 {
lab=Vgs}
N -910 40 -910 50 {
lab=Vgs}
N -910 120 -910 140 {
lab=GND}
N -710 -80 -690 -80 {
lab=Vgs}
N -650 -210 -650 -190 {
lab=Vdd}
N -650 -130 -650 -110 {
lab=#net1}
N -540 -20 -540 0 {
lab=GND}
N -650 -80 -540 -80 {
lab=#net2}
N -390 -50 -390 -30 {
lab=Vss}
N -450 -80 -430 -80 {
lab=Vgs}
N -390 -210 -390 -190 {
lab=Vdd}
N -390 -130 -390 -110 {
lab=#net3}
N -280 -20 -280 0 {
lab=GND}
N -390 -80 -280 -80 {
lab=#net4}
N -130 -50 -130 -30 {
lab=Vss}
N -190 -80 -170 -80 {
lab=Vgs}
N -130 -210 -130 -190 {
lab=Vdd}
N -130 -130 -130 -110 {
lab=#net5}
N -20 -20 -20 0 {
lab=GND}
N -130 -80 -20 -80 {
lab=#net6}
N -540 210 -540 230 {
lab=Vss}
N -600 180 -580 180 {
lab=Vgs}
N -540 50 -540 70 {
lab=Vdd}
N -540 130 -540 150 {
lab=#net7}
N -430 240 -430 260 {
lab=GND}
N -540 180 -430 180 {
lab=#net8}
N -280 210 -280 230 {
lab=Vss}
N -340 180 -320 180 {
lab=Vgs}
N -280 50 -280 70 {
lab=Vdd}
N -280 130 -280 150 {
lab=#net9}
N -170 240 -170 260 {
lab=GND}
N -280 180 -170 180 {
lab=#net10}
N -750 50 -750 60 {
lab=Vss}
N -750 40 -750 50 {
lab=Vss}
N -750 120 -750 140 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -670 -80 0 0 {name=M1
L=0.45
W=1.35
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} -650 -160 0 0 {name=Vmeas1 savecurrent=true}
C {sky130_fd_pr/corner.sym} -880 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} -920 270 0 0 {name=Gamma
only_toplevel=false 
value="
.dc V1 0 0.9 1m
.control
	run
	plot sqrt(i(Vmeas1)) sqrt(i(Vmeas2)) sqrt(i(Vmeas3)) sqrt(i(Vmeas4)) sqrt(i(Vmeas5))
	wrdata NFET_vgs_sqrtid2.ssv sqrt(i(Vmeas1)) sqrt(i(Vmeas2)) sqrt(i(Vmeas3)) sqrt(i(Vmeas4)) sqrt(i(Vmeas5))
.endc
"}
C {devices/lab_pin.sym} -830 40 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -830 90 0 0 {name=V2 value=0.45 savecurrent=false}
C {devices/gnd.sym} -830 140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -910 40 0 0 {name=p2 sig_type=std_logic lab=Vgs}
C {devices/vsource.sym} -910 90 0 0 {name=V1 value=0.9 savecurrent=false}
C {devices/gnd.sym} -910 140 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -710 -80 0 0 {name=p3 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -650 -210 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -540 -50 0 0 {name=V3 value=-0.45 savecurrent=false}
C {devices/gnd.sym} -540 0 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -410 -80 0 0 {name=M2
L=0.45
W=1.35
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} -390 -160 0 0 {name=Vmeas2 savecurrent=true}
C {devices/lab_pin.sym} -450 -80 0 0 {name=p5 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -390 -210 0 0 {name=p6 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -280 -50 0 0 {name=V4 value=-0.55 savecurrent=false}
C {devices/gnd.sym} -280 0 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -150 -80 0 0 {name=M3
L=0.45
W=1.35
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} -130 -160 0 0 {name=Vmeas3 savecurrent=true}
C {devices/lab_pin.sym} -190 -80 0 0 {name=p7 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -130 -210 0 0 {name=p8 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -20 -50 0 0 {name=V5 value=-0.65 savecurrent=false}
C {devices/gnd.sym} -20 0 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -560 180 0 0 {name=M4
L=0.45
W=1.35
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} -540 100 0 0 {name=Vmeas4 savecurrent=true}
C {devices/lab_pin.sym} -600 180 0 0 {name=p9 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -540 50 0 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -430 210 0 0 {name=V6 value=-0.75 savecurrent=false}
C {devices/gnd.sym} -430 260 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -300 180 0 0 {name=M5
L=0.45
W=1.35
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} -280 100 0 0 {name=Vmeas5 savecurrent=true}
C {devices/lab_pin.sym} -340 180 0 0 {name=p11 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -280 50 0 0 {name=p12 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -170 210 0 0 {name=V7 value=-0.85 savecurrent=false}
C {devices/gnd.sym} -170 260 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -750 40 0 0 {name=p13 sig_type=std_logic lab=Vss}
C {devices/vsource.sym} -750 90 0 0 {name=V8 value=-0.45 savecurrent=false}
C {devices/gnd.sym} -750 140 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -650 -30 0 0 {name=p14 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -390 -30 0 0 {name=p15 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -130 -30 0 0 {name=p16 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -540 230 0 0 {name=p17 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -280 230 0 0 {name=p18 sig_type=std_logic lab=Vss}
