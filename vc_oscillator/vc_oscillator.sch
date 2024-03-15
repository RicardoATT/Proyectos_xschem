v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -340 -200 -340 -160 {
lab=#net1}
N -400 -230 -380 -230 {
lab=vout}
N -400 -230 -400 -130 {
lab=vout}
N -400 -130 -380 -130 {
lab=vout}
N -190 -200 -190 -160 {
lab=#net2}
N -250 -230 -230 -230 {
lab=#net1}
N -250 -230 -250 -130 {
lab=#net1}
N -250 -130 -230 -130 {
lab=#net1}
N -40 -200 -40 -160 {
lab=vout}
N -100 -230 -80 -230 {
lab=#net2}
N -100 -230 -100 -130 {
lab=#net2}
N -100 -130 -80 -130 {
lab=#net2}
N -340 -180 -250 -180 {
lab=#net1}
N -190 -180 -100 -180 {
lab=#net2}
N -340 -280 -340 -260 {
lab=vdd}
N -340 -280 -40 -280 {
lab=vdd}
N -40 -280 -40 -260 {
lab=vdd}
N -190 -280 -190 -260 {
lab=vdd}
N -190 -100 -190 -80 {
lab=#net3}
N -190 -20 -190 0 {
lab=gnd}
N -40 -180 40 -180 {
lab=vout}
N -340 -100 -330 -100 {
lab=gnd}
N -330 -130 -330 -100 {
lab=gnd}
N -340 -130 -330 -130 {
lab=gnd}
N -340 -230 -330 -230 {
lab=vdd}
N -330 -260 -330 -230 {
lab=vdd}
N -340 -260 -330 -260 {
lab=vdd}
N -190 -230 -180 -230 {
lab=vdd}
N -180 -260 -180 -230 {
lab=vdd}
N -190 -260 -180 -260 {
lab=vdd}
N -190 -130 -180 -130 {
lab=#net3}
N -180 -130 -180 -100 {
lab=#net3}
N -190 -100 -180 -100 {
lab=#net3}
N -40 -100 -30 -100 {
lab=gnd}
N -30 -130 -30 -100 {
lab=gnd}
N -40 -130 -30 -130 {
lab=gnd}
N -40 -230 -30 -230 {
lab=vdd}
N -30 -260 -30 -230 {
lab=vdd}
N -40 -260 -30 -260 {
lab=vdd}
N -190 -50 -180 -50 {
lab=gnd}
N -180 -50 -180 -20 {
lab=gnd}
N -190 -20 -180 -20 {
lab=gnd}
N -340 -300 -340 -280 {
lab=vdd}
N 40 -320 40 -180 {
lab=vout}
N -400 -320 40 -320 {
lab=vout}
N -400 -320 -400 -230 {
lab=vout}
N -250 -50 -230 -50 {
lab=vin}
N 40 -180 60 -180 {
lab=vout}
N -180 -20 -40 -20 {
lab=gnd}
N -340 -20 -190 -20 {
lab=gnd}
N -40 -100 -40 -20 {
lab=gnd}
N -340 -100 -340 -20 {
lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} -360 -130 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -360 -230 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -210 -130 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -210 -230 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -60 -130 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -60 -230 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} -210 -50 0 0 {name=M7
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
C {devices/iopin.sym} -340 -300 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -190 0 0 0 {name=p2 lab=gnd}
C {devices/ipin.sym} -250 -50 0 0 {name=p3 lab=vin}
C {devices/opin.sym} 60 -180 0 0 {name=p4 lab=vout}
