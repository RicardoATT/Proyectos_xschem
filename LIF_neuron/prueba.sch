v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -50 40 -50 {
lab=vin}
N 80 -50 90 -50 {
lab=GND}
N 90 -50 90 -20 {
lab=GND}
N 80 -20 90 -20 {
lab=GND}
N -260 -220 -260 -200 {
lab=VDD}
N -260 -140 -260 -120 {
lab=GND}
N -180 -220 -180 -200 {
lab=vin}
N -180 -140 -180 -120 {
lab=GND}
N 80 -100 80 -80 {
lab=#net1}
N 80 -20 80 0 {
lab=GND}
C {devices/vsource.sym} -260 -170 0 0 {name=V1 
value=1.8}
C {devices/gnd.sym} -260 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -180 -170 0 0 {name=V4 
value="PWL(0 0 10u 1)"}
C {devices/lab_pin.sym} -180 -220 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -180 -120 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -260 -220 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 20 -50 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/vdd.sym} 80 -160 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 80 0 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 80 -130 0 0 {name=Vmeas savecurrent=true}
C {sky130_fd_pr/pfet_01v8.sym} 60 -50 0 0 {name=M2
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
C {sky130_fd_pr/corner.sym} -410 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} -410 0 0 0 {name=SIMULATION
only_toplevel=true
value="
.control
	save all
	tran 1n 10u
	plot i(Vmeas)
.endc
" }
