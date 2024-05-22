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
lab=Vout}
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
lab=VSS}
N -10 -110 -10 40 {
lab=VSS}
N -230 40 -10 40 {
lab=VSS}
N -230 -110 -230 40 {
lab=VSS}
N -240 -110 -230 -110 {
lab=VSS}
N -120 -10 -110 -10 {
lab=VSS}
N -110 -10 -110 40 {
lab=VSS}
N -120 20 -120 40 {
lab=VSS}
N -390 -10 -380 -10 {
lab=VSS}
N -390 -10 -390 20 {
lab=VSS}
N -390 20 -380 20 {
lab=VSS}
N -380 -60 -380 -40 {
lab=#net3}
N -380 -40 -340 -40 {
lab=#net3}
N -300 -110 -280 -110 {
lab=Vinp}
N 40 -110 60 -110 {
lab=Vinn}
N -340 -40 -340 -10 {
lab=#net3}
N -340 -10 -160 -10 {
lab=#net3}
N -380 20 -380 40 {
lab=VSS}
N -380 40 -230 40 {
lab=VSS}
N -380 -340 -380 -120 {
lab=VDD}
N -380 -340 -240 -340 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -260 -110 0 0 {name=M1
L=0.45
W=46.94
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
L=0.45
W=1.35
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
L=0.45
W=46.94
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
L=0.45
W=1.35
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
L=0.45
W=15.58
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
C {sky130_fd_pr/nfet_01v8.sym} -360 -10 0 1 {name=M6
L=0.45
W=15.58
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
C {devices/isource.sym} -380 -90 0 1 {name=I0 value=36u}
C {devices/iopin.sym} -380 40 2 0 {name=p5 lab=VSS}
C {devices/iopin.sym} -380 -340 2 0 {name=p11 lab=VDD}
C {devices/ipin.sym} -300 -110 0 0 {name=p12 lab=Vinp}
C {devices/ipin.sym} 60 -110 2 0 {name=p2 lab=Vinn}
C {devices/opin.sym} 0 -200 0 0 {name=p3 lab=Vout}
