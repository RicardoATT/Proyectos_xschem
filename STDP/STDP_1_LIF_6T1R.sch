v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -700 -80 100 320 {flags=graph
y1=-0.14
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
node="vin
vout"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -700 320 100 720 {flags=graph
y1=-2e-07
y2=6.4e-05
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
node="\\"im1 (A);i(vread1)\\"
\\"im1 (A);i(vread2)\\""
color="10 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 100 320 900 720 {flags=graph
y1=-67163.4
y2=378384
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
node="\\"M [ohms];vout 0 - i(vread1) /\\""
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -700 720 100 1120 {flags=graph
y1=2.8
y2=4
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


dataset=-1
unitx=1
logx=0
logy=0
color=7
node="\\"Thickness [nm]; 5 n.x2.xr1.n1#ngap -\\""}
N -580 -140 -580 -120 {
lab=GND}
N -580 -300 -580 -280 {
lab=VDD}
N 140 -130 140 -110 {
lab=GND}
N 140 -210 140 -190 {
lab=VDD}
N 200 -130 200 -110 {
lab=GND}
N 200 -210 200 -190 {
lab=vb1}
N -440 -210 -420 -210 {
lab=vout}
N -200 -210 -180 -210 {
lab=GND}
N -180 -230 -180 -210 {
lab=GND}
N -260 -270 -260 -250 {
lab=VDD}
N -200 -190 -180 -190 {
lab=#net1}
N -180 -130 -180 -110 {
lab=GND}
N -340 -210 -320 -210 {
lab=vout}
N -420 -210 -340 -210 {
lab=vout}
N -380 -150 -380 -130 {
lab=GND}
N -320 -150 -260 -150 {
lab=#net2}
N -680 -150 -670 -150 {
lab=vb1}
N -860 -130 -860 -110 {
lab=GND}
N -740 -230 -740 -210 {
lab=#net3}
N -740 -210 -680 -210 {
lab=#net3}
N -740 -260 -730 -260 {
lab=VDD}
N -730 -290 -730 -260 {
lab=VDD}
N -740 -290 -730 -290 {
lab=VDD}
N -820 -260 -780 -260 {
lab=#net4}
N -860 -290 -740 -290 {
lab=VDD}
N -870 -260 -860 -260 {
lab=VDD}
N -870 -290 -870 -260 {
lab=VDD}
N -870 -290 -860 -290 {
lab=VDD}
N -860 -230 -860 -210 {
lab=#net4}
N -860 -210 -800 -210 {
lab=#net4}
N -800 -260 -800 -210 {
lab=#net4}
N -860 -210 -860 -190 {
lab=#net4}
C {devices/gnd.sym} -580 -120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -580 -300 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} 140 -160 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 140 -110 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 140 -210 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 200 -160 0 0 {name=V2 value=0.5}
C {devices/gnd.sym} 200 -110 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 200 -210 2 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -680 -150 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {sky130_fd_pr/corner.sym} 230 -60 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 110 -60 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/launcher.sym} 180 90 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_1_LIF_6T1R.raw tran"
}
C {devices/code_shown.sym} 120 150 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 50u
  write STDP_1_LIF_6T1R.raw
.endc
" }
C {devices/lab_pin.sym} -420 -210 1 0 {name=p7 sig_type=std_logic lab=vout}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -200 -30 0 0 {name=x2}
C {devices/gnd.sym} -180 -230 2 0 {name=l1 lab=GND}
C {devices/vdd.sym} -260 -270 0 0 {name=l10 lab=VDD}
C {devices/vsource.sym} -180 -160 0 0 {name=vread1 value=1e-4}
C {devices/gnd.sym} -180 -110 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -350 -150 1 0 {name=vread2 value=1e-4}
C {devices/gnd.sym} -380 -130 0 0 {name=l9 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} -340 -130 0 0 {name=x1}
C {devices/vdd.sym} -800 -290 0 0 {name=l8 lab=VDD}
C {devices/isource.sym} -860 -160 0 1 {name=I0 value=3u}
C {devices/gnd.sym} -860 -110 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -760 -260 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -840 -260 0 1 {name=M2
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
