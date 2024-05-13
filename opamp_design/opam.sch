v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -50 120 -50 {
lab=i1}
N 10 -50 10 -20 {
lab=i1}
N -80 -20 10 -20 {
lab=i1}
N -40 -20 -40 30 {
lab=i1}
N 120 -20 120 30 {
lab=vout}
N 120 -20 160 -20 {
lab=vout}
N -80 -80 160 -80 {
lab=vdd}
N 160 -80 240 -80 {
lab=vdd}
N 240 -80 240 -50 {
lab=vdd}
N 160 -50 240 -50 {
lab=vdd}
N -160 -50 -80 -50 {
lab=vdd}
N -160 -80 -160 -50 {
lab=vdd}
N -160 -80 -80 -80 {
lab=vdd}
N -40 90 120 90 {
lab=i5}
N -40 60 120 60 {
lab=vss}
N 40 90 40 120 {
lab=i5}
N 10 60 10 150 {
lab=vss}
N 10 150 40 150 {
lab=vss}
N 10 150 10 180 {
lab=vss}
N 10 180 40 180 {
lab=vss}
N 20 180 20 210 {
lab=vss}
N 130 150 130 180 {
lab=vbn1}
N 80 150 130 150 {
lab=vbn1}
N 170 210 210 210 {
lab=vss}
N 200 180 200 210 {
lab=vss}
N 170 180 200 180 {
lab=vss}
N 120 10 190 10 {
lab=vout}
N 170 150 190 150 {
lab=vbn1}
N -280 190 -250 190 {
lab=GND}
N -280 110 -280 130 {
lab=vdd}
N 60 -100 60 -80 {
lab=vdd}
N -250 190 -180 190 {
lab=GND}
N -180 60 -180 130 {
lab=vinp}
N -180 60 -80 60 {
lab=vinp}
N 190 80 190 90 {
lab=vdd}
N -220 160 -220 190 {
lab=GND}
N -220 70 -220 100 {
lab=vinn}
N 160 60 200 60 {
lab=vinn}
N 190 210 190 220 {
lab=vss}
N -360 190 -280 190 {
lab=GND}
N -360 110 -360 130 {
lab=vss}
N 180 220 180 240 {
lab=vss}
N -10 210 20 210 {
lab=vss}
N -170 220 -170 230 {
lab=vout}
N -170 290 -170 300 {
lab=GND}
N 130 140 130 150 {
lab=vbn1}
N 130 140 180 140 {
lab=vbn1}
N 180 140 180 150 {
lab=vbn1}
N 180 220 190 220 {
lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} -60 -50 0 1 {name=M1
L=0.15
W=\{w3\}
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -50 0 0 {name=M2
L=0.15
W=\{w3\}
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
C {sky130_fd_pr/nfet_01v8.sym} -60 60 0 0 {name=M3
L=0.15
W=\{w1\}
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
C {sky130_fd_pr/nfet_01v8.sym} 140 60 0 1 {name=M4
L=0.15
W=\{w1\}
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
C {sky130_fd_pr/nfet_01v8.sym} 60 150 0 1 {name=M5
L=0.15
W=\{w5\}
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
C {sky130_fd_pr/nfet_01v8.sym} 150 180 0 0 {name=M6
L=0.15
W=\{w6\}
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
C {devices/code_shown.sym} 350 -60 0 0 {name=s1 only_toplevel=false value="
.param w1=3.53
.param w3=80.37
.param w5=1.14
.param w6=1.14
.ac dec 0.0001 1 10000k
.control
	run
	setplot tran1
	set color0=rgb:f/f/f
	set color1=rgb:0/0/0
	settype decibel vout
	plot vdb(vout) xlog
.endc
.save all
"}
C {devices/lab_pin.sym} 190 10 0 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/isource.sym} 190 120 0 0 {name=I0 value=48u}
C {devices/vsource.sym} -280 160 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -250 190 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -280 110 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 60 -100 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -180 160 0 0 {name=V2 value="ac 1 SINE(0.9 0.9 10000k)"}
C {devices/lab_pin.sym} 190 80 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -220 130 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -220 70 0 0 {name=p5 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 200 60 0 1 {name=p6 sig_type=std_logic lab=vinn}
C {sky130_fd_pr/corner.sym} 250 90 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -360 160 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} -360 110 0 0 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -10 210 0 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 180 240 0 0 {name=p9 sig_type=std_logic lab=vss}
C {sky130_fd_pr/cap_mim_m3_1.sym} -170 260 0 0 {name=C1 model=cap_mim_m3_1 W=5000 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} -170 300 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -170 220 0 1 {name=p10 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -40 0 0 0 {name=p11 sig_type=std_logic lab=i1}
C {devices/lab_pin.sym} 40 110 0 1 {name=p12 sig_type=std_logic lab=i5}
C {devices/lab_pin.sym} 110 150 1 1 {name=p13 sig_type=std_logic lab=vbn1}
C {devices/lab_pin.sym} -180 60 0 0 {name=p14 sig_type=std_logic lab=vinp}
