v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -580 -190 -540 -190 {
lab=Ib}
N -620 -220 -500 -220 {
lab=VDD}
N -630 -190 -620 -190 {
lab=VDD}
N -630 -220 -630 -190 {
lab=VDD}
N -630 -220 -620 -220 {
lab=VDD}
N -500 -190 -490 -190 {
lab=VDD}
N -490 -220 -490 -190 {
lab=VDD}
N -500 -220 -490 -220 {
lab=VDD}
N -560 -190 -560 -160 {
lab=Ib}
N -620 -160 -560 -160 {
lab=Ib}
N -620 -160 -620 -140 {
lab=Ib}
N -500 -160 -500 -140 {
lab=I}
C {sky130_fd_pr/pfet_01v8.sym} -600 -190 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -520 -190 0 0 {name=M2
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
C {devices/iopin.sym} -560 -220 3 0 {name=p1 lab=VDD}
C {devices/opin.sym} -620 -140 1 0 {name=p2 lab=Ib}
C {devices/opin.sym} -500 -140 1 0 {name=p3 lab=I}
