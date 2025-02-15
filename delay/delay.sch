v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 50 -100 50 {
lab=GND}
N -100 50 -100 80 {
lab=GND}
N -110 80 -100 80 {
lab=GND}
N -110 -50 -100 -50 {
lab=VDD}
N -100 -80 -100 -50 {
lab=VDD}
N -110 -80 -100 -80 {
lab=VDD}
N -110 -20 -110 20 {
lab=#net1}
N -170 50 -150 50 {
lab=Vin}
N -170 -50 -170 50 {
lab=Vin}
N -170 -50 -150 -50 {
lab=Vin}
N 50 50 60 50 {
lab=GND}
N 60 50 60 80 {
lab=GND}
N 50 80 60 80 {
lab=GND}
N 50 -50 60 -50 {
lab=VDD}
N 60 -80 60 -50 {
lab=VDD}
N 50 -80 60 -80 {
lab=VDD}
N 50 -20 50 20 {
lab=#net2}
N -10 50 10 50 {
lab=#net1}
N -10 -50 -10 50 {
lab=#net1}
N -10 -50 10 -50 {
lab=#net1}
N -110 0 -10 -0 {
lab=#net1}
N 210 50 220 50 {
lab=GND}
N 220 50 220 80 {
lab=GND}
N 210 80 220 80 {
lab=GND}
N 210 -50 220 -50 {
lab=VDD}
N 220 -80 220 -50 {
lab=VDD}
N 210 -80 220 -80 {
lab=VDD}
N 210 -20 210 20 {
lab=#net3}
N 150 50 170 50 {
lab=#net2}
N 150 -50 150 50 {
lab=#net2}
N 150 -50 170 -50 {
lab=#net2}
N 50 0 150 0 {
lab=#net2}
N 370 50 380 50 {
lab=GND}
N 380 50 380 80 {
lab=GND}
N 370 80 380 80 {
lab=GND}
N 370 -50 380 -50 {
lab=VDD}
N 380 -80 380 -50 {
lab=VDD}
N 370 -80 380 -80 {
lab=VDD}
N 370 -20 370 20 {
lab=Vout}
N 310 50 330 50 {
lab=#net3}
N 310 -50 310 50 {
lab=#net3}
N 310 -50 330 -50 {
lab=#net3}
N 210 0 310 0 {
lab=#net3}
N 370 80 370 100 {
lab=GND}
N 210 100 370 100 {
lab=GND}
N 210 80 210 100 {
lab=GND}
N 50 100 210 100 {
lab=GND}
N 50 80 50 100 {
lab=GND}
N -110 100 50 100 {
lab=GND}
N -110 80 -110 100 {
lab=GND}
N -110 -100 -110 -80 {
lab=VDD}
N -110 -100 50 -100 {
lab=VDD}
N 50 -100 50 -80 {
lab=VDD}
N 50 -100 210 -100 {
lab=VDD}
N 210 -100 210 -80 {
lab=VDD}
N 210 -100 370 -100 {
lab=VDD}
N 370 -100 370 -80 {
lab=VDD}
N -190 0 -170 0 {
lab=Vin}
N 370 -0 390 0 {
lab=Vout}
N -130 -100 -110 -100 {
lab=VDD}
N -130 100 -110 100 {
lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -130 -50 0 0 {name=M1
L=\{Lp_delay\}
W=\{Wp_delay\}
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
C {sky130_fd_pr/nfet_01v8.sym} -130 50 0 0 {name=M2
L=\{Ln_delay\}
W=\{Wn_delay\}
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
C {sky130_fd_pr/pfet_01v8.sym} 30 -50 0 0 {name=M3
L=\{Lp_delay\}
W=\{Wp_delay\}
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
C {sky130_fd_pr/nfet_01v8.sym} 30 50 0 0 {name=M4
L=\{Ln_delay\}
W=\{Wn_delay\}
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
C {sky130_fd_pr/pfet_01v8.sym} 190 -50 0 0 {name=M5
L=\{Lp_delay\}
W=\{Wp_delay\}
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
C {sky130_fd_pr/nfet_01v8.sym} 190 50 0 0 {name=M6
L=\{Ln_delay\}
W=\{Wn_delay\}
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
C {sky130_fd_pr/pfet_01v8.sym} 350 -50 0 0 {name=M7
L=\{Lp_delay\}
W=\{Wp_delay\}
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
C {sky130_fd_pr/nfet_01v8.sym} 350 50 0 0 {name=M8
L=\{Ln_delay\}
W=\{Wn_delay\}
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
C {devices/ipin.sym} -190 0 0 0 {name=p1 lab=Vin}
C {devices/opin.sym} 390 0 0 0 {name=p2 lab=Vout}
C {devices/iopin.sym} -130 -100 2 0 {name=p3 lab=VDD}
C {devices/iopin.sym} -130 100 2 0 {name=p4 lab=GND}
