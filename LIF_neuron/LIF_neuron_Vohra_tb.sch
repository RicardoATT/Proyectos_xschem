v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -760 -20 40 380 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
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
N -280 -130 -280 -110 {
lab=GND}
N -280 -290 -280 -270 {
lab=VDD}
N -400 -200 -380 -200 {
lab=vin}
N -400 -150 -370 -150 {
lab=vb1}
N -400 -130 -370 -130 {
lab=vb2}
N -140 -200 -120 -200 {
lab=vout}
N -20 -310 -20 -290 {
lab=VDD}
N -20 -230 -20 -210 {
lab=GND}
N -20 -180 -20 -160 {
lab=vb1}
N -20 -100 -20 -80 {
lab=GND}
N 60 -180 60 -160 {
lab=vb2}
N 60 -100 60 -80 {
lab=GND}
N 60 -310 60 -290 {
lab=vin}
N 60 -230 60 -210 {
lab=GND}
C {devices/gnd.sym} -280 -110 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -280 -290 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -20 -260 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -400 -200 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -400 -150 0 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -400 -130 0 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -120 -200 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -20 -210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -20 -130 0 0 {name=V2 value=0.13 savecurrent=false}
C {devices/lab_pin.sym} -20 -180 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {devices/gnd.sym} -20 -80 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 60 -130 0 0 {name=V3 value=0.13 savecurrent=false}
C {devices/lab_pin.sym} 60 -180 0 0 {name=p7 sig_type=std_logic lab=vb2}
C {devices/gnd.sym} 60 -80 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -760 -290 0 0 {name=SIMULATION
only_toplevel=true
value="
.control
	save all
	tran 1n 10u
	write LIF_neuron_Vohra_tb.raw
.endc
" }
C {sky130_fd_pr/corner.sym} -650 -150 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -770 -150 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/launcher.sym} -380 -50 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LIF_neuron_Vohra_tb.raw tran"
}
C {devices/vsource.sym} 60 -260 0 0 {name=V4 
value="PWL(0 0 10u 1)"}
C {devices/lab_pin.sym} 60 -310 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 60 -210 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -20 -310 0 0 {name=l7 lab=VDD}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -50 -60 0 0 {name=x1}
