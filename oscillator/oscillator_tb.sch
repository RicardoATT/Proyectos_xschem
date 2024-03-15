v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -540 120 260 520 {flags=graph
y1=-0.0016
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N -220 -50 -220 -30 {
lab=GND}
N -220 -170 -220 -150 {
lab=VDD}
N -390 -100 -370 -100 {
lab=vb2}
N -390 -120 -370 -120 {
lab=vb1}
N -390 -80 -370 -80 {
lab=vfb}
N -640 -70 -640 -20 {
lab=GND}
N -640 -180 -640 -130 {
lab=vb2}
N -640 -20 -640 0 {
lab=GND}
N -460 -20 -440 -20 {
lab=vfb}
N -720 -150 -720 -130 {
lab=vb1}
N -720 -70 -720 -50 {
lab=GND}
N -800 -150 -800 -130 {
lab=VDD}
N -800 -70 -800 -50 {
lab=GND}
N -640 -20 -520 -20 {
lab=GND}
N -640 -180 -440 -180 {
lab=vb2}
C {/home/ricardo/Escritorio/Proyectos_xschem/oscillator/oscillator.sym} -220 -100 0 0 {name=x1}
C {devices/vdd.sym} -220 -170 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -220 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -390 -120 0 0 {name=p1 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -390 -100 0 0 {name=p2 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -390 -80 0 0 {name=p3 sig_type=std_logic lab=vfb}
C {devices/vsource.sym} -640 -100 0 0 {name=V1 value="PULSE(0 1.8 0 1n 1n 50n 100n 10)" savecurrent=true}
C {devices/gnd.sym} -640 0 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -440 -180 2 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -440 -20 2 0 {name=p5 sig_type=std_logic lab=vfb}
C {devices/vsource.sym} -720 -100 0 0 {name=V2 value=1.8 savecurrent=true}
C {devices/lab_pin.sym} -720 -150 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {devices/gnd.sym} -720 -50 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -800 -100 0 0 {name=V3 value=1.8 savecurrent=true}
C {devices/gnd.sym} -800 -50 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -800 -150 0 0 {name=l6 lab=VDD}
C {devices/code.sym} -930 80 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -800 80 0 0 {name=simulacion only_toplevel=false value="
.control
	save all
	run
	tran 100p 400n
	write oscillator_tb.raw
.endc
"}
C {devices/launcher.sym} -480 90 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inverter_tb.raw tran"
}
C {devices/res.sym} -490 -20 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
