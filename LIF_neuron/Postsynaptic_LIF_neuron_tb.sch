v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -3050 -1080 -2250 -680 {flags=graph
y1=0.27
y2=1.9
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


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vout}
N -2110 -1250 -2090 -1250 {
lab=vout}
N -3050 -1500 -3050 -1480 {
lab=VDD}
N -3050 -1420 -3050 -1400 {
lab=GND}
N -2990 -1500 -2990 -1480 {
lab=vb}
N -2990 -1420 -2990 -1400 {
lab=GND}
N -2770 -1170 -2770 -1150 {
lab=GND}
N -2650 -1350 -2650 -1330 {
lab=#net1}
N -2650 -1380 -2640 -1380 {
lab=VDD}
N -2640 -1410 -2640 -1380 {
lab=VDD}
N -2650 -1410 -2640 -1410 {
lab=VDD}
N -2730 -1380 -2690 -1380 {
lab=#net2}
N -2770 -1410 -2650 -1410 {
lab=VDD}
N -2780 -1380 -2770 -1380 {
lab=VDD}
N -2780 -1410 -2780 -1380 {
lab=VDD}
N -2780 -1410 -2770 -1410 {
lab=VDD}
N -2770 -1350 -2770 -1330 {
lab=#net2}
N -2770 -1330 -2710 -1330 {
lab=#net2}
N -2710 -1380 -2710 -1330 {
lab=#net2}
N -2770 -1250 -2770 -1230 {
lab=#net3}
N -2770 -1330 -2770 -1310 {
lab=#net2}
N -2650 -1270 -2650 -1250 {
lab=Vin}
N -2350 -1190 -2340 -1190 {
lab=vb}
N -2870 -1500 -2870 -1480 {
lab=ctrl}
N -2870 -1420 -2870 -1400 {
lab=GND}
N -2650 -1250 -2440 -1250 {
lab=Vin}
N -2250 -1180 -2250 -1160 {
lab=GND}
N -2500 -1260 -2500 -1160 {
lab=GND}
N -2410 -1160 -2250 -1160 {
lab=GND}
N -2250 -1360 -2250 -1320 {
lab=VDD}
N -2410 -1360 -2250 -1360 {
lab=VDD}
N -2580 -1330 -2580 -1320 {
lab=GND}
N -2580 -1330 -2570 -1330 {
lab=GND}
N -2580 -1290 -2570 -1290 {
lab=inh}
N -2360 -1310 -2340 -1310 {
lab=#net4}
N -2440 -1310 -2420 -1310 {
lab=#net5}
N -2400 -1270 -2390 -1270 {
lab=ctrl}
N -2930 -1500 -2930 -1480 {
lab=inh}
N -2930 -1420 -2930 -1400 {
lab=GND}
N -2440 -1250 -2350 -1250 {
lab=Vin}
N -2500 -1160 -2410 -1160 {
lab=GND}
N -2500 -1360 -2410 -1360 {
lab=VDD}
N -2390 -1320 -2390 -1310 {
lab=GND}
N -2430 -1320 -2390 -1320 {
lab=GND}
N -2430 -1320 -2430 -1160 {
lab=GND}
C {devices/gnd.sym} -2250 -1160 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2250 -1360 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -3050 -1450 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2350 -1190 0 0 {name=p3 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} -2090 -1250 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -3050 -1400 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -2990 -1450 0 0 {name=V2 value=0.5 savecurrent=false}
C {devices/lab_pin.sym} -2990 -1500 0 0 {name=p6 sig_type=std_logic lab=vb}
C {devices/gnd.sym} -2990 -1400 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -3050 -1350 0 0 {name=SIMULATION
only_toplevel=true
value="
.param Lp_or=0.15
.param Wp_or=1
.param Ln_or=0.15
.param Wn_or=1
.control
	save all
	tran 1n 20u
	write Postsynaptic_LIF_neuron_tb.raw
.endc
" }
C {sky130_fd_pr/corner.sym} -3060 -1210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vdd.sym} -3050 -1500 0 0 {name=l7 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Postsynaptic_LIF_neuron.sym} -2000 -1150 0 0 {name=x1}
C {devices/launcher.sym} -2440 -1100 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Postsynaptic_LIF_neuron_tb.raw tran"
}
C {devices/vdd.sym} -2710 -1410 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -2770 -1200 0 1 {name=I1 value=3u}
C {devices/gnd.sym} -2770 -1150 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -2670 -1380 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -2750 -1380 0 1 {name=M3
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
C {devices/lab_pin.sym} -2650 -1250 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {devices/ammeter.sym} -2770 -1280 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} -2650 -1300 0 0 {name=Vmeas2 savecurrent=true}
C {devices/vsource.sym} -2870 -1450 0 0 {name=V4 savecurrent=false value="PWL(0 0 14.9u 0 15u 1.8)"}
C {devices/lab_pin.sym} -2870 -1500 0 0 {name=p1 sig_type=std_logic lab=ctrl}
C {devices/gnd.sym} -2870 -1400 0 0 {name=l6 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/inhibitory/or_2.sym} -2500 -1310 0 0 {name=x3}
C {devices/gnd.sym} -2580 -1320 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -2580 -1290 0 0 {name=p2 sig_type=std_logic lab=inh}
C {sky130_fd_pr/nfet_01v8.sym} -2390 -1290 3 0 {name=M1
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
C {devices/lab_pin.sym} -2400 -1270 0 0 {name=p4 sig_type=std_logic lab=ctrl}
C {devices/vsource.sym} -2930 -1450 0 0 {name=V3 savecurrent=false value=1.8}
C {devices/lab_pin.sym} -2930 -1500 0 0 {name=p7 sig_type=std_logic lab=inh}
C {devices/gnd.sym} -2930 -1400 0 0 {name=l5 lab=GND}
