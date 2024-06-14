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
x2=2e-05
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
x2=2e-05
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
B 2 -2740 -570 -1940 -170 {flags=graph
y1=4.1e-09
y2=6.3e-06
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



color="4 7 6"
node="\\"Iin [A]; i(Vmeas1)\\"
\\"Ic [A]; i(Vmeas2)\\"
\\"Iout [A]; i(Vmeas3)\\""}
N -2390 -1190 -2390 -1170 {
lab=GND}
N -2390 -1350 -2390 -1330 {
lab=VDD}
N -2510 -1200 -2480 -1200 {
lab=Vb1}
N -2250 -1260 -2230 -1260 {
lab=vout}
N -1980 -1270 -1980 -1250 {
lab=#net1}
N -1980 -1190 -1980 -1170 {
lab=GND}
N -1910 -1270 -1910 -1250 {
lab=Vb1}
N -1910 -1190 -1910 -1170 {
lab=GND}
N -2670 -1180 -2670 -1160 {
lab=GND}
N -2550 -1360 -2550 -1340 {
lab=#net2}
N -2550 -1260 -2490 -1260 {
lab=Vin}
N -2550 -1390 -2540 -1390 {
lab=VDD}
N -2540 -1420 -2540 -1390 {
lab=VDD}
N -2550 -1420 -2540 -1420 {
lab=VDD}
N -2630 -1390 -2590 -1390 {
lab=#net3}
N -2670 -1420 -2550 -1420 {
lab=VDD}
N -2680 -1390 -2670 -1390 {
lab=VDD}
N -2680 -1420 -2680 -1390 {
lab=VDD}
N -2680 -1420 -2670 -1420 {
lab=VDD}
N -2670 -1360 -2670 -1340 {
lab=#net3}
N -2670 -1340 -2610 -1340 {
lab=#net3}
N -2610 -1390 -2610 -1340 {
lab=#net3}
N -2670 -1260 -2670 -1240 {
lab=#net4}
N -1980 -1350 -1980 -1330 {
lab=VDD}
N -2670 -1340 -2670 -1320 {
lab=#net3}
N -2550 -1280 -2550 -1260 {
lab=Vin}
N -2170 -1260 -2150 -1260 {
lab=#net5}
N -2240 -1260 -2240 -1240 {
lab=vout}
N -2070 -1260 -2070 -1240 {
lab=GND}
N -2090 -1260 -2070 -1260 {
lab=GND}
C {devices/gnd.sym} -2390 -1170 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -2390 -1350 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -1980 -1220 0 0 {name=V1 
value=1.8}
C {devices/lab_pin.sym} -2510 -1200 0 0 {name=p3 sig_type=std_logic lab=Vb1}
C {devices/lab_pin.sym} -2240 -1240 2 0 {name=p5 sig_type=std_logic lab=vout}
C {devices/gnd.sym} -1980 -1170 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1910 -1220 0 0 {name=V2 value=0.7 savecurrent=false}
C {devices/lab_pin.sym} -1910 -1270 0 0 {name=p6 sig_type=std_logic lab=Vb1}
C {devices/gnd.sym} -1910 -1170 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -3110 -1350 0 0 {name=SIMULATION
only_toplevel=true
value="
.control
	save all
	tran 1n 20u
	write LIF_neuron_Vohra_tb.raw
.endc
" }
C {sky130_fd_pr/corner.sym} -3120 -1210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -2670 -1110 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LIF_neuron_Vohra_tb.raw tran"
}
C {devices/vdd.sym} -1980 -1350 0 0 {name=l7 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} -2150 -1180 0 0 {name=x1}
C {devices/vdd.sym} -2610 -1420 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -2670 -1210 0 1 {name=I1 value=3u}
C {devices/gnd.sym} -2670 -1160 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -2570 -1390 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -2650 -1390 0 1 {name=M3
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
C {devices/lab_pin.sym} -2550 -1260 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {devices/ammeter.sym} -1980 -1300 2 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} -2670 -1290 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} -2550 -1310 0 0 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} -2200 -1260 3 0 {name=Vmeas3 savecurrent=true}
C {devices/res.sym} -2120 -1260 1 0 {name=R1
value=3300k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -2070 -1240 0 0 {name=l5 lab=GND}
