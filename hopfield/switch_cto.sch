v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -280 120 -280 {
lab=#net1}
N 20 -280 20 -160 {
lab=#net1}
N 20 -160 120 -160 {
lab=#net1}
N 160 -250 160 -190 {
lab=#net2}
N 160 -390 160 -310 {
lab=VDD}
N 160 -130 160 -60 {
lab=GND}
N 160 60 220 60 {
lab=Vin}
N 160 60 160 220 {
lab=Vin}
N 160 220 220 220 {
lab=Vin}
N 280 60 340 60 {
lab=#net3}
N 340 60 340 220 {
lab=#net3}
N 280 220 340 220 {
lab=#net3}
N 250 260 250 360 {
lab=#net1}
N -120 360 250 360 {
lab=#net1}
N -120 -220 -120 360 {
lab=#net1}
N -120 -220 20 -220 {
lab=#net1}
N 100 140 160 140 {
lab=Vin}
N 250 -220 250 20 {}
N 160 -220 250 -220 {}
N 340 140 420 140 {}
N 160 -280 190 -280 {}
N 190 -340 190 -280 {}
N 160 -340 190 -340 {}
N 160 -160 180 -160 {}
N 180 -160 180 -110 {}
N 160 -110 180 -110 {}
N 250 60 250 110 {}
N 250 110 310 110 {}
N 310 -340 310 110 {}
N 190 -340 310 -340 {}
N 250 130 250 220 {}
N 120 130 250 130 {}
N 120 -110 120 130 {}
N 120 -110 160 -110 {}
C {sky130_fd_pr/nfet_01v8.sym} 140 -160 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -280 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 250 40 1 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 250 240 3 0 {name=M4
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
C {devices/iopin.sym} 160 -390 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 160 -60 0 0 {name=p2 lab=GND}
C {devices/ipin.sym} -120 -40 0 0 {name=p3 lab=Sel}
C {devices/ipin.sym} 100 140 0 0 {name=p4 lab=Vin}
C {devices/opin.sym} 420 140 0 0 {name=p5 lab=Vout
}
