v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -3050 -1080 -2250 -680 {flags=graph
y1=0.0063
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
node="\\"Vin [V]; Vin\\"
\\"Vout [V]; Vout\\""
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -2250 -1080 -1450 -680 {flags=graph
y1=8e-06
y2=5.8e-05
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
node="\\"Potencia [W]; i(vmeas) vdd *\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -2260 -1140 -2260 -1120 {
lab=GND}
N -2260 -1300 -2260 -1280 {
lab=VDD}
N -2380 -1150 -2350 -1150 {
lab=Vb1}
N -2010 -1210 -2010 -1190 {
lab=#net1}
N -2010 -1130 -2010 -1110 {
lab=GND}
N -1940 -1210 -1940 -1190 {
lab=Vb1}
N -1940 -1130 -1940 -1110 {
lab=GND}
N -2540 -1130 -2540 -1110 {
lab=GND}
N -2420 -1310 -2420 -1290 {
lab=#net2}
N -2420 -1210 -2360 -1210 {
lab=Vin}
N -2420 -1340 -2410 -1340 {
lab=VDD}
N -2410 -1370 -2410 -1340 {
lab=VDD}
N -2420 -1370 -2410 -1370 {
lab=VDD}
N -2500 -1340 -2460 -1340 {
lab=#net3}
N -2540 -1370 -2420 -1370 {
lab=VDD}
N -2550 -1340 -2540 -1340 {
lab=VDD}
N -2550 -1370 -2550 -1340 {
lab=VDD}
N -2550 -1370 -2540 -1370 {
lab=VDD}
N -2540 -1310 -2540 -1290 {
lab=#net3}
N -2540 -1290 -2480 -1290 {
lab=#net3}
N -2480 -1340 -2480 -1290 {
lab=#net3}
N -2540 -1210 -2540 -1190 {
lab=#net4}
N -2010 -1290 -2010 -1270 {
lab=VDD}
N -2540 -1290 -2540 -1270 {
lab=#net3}
N -2420 -1230 -2420 -1210 {
lab=Vin}
N -2110 -1210 -2110 -1190 {
lab=vout}
N -2120 -1210 -2110 -1210 {
lab=vout}
C {devices/gnd.sym} -2260 -1120 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2260 -1300 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -2010 -1160 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2380 -1150 0 0 {name=p3 sig_type=std_logic lab=Vb1}
C {devices/lab_pin.sym} -2110 -1190 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -2010 -1110 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1940 -1160 0 0 {name=V2 value=0.7 savecurrent=false}
C {devices/lab_pin.sym} -1940 -1210 0 0 {name=p6 sig_type=std_logic lab=Vb1}
C {devices/gnd.sym} -1940 -1110 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -3040 -1350 0 0 {name=SIMULATION
only_toplevel=true
value="
.control
	set wr_vecnames
	set wr_singlescale

	let mc_runs = 10
	let run = 1
	dowhile run <= mc_runs
		tran 1n 5u
		wrdata LIF_neuron_cc_mc\{$&run\}.txt v(vout)
		reset
		let run = run + 1
	end
.endc
.save all
" }
C {sky130_fd_pr/corner.sym} -1880 -1350 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/launcher.sym} -1810 -1210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LIF_neuron_cc_mc.raw tran"
}
C {devices/vdd.sym} -2010 -1290 0 0 {name=l7 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} -2020 -1130 0 0 {name=x1}
C {devices/vdd.sym} -2480 -1370 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -2540 -1160 0 1 {name=I1 value=3u}
C {devices/gnd.sym} -2540 -1110 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -2440 -1340 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -2520 -1340 0 1 {name=M3
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
C {devices/lab_pin.sym} -2420 -1210 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {devices/ammeter.sym} -2010 -1240 2 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} -2540 -1240 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} -2420 -1260 0 0 {name=Vmeas2 savecurrent=true}
