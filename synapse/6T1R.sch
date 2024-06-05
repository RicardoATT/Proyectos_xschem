v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -60 -300 -40 {
lab=vipre}
N -300 -60 -80 -60 {
lab=vipre}
N -80 -60 -80 -40 {
lab=vipre}
N -300 20 -300 60 {
lab=BE}
N -300 120 -300 140 {
lab=GND}
N -300 140 -80 140 {
lab=GND}
N -80 120 -80 140 {
lab=GND}
N -80 20 -80 60 {
lab=TE}
N -300 40 -220 40 {
lab=BE}
N -160 40 -80 40 {
lab=TE}
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
N -30 -110 -20 -110 {
lab=VDD}
N -20 -140 -20 -110 {
lab=VDD}
N -30 -140 -20 -140 {
lab=VDD}
N -30 -80 -30 -60 {
lab=Ipos}
N -30 -160 -30 -140 {
lab=VDD}
N -110 -110 -110 -60 {
lab=vipre}
N -190 -80 -190 -60 {
lab=vipre}
N -200 -110 -190 -110 {
lab=VDD}
N -200 -150 -200 -110 {
lab=VDD}
N -200 -150 -30 -150 {
lab=VDD}
N -110 -110 -70 -110 {
lab=vipre}
N -150 -110 -110 -110 {
lab=vipre}
N -190 -150 -190 -140 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -320 -10 2 1 {name=M1
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} -60 -10 2 0 {name=M3
L=0.15
W=20
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
C {devices/iopin.sym} -30 -60 0 0 {name=p4 lab=Ipos}
C {sky130_fd_pr/pfet_01v8.sym} -50 -110 0 0 {name=M6
L=0.15
W=20
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
C {devices/iopin.sym} -30 -160 0 0 {name=p6 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -170 -110 0 1 {name=M5
L=0.15
W=20
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
C {devices/lab_pin.sym} -240 40 3 0 {name=p7 sig_type=std_logic lab=BE}
C {devices/lab_pin.sym} -140 40 3 0 {name=p8 sig_type=std_logic lab=TE}
C {sky130_fd_pr/nfet_01v8.sym} -320 90 2 1 {name=M2
L=0.15
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} -60 90 2 0 {name=M4
L=0.15
W=5
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
C {devices/lab_pin.sym} -200 -60 3 0 {name=p9 sig_type=std_logic lab=vipre}
