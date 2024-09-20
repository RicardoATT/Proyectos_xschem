v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 160 -40 960 360 {flags=graph
y1=1.7
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdd}
B 2 -640 360 160 760 {flags=graph
y1=-5.55112e-17
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pre
pos"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 160 360 960 760 {flags=graph
y1=0.97
y2=0.98
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Thickness [nm];  n.x1.xr1.n1#ngap \\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -200 140 -200 160 {
lab=GND}
N -200 20 -200 40 {
lab=VDD}
N -640 140 -640 160 {
lab=GND}
N -640 60 -640 80 {
lab=VDD}
N -480 80 -260 80 {
lab=pre}
N -140 100 -120 100 {
lab=#net1}
N -200 160 -120 160 {
lab=GND}
N 0 140 0 160 {
lab=GND}
N -140 80 0 80 {
lab=pos}
N -580 140 -580 160 {
lab=GND}
N -580 80 -480 80 {
lab=pre}
C {devices/gnd.sym} -200 160 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -200 20 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -640 110 0 0 {name=V1 value="PWL(0 1.8 74.999u 1.8 75u 0)"}
C {devices/gnd.sym} -640 160 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -640 60 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/corner.sym} 440 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 320 -310 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
.inc $::SKYWATER_MODELS/rram_v2.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 330 -160 0 0 {name=NGSPICE
only_toplevel=true
value="
.param L_pre=0.15
.param W_pre=5
.param L_pos=0.15
.param W_pos=5
.control
  save all
  tran 1n 100u
  write 6T1R_tb2.raw
.endc
" }
C {devices/launcher.sym} -330 240 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/6T1R_tb2.raw tran"
}
C {devices/vsource.sym} 0 110 0 0 {name=V3 value=0
*"PWL(0 0 39.9u 0 40u 1.8 79.9u 1.8 80u 0)"}
C {devices/gnd.sym} 0 160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -410 80 1 0 {name=p1 sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} -80 80 1 0 {name=p2 sig_type=std_logic lab=pos}
C {devices/vsource.sym} -120 130 0 0 {name=vread1 value=1e-4}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -140 260 0 0 {name=x1}
C {devices/vsource.sym} -580 110 0 0 {name=V4 value=0
*"PWL(0 1.8 34.999u 1.8 35u 0)"}
C {devices/gnd.sym} -580 160 0 0 {name=l7 lab=GND
value="PWL(0 1.8 24.999u 1.8 25u 0)"}
