v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -3050 -1080 -2250 -680 {flags=graph
y1=0.37
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.04214e-06
x2=7.28501e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -2220 -1080 -1420 -680 {flags=graph
y1=7.5e-06
y2=6.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.04214e-06
x2=7.28501e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Potencia [W]; i(vmeas) vdd *\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -2390 -1190 -2390 -1170 {
lab=GND}
N -2390 -1350 -2390 -1330 {
lab=VDD}
N -2510 -1200 -2480 -1200 {
lab=vb1}
N -2250 -1260 -2230 -1260 {
lab=vout}
N -2130 -1370 -2130 -1350 {
lab=#net1}
N -2130 -1290 -2130 -1270 {
lab=GND}
N -2060 -1370 -2060 -1350 {
lab=vb1}
N -2060 -1290 -2060 -1270 {
lab=GND}
N -2670 -1180 -2670 -1160 {
lab=GND}
N -2550 -1280 -2550 -1260 {
lab=vc1}
N -2550 -1260 -2490 -1260 {
lab=vc1}
N -2550 -1310 -2540 -1310 {
lab=VDD}
N -2540 -1340 -2540 -1310 {
lab=VDD}
N -2550 -1340 -2540 -1340 {
lab=VDD}
N -2630 -1310 -2590 -1310 {
lab=#net2}
N -2670 -1340 -2550 -1340 {
lab=VDD}
N -2680 -1310 -2670 -1310 {
lab=VDD}
N -2680 -1340 -2680 -1310 {
lab=VDD}
N -2680 -1340 -2670 -1340 {
lab=VDD}
N -2670 -1280 -2670 -1260 {
lab=#net2}
N -2670 -1260 -2610 -1260 {
lab=#net2}
N -2610 -1310 -2610 -1260 {
lab=#net2}
N -2670 -1260 -2670 -1240 {
lab=#net2}
N -2130 -1450 -2130 -1430 {
lab=VDD}
C {devices/gnd.sym} -2390 -1170 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2390 -1350 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -2130 -1320 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2510 -1200 0 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -2230 -1260 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -2130 -1270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -2060 -1320 0 0 {name=V2 value=0.5 savecurrent=false}
C {devices/lab_pin.sym} -2060 -1370 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {devices/gnd.sym} -2060 -1270 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -3050 -1350 0 0 {name=SIMULATION
only_toplevel=true
value="
.control
	save all
	tran 1n 20u
	write LIF_neuron_Vohra_tb.raw
.endc
" }
C {sky130_fd_pr/corner.sym} -3060 -1210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -2670 -1110 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LIF_neuron_Vohra_tb.raw tran"
}
C {devices/vdd.sym} -2130 -1450 0 0 {name=l7 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} -2150 -1180 0 0 {name=x1}
C {devices/vdd.sym} -2610 -1340 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -2670 -1210 0 1 {name=I1 value=3u}
C {devices/gnd.sym} -2670 -1160 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -2570 -1310 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -2650 -1310 0 1 {name=M3
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
C {devices/lab_pin.sym} -2550 -1260 0 0 {name=p10 sig_type=std_logic lab=vc1}
C {devices/ammeter.sym} -2130 -1400 2 0 {name=Vmeas savecurrent=true}
