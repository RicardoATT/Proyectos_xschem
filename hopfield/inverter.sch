v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -160 -240 -120 {
lab=vout}
N -300 -190 -280 -190 {
lab=vin}
N -300 -190 -300 -90 {
lab=vin}
N -300 -90 -280 -90 {
lab=vin}
N -240 -240 -240 -220 {
lab=vdd}
N -240 -60 -240 -40 {
lab=gnd}
N -240 -140 -220 -140 {
lab=vout}
N -320 -140 -300 -140 {
lab=vin}
N -240 -90 -230 -90 {
lab=gnd}
N -230 -90 -230 -60 {
lab=gnd}
N -240 -60 -230 -60 {
lab=gnd}
N -240 -190 -230 -190 {
lab=vdd}
N -230 -220 -230 -190 {
lab=vdd}
N -240 -220 -230 -220 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -260 -190 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -260 -90 0 0 {name=M2
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
C {devices/ipin.sym} -320 -140 0 0 {name=p1 lab=vin
}
C {devices/iopin.sym} -240 -240 0 0 {name=p2 lab=vdd}
C {devices/opin.sym} -220 -140 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} -240 -40 0 0 {name=p4 lab=gnd}
