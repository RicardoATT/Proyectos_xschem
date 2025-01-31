v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -500 -520 300 -120 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.09984e-06
x2=2.86418e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vout}
N -680 -480 -680 -470 {
lab=VDD}
N -680 -370 -680 -360 {
lab=GND}
N -600 -420 -590 -420 {
lab=Vout}
N -770 -420 -760 -420 {
lab=Vin}
N -790 -220 -790 -200 {
lab=GND}
N -790 -300 -790 -280 {
lab=VDD}
N -730 -220 -730 -200 {
lab=GND}
N -730 -300 -730 -280 {
lab=Vin}
N -600 -420 -600 -350 {
lab=Vout}
N -600 -320 -590 -320 {
lab=GND}
N -590 -320 -590 -290 {
lab=GND}
N -600 -290 -590 -290 {
lab=GND}
N -600 -290 -600 -270 {
lab=GND}
N -650 -320 -640 -320 {
lab=Vb}
N -850 -220 -850 -200 {
lab=GND}
N -850 -300 -850 -280 {
lab=Vb}
N -630 -420 -600 -420 {lab=Vout}
N -680 -380 -680 -370 {lab=GND}
N -760 -420 -740 -420 {lab=Vin}
N -740 -420 -730 -420 {lab=Vin}
N -680 -470 -680 -460 {lab=VDD}
C {devices/gnd.sym} -680 -360 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -680 -480 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} -590 -420 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -770 -420 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} -790 -250 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -790 -200 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -790 -300 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} -730 -250 0 0 {name=V2 value="PWL(0 0 9.9u 0 10u 1.8 19.9u 1.8 20u 0)"}
C {devices/gnd.sym} -730 -200 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -730 -300 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} -810 -80 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code_shown.sym} -680 -80 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
  save all
  tran 1n 30u
  write transmission_gate_tb.raw
.endc
" }
C {devices/launcher.sym} -740 -150 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/transmission_gate_tb.raw tran"
}
C {sky130_fd_pr/nfet_01v8.sym} -620 -320 0 0 {name=M1
L=0.15
W=1.5
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
C {devices/gnd.sym} -600 -270 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -650 -320 0 0 {name=p4 sig_type=std_logic lab=Vb}
C {devices/vsource.sym} -850 -250 0 0 {name=V3 value=0.1}
C {devices/gnd.sym} -850 -200 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -850 -300 1 0 {name=p5 sig_type=std_logic lab=Vb}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/Inf_circuit.sym} -680 -420 0 0 {name=x1}
