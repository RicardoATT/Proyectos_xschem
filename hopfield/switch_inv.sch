v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 -280 -220 -280 {
lab=#net1}
N -320 -280 -320 -160 {
lab=#net1}
N -320 -160 -220 -160 {
lab=#net1}
N -180 -250 -180 -190 {
lab=#net2}
N -180 -130 -180 -60 {
lab=GND}
N -180 60 -120 60 {
lab=#net3}
N -180 60 -180 220 {
lab=#net3}
N -180 220 -120 220 {
lab=#net3}
N -60 60 0 60 {
lab=#net4}
N 0 60 0 220 {
lab=#net4}
N -60 220 0 220 {
lab=#net4}
N -90 260 -90 360 {
lab=#net1}
N -460 360 -90 360 {
lab=#net1}
N -460 -220 -460 360 {
lab=#net1}
N -460 -220 -320 -220 {
lab=#net1}
N -90 -220 -90 20 {
lab=#net2}
N -180 -220 -90 -220 {
lab=#net2}
N 0 140 80 140 {
lab=#net4}
N -180 -280 -90 -280 {
lab=#net5}
N -90 -340 -90 -280 {
lab=#net5}
N -180 -340 -90 -340 {
lab=#net5}
N -180 -160 -140 -160 {
lab=GND}
N -140 -160 -140 -100 {
lab=GND}
N -180 -100 -140 -100 {
lab=GND}
N -90 60 -90 80 {
lab=#net5}
N -90 80 -40 80 {
lab=#net5}
N -40 -340 -40 80 {
lab=#net5}
N -90 -340 -40 -340 {
lab=#net5}
N -90 130 -90 220 {
lab=GND}
N -210 130 -90 130 {
lab=GND}
N -210 -100 -210 130 {
lab=GND}
N -210 -100 -180 -100 {
lab=GND}
N -680 20 -460 20 {
lab=#net1}
N -180 -340 -180 -310 {
lab=#net5}
N -180 -420 -180 -340 {
lab=#net5}
N -290 -420 -180 -420 {
lab=#net5}
N -290 -420 -290 -400 {
lab=#net5}
N -680 80 -680 125 {
lab=GND}
N -300 150 -180 150 {
lab=#net3}
N -300 150 -300 185 {
lab=#net3}
N 80 220 80 270 {
lab=GND}
N 80 140 80 160 {
lab=#net4}
N -300 245 -300 270 {
lab=GND}
N -290 -340 -290 -300 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -200 -160 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -200 -280 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -90 40 1 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -90 240 3 0 {name=M4
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
C {devices/code_shown.sym} 290 -240 0 0 {name=s1 only_toplevel=false value="


.tran 1 ns 100 ns
.control
	run 
	plot v(V_out)
.endc
"}
C {devices/vsource.sym} -680 50 0 0 {name=Vbl value="PWL(0 0 10u 0 15u 3 20u 0)"}
C {devices/vsource.sym} -290 -370 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -680 125 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -300 215 0 0 {name=V1 value=1 savecurrent=false}
C {devices/res.sym} 80 190 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 80 270 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -300 270 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -180 -60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -290 -300 0 0 {name=l5 lab=GND}
