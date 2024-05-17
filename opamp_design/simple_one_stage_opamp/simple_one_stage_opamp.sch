v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -80 -240 -60 {
lab=#net1}
N -240 -60 -0 -60 {
lab=#net1}
N -0 -80 0 -60 {
lab=#net1}
N -120 -60 -120 -40 {
lab=#net1}
N -240 -240 -180 -240 {
lab=#net2}
N -180 -290 -180 -240 {
lab=#net2}
N -240 -260 -240 -140 {
lab=#net2}
N -200 -290 -40 -290 {
lab=#net2}
N 0 -260 -0 -140 {
lab=Vout}
N 0 -340 0 -320 {
lab=VDD}
N -240 -340 -0 -340 {
lab=VDD}
N -250 -290 -240 -290 {
lab=VDD}
N -250 -320 -250 -290 {
lab=VDD}
N -250 -320 -240 -320 {
lab=VDD}
N -240 -340 -240 -320 {
lab=VDD}
N -0 -290 10 -290 {
lab=VDD}
N 10 -320 10 -290 {
lab=VDD}
N -0 -320 10 -320 {
lab=VDD}
N -10 -110 0 -110 {
lab=VSS}
N -10 -110 -10 40 {
lab=VSS}
N -230 40 -10 40 {
lab=VSS}
N -230 -110 -230 40 {
lab=VSS}
N -240 -110 -230 -110 {
lab=VSS}
N -120 -10 -110 -10 {
lab=VSS}
N -110 -10 -110 40 {
lab=VSS}
N -120 20 -120 40 {
lab=VSS}
N -230 40 -230 60 {
lab=VSS}
N -240 -360 -240 -340 {
lab=VDD}
N -710 -60 -710 -40 {
lab=VDD}
N -710 20 -710 40 {
lab=GND}
N -590 -60 -590 -40 {
lab=Vinn}
N -590 20 -590 40 {
lab=GND}
N -300 -110 -280 -110 {
lab=Vinp}
N 40 -110 60 -110 {
lab=Vinn}
N -530 -60 -530 -40 {
lab=Vinp}
N -530 20 -530 40 {
lab=GND}
N -650 -60 -650 -40 {
lab=VSS}
N -650 20 -650 40 {
lab=GND}
N -600 -150 -590 -150 {
lab=VSS}
N -600 -150 -600 -120 {
lab=VSS}
N -600 -120 -590 -120 {
lab=VSS}
N -590 -120 -590 -100 {
lab=VSS}
N -590 -200 -590 -180 {
lab=Vb5}
N -590 -180 -550 -180 {
lab=Vb5}
N -550 -180 -550 -150 {
lab=Vb5}
N -550 -150 -530 -150 {
lab=Vb5}
N -180 -10 -160 -10 {
lab=Vb5}
N 60 20 60 40 {
lab=VSS}
N 60 -110 60 -40 {
lab=Vinn}
N 60 -160 60 -110 {
lab=Vinn}
N 60 -240 60 -220 {
lab=Vout}
N 0 -240 60 -240 {
lab=Vout}
N 60 -240 180 -240 {
lab=Vout}
N 180 -240 320 -240 {
lab=Vout}
N 320 -240 320 -220 {
lab=Vout}
N 180 -240 180 -220 {
lab=Vout}
N -10 40 60 40 {
lab=VSS}
N 60 40 180 40 {
lab=VSS}
N 180 -160 180 40 {
lab=VSS}
N 180 40 320 40 {
lab=VSS}
N 320 -160 320 40 {
lab=VSS}
N -590 -280 -590 -260 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -260 -110 0 0 {name=M1
L=\{L0\}
W=\{W1\}
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
C {sky130_fd_pr/pfet_01v8.sym} -220 -290 0 1 {name=M4
L=\{L0\}
W=\{W3\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 20 -110 0 1 {name=M2
L=\{L0\}
W=\{W1\}
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -290 0 0 {name=M3
L=\{L0\}
W=\{W3\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -140 -10 0 0 {name=M5
L=\{L0\}
W=\{W5\}
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
C {devices/vdd.sym} -240 -360 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -710 -10 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -710 -60 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -710 40 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 -190 0 0 {name=CL model=cap_mim_m3_1 W=50000000 L=1 MF=1 spiceprefix=X}
C {devices/vsource.sym} -590 -10 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -590 40 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -590 -60 2 0 {name=p1 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} -300 -110 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 60 -110 2 0 {name=p3 sig_type=std_logic lab=Vinn}
C {devices/vsource.sym} -530 -10 0 0 {name=V3 value="ac 1 SINE(0.9 0.9 10000k)"}
C {devices/gnd.sym} -530 40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -530 -60 2 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} -230 60 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -650 -10 0 0 {name=V4 value=0}
C {devices/gnd.sym} -650 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -650 -60 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -570 -150 0 1 {name=M6
L=\{L0\}
W=\{W6\}
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
C {devices/isource.sym} -590 -230 0 1 {name=I0 value=48u}
C {devices/lab_pin.sym} -590 -100 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -530 -150 2 0 {name=p7 sig_type=std_logic lab=Vb5}
C {devices/lab_pin.sym} -180 -10 0 0 {name=p8 sig_type=std_logic lab=Vb5}
C {devices/code_shown.sym} 550 -370 0 0 {name=SPICE only_toplevel=false 
value="
.param W1= 15.648
.param W3= 0.449
.param W5= 5.193
.param W6= 5.193
.param L0 = 0.15
.ac dec 0.0001 1 10000k
.control
	run
	setplot tran1
	set color0=rgb:f/f/f
	set color1=rgb:0/0/0
	settype decibel vout
	plot vdb(Vout) xlog
.endc
.save all
"}
C {sky130_fd_pr/corner.sym} -540 -370 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 320 -240 1 0 {name=p10 sig_type=std_logic lab=Vout}
C {devices/res.sym} 320 -190 0 0 {name=RL
value=100k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 60 -10 0 0 {name=CL1 model=cap_mim_m3_1 W=50000000 L=1 MF=1 spiceprefix=X}
C {devices/res.sym} 60 -190 0 0 {name=RL1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -590 -280 2 0 {name=l7 lab=GND}
