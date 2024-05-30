v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -3050 -1080 -2250 -680 {flags=graph
y1=0.300003
y2=1.8
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
node="vin
vout"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N -2570 -1190 -2570 -1170 {
lab=GND}
N -2570 -1350 -2570 -1330 {
lab=VDD}
N -2690 -1200 -2660 -1200 {
lab=vb1}
N -2430 -1260 -2410 -1260 {
lab=vout}
N -2310 -1370 -2310 -1350 {
lab=VDD}
N -2310 -1290 -2310 -1270 {
lab=GND}
N -2240 -1370 -2240 -1350 {
lab=vb1}
N -2240 -1290 -2240 -1270 {
lab=GND}
C {devices/gnd.sym} -2570 -1170 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2570 -1350 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -2310 -1320 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2690 -1200 0 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -2410 -1260 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -2310 -1270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -2240 -1320 0 0 {name=V2 value=0.5 savecurrent=false}
C {devices/lab_pin.sym} -2240 -1370 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {devices/gnd.sym} -2240 -1270 0 0 {name=l4 lab=GND}
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
C {devices/vdd.sym} -2310 -1370 0 0 {name=l7 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} -2330 -1180 0 0 {name=x1}
