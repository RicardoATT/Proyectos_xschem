v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2200 -1110 -1400 -710 {flags=graph
y1=0
y2=5e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=i(Vmeas1)}
B 2 -2200 -710 -1400 -310 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6"
node="vpre
vb_pre"}
B 2 -1400 -710 -600 -310 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=v(Vin)}
B 2 -1400 -1110 -600 -710 {flags=graph
y1=-6.9e-07
y2=0.00031
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0







color=17
node="\\"-1.8 i(v10) *\\""}
N -2320 -1060 -2300 -1060 {
lab=vpre}
N -2720 -810 -2720 -790 {
lab=vb_pre}
N -2720 -730 -2720 -710 {
lab=GND}
N -2800 -930 -2800 -910 {
lab=GND}
N -2680 -1110 -2680 -1090 {
lab=#net1}
N -2680 -1140 -2670 -1140 {
lab=vdd_in}
N -2670 -1170 -2670 -1140 {
lab=vdd_in}
N -2680 -1170 -2670 -1170 {
lab=vdd_in}
N -2760 -1140 -2720 -1140 {
lab=#net2}
N -2800 -1170 -2680 -1170 {
lab=vdd_in}
N -2810 -1140 -2800 -1140 {
lab=vdd_in}
N -2810 -1170 -2810 -1140 {
lab=vdd_in}
N -2810 -1170 -2800 -1170 {
lab=vdd_in}
N -2800 -1110 -2800 -1090 {
lab=#net2}
N -2800 -1090 -2740 -1090 {
lab=#net2}
N -2740 -1140 -2740 -1090 {
lab=#net2}
N -2800 -1010 -2800 -990 {
lab=#net3}
N -2800 -1090 -2800 -1070 {
lab=#net2}
N -2780 -670 -2780 -650 {
lab=vdd_in}
N -2780 -590 -2780 -570 {
lab=GND}
N -2460 -990 -2460 -970 {
lab=GND}
N -2560 -1020 -2550 -1020 {
lab=vb_pre}
N -2680 -1030 -2680 -1020 {
lab=Vin}
N -2570 -1060 -2560 -1060 {
lab=Vin}
N -2560 -1100 -2550 -1100 {
lab=vlky}
N -2800 -810 -2800 -790 {
lab=vlky}
N -2800 -730 -2800 -710 {
lab=GND}
N -2460 -1140 -2460 -1130 {
lab=vdd_pre}
N -2680 -670 -2680 -650 {
lab=vdd_pre}
N -2680 -590 -2680 -570 {
lab=GND}
C {devices/gnd.sym} -2460 -970 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -2560 -1020 0 0 {name=p3 sig_type=std_logic lab=vb_pre}
C {devices/lab_pin.sym} -2300 -1060 2 0 {name=p5 sig_type=std_logic lab=vpre}
C {devices/vsource.sym} -2720 -760 0 0 {name=V2 savecurrent=false value=0.5
*"PWL(0 0 100u 0.6)"}
C {devices/lab_pin.sym} -2720 -810 0 0 {name=p6 sig_type=std_logic lab=vb_pre}
C {devices/gnd.sym} -2720 -710 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -2800 -500 0 0 {name=SIMULATION
only_toplevel=true
value="
.option set_threads = 16
.option klu
.ac dec 0.0001 1 10k
.control
	run
	setplot tran1
	set color0=rgb:f/f/f
	set color1=rgb:0/0/0
	settype decibel vpre
	plot vdb(vpre) xlog
.endc
.save all
" }
C {sky130_fd_pr/corner.sym} -2550 -490 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/isource.sym} -2800 -960 0 1 {name=I1 value="ac 1 SINE(2u 2u 10000k)"

}
C {devices/gnd.sym} -2800 -910 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -2700 -1140 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -2780 -1140 0 1 {name=M3
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
C {devices/lab_pin.sym} -2680 -1020 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {devices/ammeter.sym} -2800 -1040 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} -2680 -1060 0 0 {name=Vmeas2 savecurrent=true}
C {devices/vsource.sym} -2780 -620 0 0 {name=V4 savecurrent=false value=1.8
*"PWL(0 0 39.9u 0 40u 1.8)"}
C {devices/lab_pin.sym} -2780 -670 0 0 {name=p1 sig_type=std_logic lab=vdd_in}
C {devices/gnd.sym} -2780 -570 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -2570 -1060 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -2560 -1100 0 0 {name=p11 sig_type=std_logic lab=vlky}
C {devices/vsource.sym} -2800 -760 0 0 {name=V5 savecurrent=false value=0.55}
C {devices/lab_pin.sym} -2800 -810 0 0 {name=p13 sig_type=std_logic lab=vlky}
C {devices/gnd.sym} -2800 -710 0 0 {name=l9 lab=GND}
C {devices/launcher.sym} -2480 -540 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_LIF_ACanalysis.raw ac"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/Input_LIF.sym} -2460 -1060 0 0 {name=x1}
C {devices/vsource.sym} -2680 -620 0 0 {name=V6 savecurrent=false value=1.8
*"PWL(0 0 39.9u 0 40u 1.8)"}
C {devices/lab_pin.sym} -2680 -670 0 0 {name=p2 sig_type=std_logic lab=vdd_pre}
C {devices/gnd.sym} -2680 -570 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -2810 -1170 0 0 {name=p4 sig_type=std_logic lab=vdd_in}
C {devices/lab_pin.sym} -2460 -1140 2 0 {name=p7 sig_type=std_logic lab=vdd_pre}
