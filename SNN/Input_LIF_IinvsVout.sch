v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2200 -1110 -1400 -710 {flags=graph
y1=-0.07
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.01
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=vpre}
B 2 -2200 -710 -1400 -310 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.01
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
x2=0.01
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
x2=0.01
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0








}
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
N -2560 -990 -2560 -980 {lab=GND}
N -2560 -990 -2550 -990 {lab=GND}
C {devices/gnd.sym} -2460 -970 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -2560 -1020 0 0 {name=p3 sig_type=std_logic lab=vb_pre}
C {devices/lab_pin.sym} -2300 -1060 2 0 {name=p5 sig_type=std_logic lab=vpre}
C {devices/vsource.sym} -2720 -760 0 0 {name=V2 savecurrent=false value=0
*"PWL(0 0.3 14.999u 0.3 15u 0.35 29.999u 0.35 30u 0.4 44.999u 0.4 45u 0.45 59.999u 0.45 60u 0.5 74.999u 0.5 75u 0.55 89.999u 0.55 90u 0.6)"
*"PWL(0 0.3 14.999u 0.3 15u 0.35 29.999u 0.35 30u 0.4 44.999u 0.4 45u 0.45 59.999u 0.45 60u 0.5 74.999u 0.5 75u 0.55 89.999u 0.55 90u 0.6)"
*"PWL(0 0 50u 0.6)"
*"PWL(0 0 0.999m 0 1m 0.1 1.999m 0.1 2m 0.2 2.999m 0.2 3m 0.3 3.999m 0.3 4m 0.4 4.999m 0.4 5m 0.5 5.999m 0.5 6m 0.6)"}
C {devices/lab_pin.sym} -2720 -810 0 0 {name=p6 sig_type=std_logic lab=vb_pre}
C {devices/gnd.sym} -2720 -710 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -2800 -500 0 0 {name=SIMULATION
only_toplevel=true
value="
*.option set_threads = 16
*.option klu
.control
	set num_threads = 8
	set wr_vecnames
	set wr_singlescale
	tran 100n 100m
	write Output_LIF_Frq0.raw
	*wrdata Output_LIF_Frq0.txt v(vpre) v(vb_pre)
.endc
.save all
" }
C {sky130_fd_pr/corner.sym} -2550 -490 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/isource.sym} -2800 -960 0 1 {name=I1 value=4u

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
C {devices/launcher.sym} -2340 -720 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_LIF_Frq2.raw tran"
}
C {devices/vsource.sym} -2680 -620 0 0 {name=V6 savecurrent=false value=1.8
*"PWL(0 0 39.9u 0 40u 1.8)"}
C {devices/lab_pin.sym} -2680 -670 0 0 {name=p2 sig_type=std_logic lab=vdd_pre}
C {devices/gnd.sym} -2680 -570 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -2810 -1170 0 0 {name=p4 sig_type=std_logic lab=vdd_in}
C {devices/lab_pin.sym} -2460 -1140 2 0 {name=p7 sig_type=std_logic lab=vdd_pre}
C {devices/launcher.sym} -2340 -690 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_LIF_Frq0.raw tran"
}
C {devices/launcher.sym} -2340 -780 0 0 {name=h2
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_LIF_Frq4.raw tran"
}
C {devices/launcher.sym} -2340 -750 0 0 {name=h3
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_LIF_Frq3.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/Output_LIF.sym} -2460 -1060 0 0 {name=x1}
C {devices/gnd.sym} -2560 -980 0 0 {name=l2 lab=GND}
C {devices/launcher.sym} -2340 -610 0 0 {name=h4
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Output_LIF_Frq1.raw tran"
}
C {devices/launcher.sym} -2340 -580 0 0 {name=h6
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Output_LIF_Frq2.raw tran"
}
C {devices/launcher.sym} -2340 -550 0 0 {name=h7
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Output_LIF_Frq0.raw tran"
}
