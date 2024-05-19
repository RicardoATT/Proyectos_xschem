v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -700 -80 100 320 {flags=graph
y1=0.44
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
node="vin
vout"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -700 320 100 720 {flags=graph
y1=-8.4e-07
y2=5.5e-05
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
node="\\"im1 (A);i(vread1)\\"
\\"im1 (A);i(vread2)\\""
color="10 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 100 320 900 720 {flags=graph
y1=20833.18
y2=101962.83
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
node="\\"M [ohms];vout 0 - i(vread1) /\\""
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -700 720 100 1120 {flags=graph
y1=2.7
y2=3.9
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
color=7
node="\\"Thickness [nm]; 5 n.x2.xr1.n1#ngap -\\""}
N -580 -140 -580 -120 {
lab=GND}
N -580 -300 -580 -280 {
lab=VDD}
N 280 -140 280 -120 {
lab=GND}
N 280 -220 280 -200 {
lab=VDD}
N 460 -140 460 -120 {
lab=GND}
N 460 -220 460 -200 {
lab=vin}
N 340 -140 340 -120 {
lab=GND}
N 340 -220 340 -200 {
lab=vb1}
N 400 -140 400 -120 {
lab=GND}
N 400 -220 400 -200 {
lab=vb2}
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
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -350 -70 0 0 {name=x1}
C {devices/gnd.sym} -580 -120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -580 -300 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} 280 -170 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 280 -120 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 280 -220 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 460 -170 0 0 {name=V4 value=1.5}
C {devices/gnd.sym} 460 -120 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 460 -220 2 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -680 -210 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 340 -170 0 0 {name=V2 value=0.5}
C {devices/gnd.sym} 340 -120 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 340 -220 2 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/vsource.sym} 400 -170 0 0 {name=V3 value=0.4}
C {devices/gnd.sym} 400 -120 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 400 -220 2 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -670 -140 0 0 {name=p5 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -670 -160 0 0 {name=p6 sig_type=std_logic lab=vb1}
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
tclcommand="xschem raw_read $netlist_dir/STDP_1_LIF_v2.raw tran"
}
C {devices/code_shown.sym} 120 150 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  write STDP_1_LIF_v2.raw
.endc
" }
C {devices/lab_pin.sym} -420 -210 1 0 {name=p7 sig_type=std_logic lab=vout}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -200 -30 0 0 {name=x2}
C {devices/gnd.sym} -180 -230 2 0 {name=l1 lab=GND}
C {devices/vdd.sym} -260 -270 0 0 {name=l10 lab=VDD}
C {devices/vsource.sym} -180 -160 0 0 {name=vread1 value=1e-4}
C {devices/gnd.sym} -180 -110 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -350 -150 1 0 {name=vread2 value=1e-4}
C {devices/gnd.sym} -380 -130 0 0 {name=l9 lab=GND}
