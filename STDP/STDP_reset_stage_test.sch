v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -880 -1080 -80 -680 {flags=graph
y1=2.2
y2=4.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color=10
node="\\"Thickness1 [nm]; 5 n.x1.xr1.n1#ngap -\\""}
B 2 -880 -1480 -80 -1080 {flags=graph
y1=-0.049
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0





color="6 4 10"
node="vctrl1
vctrl2
vctrl"}
N -870 -210 -870 -190 {
lab=GND}
N -870 -290 -870 -270 {
lab=VDD}
N -340 -290 -320 -290 {
lab=vsyn1}
N -400 -250 -400 -230 {
lab=GND}
N -820 -250 -820 -230 {
lab=GND}
N -530 -370 -530 -350 {
lab=VDD}
N -530 -270 -530 -250 {
lab=GND}
N -590 -200 -590 -180 {
lab=GND}
N -480 -310 -470 -310 {
lab=vctrl1}
N -470 -310 -460 -310 {
lab=vctrl1}
N -330 -310 -320 -310 {
lab=vctrl2}
N -340 -310 -330 -310 {
lab=vctrl2}
N -650 -200 -650 -180 {
lab=GND}
N -590 -340 -590 -260 {
lab=#net1}
N -590 -340 -580 -340 {
lab=#net1}
N -650 -280 -580 -280 {
lab=#net2}
N -650 -280 -650 -260 {
lab=#net2}
N -820 -310 -580 -310 {
lab=#net3}
N 20 -250 20 -230 {
lab=GND}
N -270 -370 -270 -350 {
lab=VDD}
N -270 -270 -270 -250 {
lab=GND}
N -210 -200 -210 -180 {
lab=GND}
N -150 -200 -150 -180 {
lab=GND}
N -210 -340 -210 -260 {
lab=#net4}
N -220 -340 -210 -340 {
lab=#net4}
N -220 -280 -150 -280 {
lab=#net5}
N -150 -280 -150 -260 {
lab=#net5}
N -220 -310 20 -310 {
lab=#net6}
C {devices/vsource.sym} -870 -240 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -870 -190 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -870 -290 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/corner.sym} -1370 -1120 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code.sym} -1490 -1120 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -1240 -1120 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
  save all
  tran 1n 150u
  write STDP_reset_stage_test.raw
.endc
" }
C {devices/launcher.sym} -1180 -990 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_reset_stage_test.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -340 -130 0 0 {name=x1}
C {devices/gnd.sym} -400 -230 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -320 -290 3 0 {name=p8 sig_type=std_logic lab=vsyn1}
C {devices/vdd.sym} -530 -370 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -820 -280 0 0 {name=V2 value="PWL(0 1.8 29.9u 1.8 30u 0)"}
C {devices/gnd.sym} -820 -230 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -470 -310 1 0 {name=p2 sig_type=std_logic lab=vctrl1}
C {devices/gnd.sym} -530 -250 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -590 -230 0 0 {name=V3 value="PWL(0 1.8 29.9u 1.8 30u 0)"}
C {devices/gnd.sym} -590 -180 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -330 -310 1 0 {name=p1 sig_type=std_logic lab=vctrl2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -530 -310 0 0 {name=x2}
C {devices/vsource.sym} -650 -230 0 0 {name=V6 value=0.5}
C {devices/gnd.sym} -650 -180 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} -270 -370 0 1 {name=l4 lab=VDD}
C {devices/vsource.sym} 20 -280 0 1 {name=V4 value="PULSE(0 1.8 50.001u 1n 1n 5u 10u 10)"}
C {devices/gnd.sym} 20 -230 0 1 {name=l8 lab=GND}
C {devices/gnd.sym} -270 -250 0 1 {name=l9 lab=GND}
C {devices/vsource.sym} -210 -230 0 1 {name=V5 value="PULSE(0 1.8 50.001u 1n 1n 5u 10u 7)"}
C {devices/gnd.sym} -210 -180 0 1 {name=l10 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -270 -310 0 1 {name=x3}
C {devices/vsource.sym} -150 -230 0 1 {name=V7 value=0.5}
C {devices/gnd.sym} -150 -180 0 1 {name=l13 lab=GND}
