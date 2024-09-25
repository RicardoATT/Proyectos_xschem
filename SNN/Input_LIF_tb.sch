v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1590 -1520 -790 -1120 {flags=graph
y1=0
y2=5e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.84949e-05
x2=5.5272e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=i(vmeas1)}
B 2 -1590 -1120 -790 -720 {flags=graph
y1=0.252
y2=2.312
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.84949e-05
x2=5.5272e-05
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
B 2 -1590 -1920 -790 -1520 {flags=graph
y1=-0.013
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.84949e-05
x2=5.5272e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color=7
node=Vin}
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
N -2420 -1430 -2410 -1430 {
lab=Vlky}
N -2480 -1040 -2480 -1020 {
lab=Vlky}
N -2480 -960 -2480 -940 {
lab=GND}
N -1970 -1350 -1970 -1340 {
lab=GND}
N -2030 -1390 -2020 -1390 {
lab=vout}
N -1970 -1450 -1970 -1430 {
lab=VDD}
N -1920 -1390 -1910 -1390 {
lab=vdelay}
N -2030 -1360 -2030 -1350 {
lab=GND}
N -2030 -1360 -2020 -1360 {
lab=GND}
N -2030 -1420 -2020 -1420 {
lab=ctrl}
C {devices/gnd.sym} -2320 -1300 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2320 -1500 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -2660 -990 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2420 -1350 0 0 {name=p3 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -2160 -1390 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -2660 -940 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -2600 -990 0 0 {name=V2 value=0.5 savecurrent=false}
C {devices/lab_pin.sym} -2600 -1040 0 0 {name=p6 sig_type=std_logic lab=Vb}
C {devices/gnd.sym} -2600 -940 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -2660 -880 0 0 {name=SIMULATION
only_toplevel=true
value="
.param Lp_delay=3
.param Wp_delay=0.45
.param Ln_delay=3
.param Wn_delay=0.45
.control
	save all
	tran 100n 100u 0 1n
	write Input_LIF_tb.raw
.endc
" }
C {sky130_fd_pr/corner.sym} -2240 -1230 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vdd.sym} -2660 -1040 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -2600 -1500 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -2660 -1290 0 1 {name=I1 value=5u
*"PULSE(0 1u 1n 1n 1n 10n 30n 8000)"}
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
C {devices/vsource.sym} -2420 -990 0 0 {name=V4 savecurrent=false value=1.8
*"PWL(0 0 39.9u 0 40u 1.8)"}
C {devices/lab_pin.sym} -2420 -1040 0 0 {name=p1 sig_type=std_logic lab=ctrl}
C {devices/gnd.sym} -2420 -940 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -2540 -990 0 0 {name=V3 savecurrent=false value=1.8}
C {devices/lab_pin.sym} -2540 -1040 0 0 {name=p7 sig_type=std_logic lab=inh}
C {devices/gnd.sym} -2540 -940 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -2430 -1390 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -2420 -1430 0 0 {name=p11 sig_type=std_logic lab=Vlky}
C {devices/vsource.sym} -2480 -990 0 0 {name=V5 savecurrent=false value=0.55}
C {devices/lab_pin.sym} -2480 -1040 0 0 {name=p13 sig_type=std_logic lab=Vlky}
C {devices/gnd.sym} -2480 -940 0 0 {name=l9 lab=GND}
C {devices/launcher.sym} -2230 -1080 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Input_LIF_tb.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/Input_LIF.sym} -2320 -1390 0 0 {name=x1}
C {devices/gnd.sym} -1970 -1340 0 0 {name=l50 lab=GND}
C {devices/lab_pin.sym} -2030 -1390 0 0 {name=p158 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -1910 -1390 2 0 {name=p162 sig_type=std_logic lab=vdelay}
C {devices/vdd.sym} -1970 -1450 0 0 {name=l13 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/Tr_Circuit.sym} -1970 -1390 0 0 {name=x2}
C {devices/lab_pin.sym} -2030 -1420 0 0 {name=p2 sig_type=std_logic lab=ctrl}
C {devices/gnd.sym} -2030 -1350 0 0 {name=l8 lab=GND}
