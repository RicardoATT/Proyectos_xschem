v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -540 120 260 520 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
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
N -560 -180 -520 -180 {
lab=#net1}
N -540 -20 -520 -20 {
lab=#net1}
N -540 -180 -540 -20 {
lab=#net1}
N -560 -20 -540 -20 {
lab=#net1}
N -740 -70 -740 -20 {
lab=GND}
N -740 -180 -740 -130 {
lab=#net2}
N -740 -20 -740 0 {
lab=GND}
N -460 -180 -440 -180 {
lab=vb2}
N -460 -20 -440 -20 {
lab=vfb}
N -820 -150 -820 -130 {
lab=vb1}
N -820 -70 -820 -50 {
lab=GND}
N -900 -150 -900 -130 {
lab=VDD}
N -900 -70 -900 -50 {
lab=GND}
N -740 -20 -620 -20 {
lab=GND}
N -740 -180 -620 -180 {
lab=#net2}
C {/home/ricardo/Escritorio/Proyectos_xschem/oscillator/oscillator.sym} -220 -100 0 0 {name=x1}
C {devices/vdd.sym} -220 -170 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -220 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -390 -120 0 0 {name=p1 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -390 -100 0 0 {name=p2 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -390 -80 0 0 {name=p3 sig_type=std_logic lab=vfb}
C {devices/vsource.sym} -740 -100 0 0 {name=V1 value="PULSE(0 1.8 0 1n 1n 50n 100n 20)" savecurrent=true}
C {sky130_fd_pr/diode.sym} -490 -180 1 0 {name=D1
model=diode_pw2nd_05v5
area=1e12
pj=4e6
}
C {sky130_fd_pr/diode.sym} -490 -20 3 0 {name=D2
model=diode_pw2nd_05v5
area=1e12
pj=4e6
}
C {sky130_fd_pr/res_generic_m1.sym} -590 -20 1 0 {name=R2
W=1
L=1
model=res_generic_m1
mult=1}
C {devices/gnd.sym} -740 0 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -440 -180 2 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -440 -20 2 0 {name=p5 sig_type=std_logic lab=vfb}
C {devices/vsource.sym} -820 -100 0 0 {name=V2 value=1.8 savecurrent=true}
C {devices/lab_pin.sym} -820 -150 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {devices/gnd.sym} -820 -50 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -900 -100 0 0 {name=V3 value=1.8 savecurrent=true}
C {devices/gnd.sym} -900 -50 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -900 -150 0 0 {name=l6 lab=VDD}
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
C {sky130_fd_pr/rram_v0.sym} -590 -180 3 0 {name=R1
model=rram_v0
spiceprefix=X
}
