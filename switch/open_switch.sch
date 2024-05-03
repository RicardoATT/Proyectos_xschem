v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -170 170 -170 {
lab=GND}
N 170 -170 170 -140 {
lab=GND}
N 160 -140 170 -140 {
lab=GND}
N 160 -270 170 -270 {
lab=VDD}
N 170 -300 170 -270 {
lab=VDD}
N 160 -300 170 -300 {
lab=VDD}
N 120 -270 120 -170 {
lab=Sel}
N 160 -240 160 -200 {
lab=#net5}
N 160 -220 280 -220 {
lab=#net5}
N 160 -140 160 -120 {
lab=GND}
N 280 -50 280 -40 {
lab=GND}
N 160 -50 280 -50 {
lab=GND}
N 160 -120 160 -50 {
lab=GND}
N 160 -320 160 -300 {
lab=VDD}
N 160 -320 240 -320 {
lab=VDD}
N 240 -320 240 -170 {
lab=VDD}
N 240 -170 280 -170 {
lab=VDD}
N 280 -180 280 -170 {
lab=VDD}
N 80 0 280 0 {
lab=Sel}
N 80 -220 80 -0 {
lab=Sel}
N 80 -220 120 -220 {
lab=Sel}
N 250 -180 250 -110 {}
N 250 -110 250 -40 {}
N 310 -110 310 -40 {}
N 310 -180 310 -110 {}
C {sky130_fd_pr/nfet_01v8.sym} 140 -170 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -270 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -200 1 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -20 3 0 {name=M4
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
C {devices/iopin.sym} 160 -320 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 160 -120 2 0 {name=p2 lab=GND}
C {devices/ipin.sym} 80 0 0 0 {name=p3 lab=Sel}
C {devices/ipin.sym} 250 -110 0 0 {name=p4 lab=Vin}
C {devices/opin.sym} 310 -110 0 0 {name=p5 lab=Vout
}
