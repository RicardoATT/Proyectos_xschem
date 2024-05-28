v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -60 -260 -40 {
lab=GND}
N -260 -140 -200 -140 {
lab=#net1}
N -260 -140 -260 -120 {
lab=#net1}
N -160 -180 -60 -180 {
lab=#net2}
N -160 -180 -160 -170 {
lab=#net2}
N -160 -140 -150 -140 {
lab=GND}
N -260 -50 -60 -50 {
lab=GND}
N -60 -120 -60 -50 {
lab=GND}
N -160 -110 -160 -50 {
lab=GND}
N -150 -140 -150 -110 {
lab=GND}
N -160 -110 -150 -110 {
lab=GND}
C {devices/vsource.sym} -260 -90 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -260 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -60 -150 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/code_shown.sym} 0 -170 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
	dc v1 0 1.8 0.001
	plot -i(v2)
.endc
.save all
" }
C {sky130_fd_pr/corner.sym} 170 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} -180 -140 0 0 {name=M1
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
