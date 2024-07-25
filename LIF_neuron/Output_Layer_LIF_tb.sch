v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2100 -1520 -1300 -1120 {flags=graph
y1=-0.015
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.19103e-06
x2=4.39005e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=vin}
B 2 -2100 -1120 -1300 -720 {flags=graph
y1=0.1
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.19103e-06
x2=4.39005e-06
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
B 2 -2100 -1920 -1300 -1520 {flags=graph
y1=0
y2=3.1e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.19103e-06
x2=4.39005e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color=7
node=i(vmeas1)}
N -2180 -1390 -2160 -1390 {
lab=vout}
N -2660 -1040 -2660 -1020 {
lab=VDD}
N -2660 -960 -2660 -940 {
lab=GND}
N -2600 -1040 -2600 -1020 {
lab=Vb}
N -2600 -960 -2600 -940 {
lab=GND}
N -2660 -1260 -2660 -1240 {
lab=GND}
N -2540 -1440 -2540 -1420 {
lab=#net1}
N -2540 -1470 -2530 -1470 {
lab=VDD}
N -2530 -1500 -2530 -1470 {
lab=VDD}
N -2540 -1500 -2530 -1500 {
lab=VDD}
N -2620 -1470 -2580 -1470 {
lab=#net2}
N -2660 -1500 -2540 -1500 {
lab=VDD}
N -2670 -1470 -2660 -1470 {
lab=VDD}
N -2670 -1500 -2670 -1470 {
lab=VDD}
N -2670 -1500 -2660 -1500 {
lab=VDD}
N -2660 -1440 -2660 -1420 {
lab=#net2}
N -2660 -1420 -2600 -1420 {
lab=#net2}
N -2600 -1470 -2600 -1420 {
lab=#net2}
N -2660 -1340 -2660 -1320 {
lab=#net3}
N -2660 -1420 -2660 -1400 {
lab=#net2}
N -2420 -1040 -2420 -1020 {
lab=ctrl}
N -2420 -960 -2420 -940 {
lab=GND}
N -2320 -1320 -2320 -1300 {
lab=GND}
N -2320 -1500 -2320 -1460 {
lab=VDD}
N -2620 -1190 -2620 -1180 {
lab=GND}
N -2620 -1190 -2610 -1190 {
lab=GND}
N -2620 -1150 -2610 -1150 {
lab=inh}
N -2400 -1170 -2380 -1170 {
lab=Vinh}
N -2480 -1170 -2460 -1170 {
lab=#net4}
N -2440 -1130 -2430 -1130 {
lab=ctrl}
N -2540 -1040 -2540 -1020 {
lab=inh}
N -2540 -960 -2540 -940 {
lab=GND}
N -2420 -1350 -2410 -1350 {
lab=Vb}
N -2540 -1360 -2540 -1350 {
lab=Vin}
N -2430 -1390 -2420 -1390 {
lab=Vin}
N -2420 -1320 -2410 -1320 {
lab=Vinh}
N -2420 -1430 -2410 -1430 {
lab=Vlky}
N -2480 -1040 -2480 -1020 {
lab=Vlky}
N -2480 -960 -2480 -940 {
lab=GND}
N -2540 -1120 -2540 -1110 {
lab=GND}
N -2540 -1230 -2540 -1220 {
lab=VDD}
N -2430 -1180 -2430 -1170 {
lab=GND}
C {devices/gnd.sym} -2320 -1300 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2320 -1500 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -2660 -990 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2420 -1350 0 0 {name=p3 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -2160 -1390 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -2660 -940 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -2600 -990 0 0 {name=V2 value=0.6 savecurrent=false}
C {devices/lab_pin.sym} -2600 -1040 0 0 {name=p6 sig_type=std_logic lab=Vb}
C {devices/gnd.sym} -2600 -940 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -2660 -880 0 0 {name=SIMULATION
only_toplevel=true
value="
.param Lp_or=0.15
.param Wp_or=1
.param Ln_or=0.15
.param Wn_or=1
.control
	save all
	tran 1n 40u
	write Input_Layer_LIF_tb.raw
.endc
" }
C {sky130_fd_pr/corner.sym} -2240 -1230 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vdd.sym} -2660 -1040 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -2600 -1500 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -2660 -1290 0 1 {name=I1 value="PULSE(0 2u 1n 1n 1n 50n 100n 800)"}
C {devices/gnd.sym} -2660 -1240 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -2560 -1470 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -2640 -1470 0 1 {name=M3
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
C {devices/lab_pin.sym} -2540 -1350 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {devices/ammeter.sym} -2660 -1370 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} -2540 -1390 0 0 {name=Vmeas2 savecurrent=true}
C {devices/vsource.sym} -2420 -990 0 0 {name=V4 savecurrent=false value="PWL(0 0 39.9u 0 40u 1.8)"}
C {devices/lab_pin.sym} -2420 -1040 0 0 {name=p1 sig_type=std_logic lab=ctrl}
C {devices/gnd.sym} -2420 -940 0 0 {name=l6 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/inhibitory/or_2.sym} -2540 -1170 0 0 {name=x3}
C {devices/gnd.sym} -2620 -1180 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -2620 -1150 0 0 {name=p2 sig_type=std_logic lab=inh}
C {sky130_fd_pr/nfet_01v8.sym} -2430 -1150 3 0 {name=M1
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
C {devices/lab_pin.sym} -2440 -1130 0 0 {name=p4 sig_type=std_logic lab=ctrl}
C {devices/vsource.sym} -2540 -990 0 0 {name=V3 savecurrent=false value=1.8}
C {devices/lab_pin.sym} -2540 -1040 0 0 {name=p7 sig_type=std_logic lab=inh}
C {devices/gnd.sym} -2540 -940 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -2430 -1390 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -2420 -1320 0 0 {name=p9 sig_type=std_logic lab=Vinh}
C {devices/lab_pin.sym} -2420 -1430 0 0 {name=p11 sig_type=std_logic lab=Vlky}
C {devices/lab_pin.sym} -2380 -1170 2 0 {name=p12 sig_type=std_logic lab=Vinh}
C {devices/vsource.sym} -2480 -990 0 0 {name=V5 savecurrent=false value=0.4}
C {devices/lab_pin.sym} -2480 -1040 0 0 {name=p13 sig_type=std_logic lab=Vlky}
C {devices/gnd.sym} -2480 -940 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -2540 -1110 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} -2540 -1230 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} -2430 -1180 2 0 {name=l12 lab=GND}
C {devices/launcher.sym} -2230 -1080 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_Layer_LIF_tb.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Output_Layer_LIF.sym} -2320 -1390 0 0 {name=x1}
