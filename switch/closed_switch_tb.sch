v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -360 40 440 440 {flags=graph
y1=-7.7e-09
y2=0.00021
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vread1)
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
N -200 -220 -200 -200 {
lab=VDD}
N -340 -120 -340 -100 {
lab=GND}
N -340 -200 -340 -180 {
lab=VDD}
N -270 -120 -270 -100 {
lab=GND}
N -270 -200 -270 -180 {
lab=vin}
N -270 -200 -230 -200 {
lab=vin}
N -170 -200 -130 -200 {
lab=vout}
N -570 -90 -570 -70 {
lab=GND}
N -130 -120 -130 -100 {
lab=GND}
N -130 -200 -130 -180 {
lab=vout}
N -200 -40 -200 -20 {
lab=GND}
N -200 -90 -200 -80 {
lab=#net1}
N -200 -160 -200 -150 {
lab=#net2}
N -160 -120 -160 -90 {
lab=#net1}
N -200 -90 -160 -90 {
lab=#net1}
N -220 -120 -200 -120 {
lab=GND}
C {devices/vdd.sym} -200 -220 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -340 -150 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -340 -100 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -340 -200 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} -270 -150 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -270 -100 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -270 -200 2 1 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -130 -200 0 1 {name=p1 sig_type=std_logic lab=vout}
C {sky130_fd_pr/corner.sym} -60 -210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 70 -210 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  write closed_switch_tb.raw
.endc
" }
C {devices/launcher.sym} 130 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/closed_switch_tb.raw tran"
}
C {sky130_fd_pr/pfet_01v8.sym} -200 -180 3 0 {name=M1
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
C {devices/vsource.sym} -570 -120 0 0 {name=V3 value="PWL(0 0 9.999u 0 10u 1.8)"}
C {devices/gnd.sym} -570 -70 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -130 -150 0 0 {name=vread1 value=1e-4}
C {devices/gnd.sym} -130 -100 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -200 -60 1 0 {name=M2
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
C {devices/gnd.sym} -200 -20 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -180 -120 2 0 {name=M3
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
C {devices/gnd.sym} -220 -120 1 0 {name=l5 lab=GND}
