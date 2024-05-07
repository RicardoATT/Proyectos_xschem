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
lab=#net3}
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
lab=GND}
N -10 -110 -10 40 {
lab=GND}
N -230 40 -10 40 {
lab=GND}
N -230 -110 -230 40 {
lab=GND}
N -240 -110 -230 -110 {
lab=GND}
N -120 -10 -110 -10 {
lab=GND}
N -110 -10 -110 40 {
lab=GND}
N -120 20 -120 40 {
lab=GND}
N -230 40 -230 60 {
lab=GND}
N -240 -360 -240 -340 {
lab=VDD}
N -450 -40 -450 -20 {
lab=VDD}
N -450 40 -450 60 {
lab=GND}
N 0 -200 100 -200 {
lab=#net3}
N 100 -140 100 40 {
lab=GND}
N -10 40 100 40 {
lab=GND}
N -390 -40 -390 -20 {
lab=Vbn1}
N -390 40 -390 60 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -260 -110 0 0 {name=M1
L=0.15
W=1
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
L=0.15
W=1
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
L=0.15
W=1
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
L=0.15
W=1
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
L=0.15
W=1
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
C {devices/gnd.sym} -230 60 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -240 -360 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -450 10 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -450 -40 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -450 60 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 100 -170 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/vsource.sym} -390 10 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -390 60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -390 -40 1 0 {name=p1 sig_type=std_logic lab=Vbn1}
C {devices/lab_pin.sym} -160 -10 0 0 {name=p2 sig_type=std_logic lab=Vbn1}
