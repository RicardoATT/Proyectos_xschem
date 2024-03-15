v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -500 0 300 400 {flags=graph
y1=-0.0016
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.02934e-08
x2=5.29541e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="vin
vout"}
N -300 -130 -300 -110 {
lab=GND}
N -420 -180 -380 -180 {
lab=vin}
N -420 -60 -420 -40 {
lab=GND}
N -480 -260 -300 -260 {
lab=#net1}
N -300 -260 -300 -230 {
lab=#net1}
N -480 -60 -480 -40 {
lab=GND}
N -210 -180 -190 -180 {
lab=vout}
N -420 -180 -420 -120 {
lab=vin}
N -480 -260 -480 -120 {
lab=#net1}
C {/home/ricardo/Escritorio/Proyectos_xschem/inverter/inverter.sym} -260 -160 0 0 {name=x1}
C {devices/gnd.sym} -300 -110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -420 -90 0 0 {name=V1 value="PULSE(0 1.8 0 1n 1n 50n 100n 4)" savecurrent=true}
C {devices/vsource.sym} -480 -90 0 0 {name=V2 value=1.8 savecurrent=true}
C {devices/gnd.sym} -420 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -480 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -420 -180 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -190 -180 2 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} -220 -130 0 0 {name=s1 only_toplevel=false value="
.control
	save all
	run
	tran 10p 400n
	write inverter_tb.raw
.endc
"}
C {devices/code.sym} -130 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 110 -30 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inverter_tb.raw tran"
}
