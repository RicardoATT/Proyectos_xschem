v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -480 -260 -460 -260 {
lab=Vout}
N -460 -420 -460 -260 {
lab=Vout}
N -480 -420 -460 -420 {
lab=Vout}
N -560 -260 -540 -260 {
lab=Vin}
N -560 -420 -560 -260 {
lab=Vin}
N -560 -420 -540 -420 {
lab=Vin}
N -530 -530 -490 -530 {
lab=#net1}
N -460 -530 -460 -520 {
lab=VDD}
N -460 -520 -430 -520 {
lab=VDD}
N -430 -530 -430 -520 {
lab=VDD}
N -560 -530 -560 -520 {
lab=GND}
N -590 -520 -560 -520 {
lab=GND}
N -590 -530 -590 -520 {
lab=GND}
N -560 -590 -560 -570 {
lab=Vin}
N -560 -590 -460 -590 {
lab=Vin}
N -460 -590 -460 -570 {
lab=Vin}
N -510 -530 -510 -460 {
lab=#net1}
N -610 -530 -590 -530 {
lab=GND}
N -430 -530 -410 -530 {
lab=VDD}
N -460 -340 -440 -340 {
lab=Vout}
N -700 -590 -560 -590 {
lab=Vin}
N -680 -590 -680 -200 {
lab=Vin}
N -680 -200 -510 -200 {
lab=Vin}
N -510 -220 -510 -200 {
lab=Vin}
N -680 -340 -560 -340 {
lab=Vin}
N -510 -420 -510 -410 {
lab=VDD}
N -510 -410 -430 -410 {
lab=VDD}
N -430 -520 -430 -410 {
lab=VDD}
N -510 -270 -510 -260 {
lab=GND}
N -600 -270 -510 -270 {
lab=GND}
N -600 -530 -600 -270 {
lab=GND}
N -460 -260 -460 -210 {
lab=Vout}
N -460 -180 -450 -180 {
lab=GND}
N -450 -180 -450 -150 {
lab=GND}
N -460 -150 -450 -150 {
lab=GND}
N -510 -270 -450 -270 {
lab=GND}
N -450 -270 -450 -180 {
lab=GND}
N -520 -180 -500 -180 {
lab=Vbias}
C {sky130_fd_pr/pfet_01v8.sym} -510 -440 3 1 {name=M1
L=0.15
W=1.5
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
C {sky130_fd_pr/nfet_01v8.sym} -510 -240 3 0 {name=M2
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet_01v8.sym} -460 -550 1 0 {name=M3
L=0.15
W=1.5
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
C {sky130_fd_pr/nfet_01v8.sym} -560 -550 1 0 {name=M4
L=0.15
W=1.5
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
C {devices/iopin.sym} -610 -530 2 0 {name=p1 lab=GND}
C {devices/iopin.sym} -410 -530 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} -440 -340 0 0 {name=p3 lab=Vout}
C {devices/ipin.sym} -700 -590 0 0 {name=p4 lab=Vin}
C {sky130_fd_pr/nfet_01v8.sym} -480 -180 0 0 {name=M5
L=0.15
W=1.5
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
C {devices/ipin.sym} -520 -180 0 0 {name=p5 lab=Vbias}
