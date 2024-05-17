v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -640 -40 160 360 {flags=graph
y1=2.2e-06
y2=1.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=i(vread1)}
B 2 160 -40 960 360 {flags=graph
y1=-110
y2=270000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"x1.be x1.te - i(vread1) /\\""}
B 2 -640 360 160 760 {flags=graph
y1=-0.028282
y2=1.96238
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pulse
prepos"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N -280 -180 -280 -160 {
lab=GND}
N -280 -300 -280 -280 {
lab=VDD}
N -560 -180 -560 -160 {
lab=GND}
N -640 -180 -640 -160 {
lab=GND}
N -640 -260 -640 -240 {
lab=VDD}
N -560 -240 -340 -240 {
lab=pulse}
N -220 -220 -200 -220 {
lab=cap}
N -280 -160 -200 -160 {
lab=GND}
N -80 -180 -80 -160 {
lab=GND}
N -360 -220 -340 -220 {
lab=pulse}
N -360 -240 -360 -220 {
lab=pulse}
N -220 -240 -80 -240 {
lab=prepos}
C {devices/vsource.sym} -560 -210 0 0 {name=V2 value="PULSE(0 1.8 1n 1n 1n 50n 100n 50)"}
C {devices/gnd.sym} -280 -160 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -280 -300 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -560 -160 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -640 -210 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -640 -160 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -640 -260 0 0 {name=l5 lab=VDD}
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
.control
  save all
  tran 1n 5u
  write 6T1R_tb.raw
.endc
" }
C {devices/launcher.sym} -580 -60 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/6T1R_tb.raw tran"
}
C {devices/vsource.sym} -80 -210 0 0 {name=V3 value=0}
C {devices/gnd.sym} -80 -160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -490 -240 1 0 {name=p1 sig_type=std_logic lab=pulse}
C {devices/lab_pin.sym} -160 -240 1 0 {name=p2 sig_type=std_logic lab=prepos}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -220 -60 0 0 {name=x1}
C {devices/lab_pin.sym} -210 -220 1 0 {name=p3 sig_type=std_logic lab=cap}
C {devices/vsource.sym} -200 -190 0 1 {name=vread1 value=1e-4}
