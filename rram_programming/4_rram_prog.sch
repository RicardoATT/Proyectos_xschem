v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 440 40 1240 440 {flags=graph
y1=-4
y2=4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0005
x2=0.0095
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
B 2 -360 40 440 440 {flags=graph
y1=2880.73
y2=4096.71
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0005
x2=0.0095
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
B 2 440 -360 1240 40 {flags=graph
y1=-0.000602826
y2=0.000443436
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0005
x2=0.0095
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
N -320 -100 -320 -80 {
lab=vin}
N -320 -20 -320 0 {
lab=GND}
N -60 -280 40 -280 {
lab=#net1}
N 40 -280 40 -260 {
lab=#net1}
N 40 -200 40 -180 {
lab=GND}
N -60 -180 40 -180 {
lab=GND}
N -60 -200 -60 -180 {
lab=GND}
N 30 -230 40 -230 {
lab=GND}
N 30 -230 30 -180 {
lab=GND}
N 80 -230 100 -230 {
lab=GND}
N 100 -230 100 -180 {
lab=GND}
N 40 -180 100 -180 {
lab=GND}
N -60 -700 -60 -680 {
lab=vin}
N -60 -280 -60 -260 {
lab=#net1}
N -60 -380 40 -380 {
lab=#net2}
N 40 -380 40 -360 {
lab=#net2}
N 30 -330 40 -330 {
lab=GND}
N 80 -330 100 -330 {
lab=b1}
N -60 -380 -60 -360 {
lab=#net2}
N -60 -300 -60 -280 {
lab=#net1}
N 40 -300 40 -280 {
lab=#net1}
N 30 -330 30 -300 {
lab=GND}
N -60 -480 40 -480 {
lab=#net3}
N 40 -480 40 -460 {
lab=#net3}
N 30 -430 40 -430 {
lab=GND}
N 80 -430 100 -430 {
lab=b2}
N -60 -480 -60 -460 {
lab=#net3}
N -60 -400 -60 -380 {
lab=#net2}
N 40 -400 40 -380 {
lab=#net2}
N 30 -430 30 -400 {
lab=GND}
N 40 -580 40 -560 {
lab=#net4}
N 30 -530 40 -530 {
lab=GND}
N 80 -530 100 -530 {
lab=b3}
N -60 -580 -60 -560 {
lab=#net4}
N -60 -500 -60 -480 {
lab=#net3}
N 40 -500 40 -480 {
lab=#net3}
N 30 -530 30 -500 {
lab=GND}
N -60 -620 -60 -580 {
lab=#net4}
N -60 -180 -60 -160 {
lab=GND}
N 200 -260 200 -240 {
lab=b1}
N 200 -180 200 -160 {
lab=GND}
N 280 -260 280 -240 {
lab=b2}
N 280 -180 280 -160 {
lab=GND}
N 360 -260 360 -240 {
lab=b3}
N 360 -180 360 -160 {
lab=GND}
N -60 -580 40 -580 {
lab=#net4}
N 30 -500 30 -430 {
lab=GND}
N 30 -400 30 -330 {
lab=GND}
N 30 -300 30 -230 {
lab=GND}
C {devices/vsource.sym} -320 -50 0 0 {name=V1 value="PULSE(-3.92 3.92 5ms 1us 1us 5ms 10ms 1)"}
C {devices/lab_pin.sym} -320 -100 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -320 0 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/rram_v0.sym} -60 -650 0 0 {name=R1
model=rram_v0
spiceprefix=X
}
C {devices/res.sym} -60 -230 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -60 -700 0 0 {name=p2 sig_type=std_logic lab=vin}
C {sky130_fd_pr/corner.sym} -80 -100 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 40 -100 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 170 -90 0 0 {name=comandos
only_toplevel=true
value="
.control
	save all
	run
	tran 100ns 10ms
	write 8_rram_prog.raw
.endc

"}
C {devices/launcher.sym} -260 -140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/8_rram_prog.raw tran"
}
C {devices/res.sym} -60 -330 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 100 -330 2 0 {name=p4 sig_type=std_logic lab=b1}
C {devices/res.sym} -60 -430 0 0 {name=R4
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 100 -430 2 0 {name=p5 sig_type=std_logic lab=b2}
C {sky130_fd_pr/nfet_01v8.sym} 60 -530 2 0 {name=M4
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
C {devices/res.sym} -60 -530 0 0 {name=R5
value=4k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 100 -530 2 0 {name=p6 sig_type=std_logic lab=b3}
C {devices/gnd.sym} -60 -160 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 200 -210 0 0 {name=V2 value=3.92}
C {devices/lab_pin.sym} 200 -260 0 0 {name=p3 sig_type=std_logic lab=b1}
C {devices/gnd.sym} 200 -160 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 280 -210 0 0 {name=V3 value=3.92}
C {devices/lab_pin.sym} 280 -260 0 0 {name=p11 sig_type=std_logic lab=b2}
C {devices/gnd.sym} 280 -160 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 360 -210 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} 360 -260 0 0 {name=p12 sig_type=std_logic lab=b3}
C {devices/gnd.sym} 360 -160 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 60 -230 2 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 60 -330 2 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 60 -430 2 0 {name=M3
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
