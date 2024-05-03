v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 200 -600 1000 -200 {flags=graph
y1=-4
y2=4
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
node="\\"Voltage [V];vin\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -600 -200 200 200 {flags=graph
y1=8881.52
y2=11341.5
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
node="\\"Memristance [ohms]; n.xr1.n1#ngap -1 * i(v1) /\\""
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 200 -200 1000 200 {flags=graph
y1=-0.000602826
y2=0.000443436
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
node="\\"Current [A];i(v1)\\""}
N -380 -520 -380 -500 {
lab=vin}
N -380 -440 -380 -420 {
lab=GND}
N -560 -400 -460 -400 {
lab=be}
N -460 -400 -460 -380 {
lab=be}
N -460 -320 -460 -300 {
lab=GND}
N -560 -300 -460 -300 {
lab=GND}
N -560 -320 -560 -300 {
lab=GND}
N -470 -350 -460 -350 {
lab=GND}
N -470 -350 -470 -300 {
lab=GND}
N -420 -350 -400 -350 {
lab=GND}
N -400 -350 -400 -300 {
lab=GND}
N -460 -300 -400 -300 {
lab=GND}
N -560 -300 -560 -280 {
lab=GND}
N -560 -520 -560 -500 {
lab=vin}
N -560 -440 -560 -400 {
lab=be}
N -560 -400 -560 -380 {
lab=be}
C {devices/vsource.sym} -380 -470 0 0 {name=V1 value="PULSE(-3.92 3.92 5ms 1us 1us 5ms 10ms 1)"}
C {devices/lab_pin.sym} -380 -520 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -380 -420 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -440 -350 0 1 {name=M1
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
C {sky130_fd_pr/rram_v0.sym} -560 -470 0 0 {name=R1
model=rram_v0
spiceprefix=X
}
C {devices/res.sym} -560 -350 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -560 -280 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -560 -520 0 0 {name=p2 sig_type=std_logic lab=vin}
C {sky130_fd_pr/corner.sym} -390 -340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -270 -340 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -140 -330 0 0 {name=comandos
only_toplevel=true
value="
.control
	save all
	run
	tran 100ns 10ms
	write 1_rram_prog.raw
.endc

"}
C {devices/launcher.sym} -540 -230 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/1_rram_prog.raw tran"
}
C {devices/lab_pin.sym} -560 -420 0 0 {name=p3 sig_type=std_logic lab=be}
