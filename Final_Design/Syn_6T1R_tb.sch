v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 160 -40 960 360 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.42134e-05
x2=0.000101445
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
x1=7.42134e-05
x2=0.000101445
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
y1=2.2
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.42134e-05
x2=0.000101445
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Thickness [nm]; 5 n.x1.xr1.n1#ngap -\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -280 -180 -280 -160 {
lab=GND}
N -280 -300 -280 -280 {
lab=VDD}
N -720 -180 -720 -160 {
lab=GND}
N -720 -260 -720 -240 {
lab=VDD}
N -560 -240 -340 -240 {
lab=pre}
N -220 -220 -200 -220 {
lab=#net1}
N -280 -160 -200 -160 {
lab=GND}
N -80 -180 -80 -160 {
lab=GND}
N -220 -240 -80 -240 {
lab=pos}
N -660 -180 -660 -160 {
lab=GND}
N -660 -240 -560 -240 {
lab=pre}
C {devices/gnd.sym} -280 -160 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -280 -300 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -720 -210 0 0 {name=V1 value="PWL(0 1.8 74.999u 1.8 75u 0)"}
C {devices/gnd.sym} -720 -160 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -720 -260 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/corner.sym} 440 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 320 -310 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
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
  tran 10n 100u
  write Syn_6T1R_tb.raw
.endc
" }
C {devices/launcher.sym} -580 -60 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/6T1R_tb.raw tran"
}
C {devices/vsource.sym} -80 -210 0 0 {name=V3 value="PULSE(0 1.8 15.001u 1n 1n 100n 200n 300)"}
C {devices/gnd.sym} -80 -160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -490 -240 1 0 {name=p1 sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} -160 -240 1 0 {name=p2 sig_type=std_logic lab=pos}
C {devices/vsource.sym} -200 -190 0 0 {name=vread1 value=1e-4}
C {devices/vsource.sym} -660 -210 0 0 {name=V4 value="PWL(0 1.8 14.999u 1.8 15u 0)"}
C {devices/gnd.sym} -660 -160 0 0 {name=l7 lab=GND
value="PWL(0 1.8 24.999u 1.8 25u 0)"}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/Syn_6T1R.sym} -220 -60 0 0 {name=x1}
