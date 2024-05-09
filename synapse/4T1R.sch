v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -60 -300 -40 {
lab=#net1}
N -300 -60 -80 -60 {
lab=#net1}
N -80 -60 -80 -40 {
lab=#net1}
N -300 20 -300 60 {
lab=#net2}
N -300 120 -300 140 {
lab=GND}
N -300 140 -80 140 {
lab=GND}
N -80 120 -80 140 {
lab=GND}
N -80 20 -80 60 {
lab=#net3}
N -300 40 -220 40 {
lab=#net2}
N -160 40 -80 40 {
lab=#net3}
N -40 90 -30 90 {
lab=Vpre}
N -40 -10 -20 -10 {
lab=Vpos}
N -370 -10 -340 -10 {
lab=Vpre}
N -370 90 -340 90 {
lab=Vpos}
N -360 90 -360 160 {
lab=Vpos}
N -360 160 -20 160 {
lab=Vpos}
N -20 -10 -20 160 {
lab=Vpos}
N -30 90 -30 150 {
lab=Vpre}
N -350 150 -30 150 {
lab=Vpre}
N -350 -10 -350 150 {
lab=Vpre}
N -300 140 -300 180 {
lab=GND}
N -300 90 -290 90 {
lab=GND}
N -290 90 -290 140 {
lab=GND}
N -300 -10 -290 -10 {
lab=GND}
N -290 -10 -290 90 {
lab=GND}
N -90 90 -80 90 {
lab=GND}
N -90 90 -90 140 {
lab=GND}
N -90 -10 -80 -10 {
lab=GND}
N -90 -10 -90 90 {
lab=GND}
N -250 -170 -240 -170 {
lab=VDD}
N -240 -200 -240 -170 {
lab=VDD}
N -250 -200 -240 -200 {
lab=VDD}
N -250 -140 -250 -120 {
lab=Ipre}
N -250 -220 -250 -200 {
lab=VDD}
N -250 -240 -250 -220 {
lab=VDD}
N -310 -170 -290 -170 {}
N -300 -170 -300 -60 {}
C {sky130_fd_pr/nfet_01v8.sym} -320 -10 0 0 {name=M1
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
C {sky130_fd_pr/rram_v0.sym} -190 40 1 0 {name=R1
model=rram_v0
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -320 90 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -60 -10 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -60 90 0 1 {name=M4
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
C {devices/ipin.sym} -370 -10 0 0 {name=p1 lab=Vpre}
C {devices/ipin.sym} -370 90 0 0 {name=p2 lab=Vpos}
C {devices/iopin.sym} -300 180 0 0 {name=p3 lab=GND}
C {devices/iopin.sym} -250 -120 1 0 {name=p4 lab=Ipre}
C {sky130_fd_pr/pfet_01v8.sym} -270 -170 0 0 {name=M5
L=1
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
C {devices/iopin.sym} -310 -170 2 0 {name=p5 lab=Ipos}
C {devices/iopin.sym} -250 -240 0 0 {name=p6 lab=VDD}
