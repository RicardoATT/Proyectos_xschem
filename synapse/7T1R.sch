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
N -330 -170 -320 -170 {
lab=VDD}
N -320 -200 -320 -170 {
lab=VDD}
N -330 -200 -320 -200 {
lab=VDD}
N -330 -140 -330 -120 {
lab=Ipre}
N -190 -170 -180 -170 {
lab=VDD}
N -180 -200 -180 -170 {
lab=VDD}
N -190 -200 -180 -200 {
lab=VDD}
N -50 -170 -40 -170 {
lab=VDD}
N -40 -200 -40 -170 {
lab=VDD}
N -50 -200 -40 -200 {
lab=VDD}
N -370 -170 -370 -130 {
lab=#net1}
N -370 -130 -230 -130 {
lab=#net1}
N -230 -170 -230 -130 {
lab=#net1}
N -230 -130 -190 -130 {
lab=#net1}
N -190 -140 -190 -130 {
lab=#net1}
N -190 -130 -90 -130 {
lab=#net1}
N -90 -170 -90 -130 {
lab=#net1}
N -50 -140 -50 -120 {
lab=Ipos}
N -330 -220 -330 -200 {
lab=VDD}
N -330 -220 -50 -220 {
lab=VDD}
N -50 -220 -50 -200 {
lab=VDD}
N -190 -220 -190 -200 {
lab=VDD}
N -330 -240 -330 -220 {
lab=VDD}
N -190 -130 -190 -60 {
lab=#net1}
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
C {devices/iopin.sym} -330 -120 1 0 {name=p4 lab=Ipre}
C {sky130_fd_pr/pfet_01v8.sym} -350 -170 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -210 -170 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -70 -170 0 0 {name=M7
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
C {devices/iopin.sym} -50 -120 1 0 {name=p5 lab=Ipos}
C {devices/iopin.sym} -330 -240 0 0 {name=p6 lab=VDD}
