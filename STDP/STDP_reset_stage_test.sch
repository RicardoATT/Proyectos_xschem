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
B 2 -80 -1080 720 -680 {flags=graph
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
N -910 -470 -910 -450 {
lab=GND}
N -910 -550 -910 -530 {
lab=VDD}
N -380 -550 -360 -550 {
lab=vsyn1}
N -440 -510 -440 -490 {
lab=GND}
N -860 -510 -860 -490 {
lab=GND}
N -570 -630 -570 -610 {
lab=VDD}
N -570 -530 -570 -510 {
lab=GND}
N -630 -460 -630 -440 {
lab=GND}
N -520 -570 -510 -570 {
lab=vctrl1}
N -510 -570 -500 -570 {
lab=vctrl1}
N -370 -570 -360 -570 {
lab=vctrl2}
N -380 -570 -370 -570 {
lab=vctrl2}
N -690 -460 -690 -440 {
lab=GND}
N -630 -600 -630 -520 {
lab=#net1}
N -630 -600 -620 -600 {
lab=#net1}
N -690 -540 -620 -540 {
lab=#net2}
N -690 -540 -690 -520 {
lab=#net2}
N -860 -570 -620 -570 {
lab=#net3}
N -20 -510 -20 -490 {
lab=GND}
N -310 -630 -310 -610 {
lab=VDD}
N -310 -530 -310 -510 {
lab=GND}
N -250 -460 -250 -440 {
lab=GND}
N -190 -460 -190 -440 {
lab=GND}
N -250 -600 -250 -520 {
lab=#net4}
N -260 -600 -250 -600 {
lab=#net4}
N -260 -540 -190 -540 {
lab=#net5}
N -190 -540 -190 -520 {
lab=#net5}
N -260 -570 -20 -570 {
lab=#net6}
N -440 -630 -440 -610 {
lab=GND}
C {devices/vsource.sym} -910 -500 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -910 -450 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -910 -550 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/corner.sym} 130 -640 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code.sym} 10 -640 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 260 -640 0 0 {name=NGSPICE1
only_toplevel=true
value="
.param L_pre=0.15
.param W_pre=5
.param L_pos=0.15
.param W_pos=5
.control
  save all
  tran 1n 150u
  write STDP_reset_stage_test.raw
.endc
" }
C {devices/launcher.sym} 330 -440 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_reset_stage_test.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -380 -390 0 0 {name=x1}
C {devices/gnd.sym} -440 -490 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -360 -550 3 0 {name=p8 sig_type=std_logic lab=vsyn1}
C {devices/vdd.sym} -570 -630 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -860 -540 0 0 {name=V2 value="PWL(0 1.8 29.9u 1.8 30u 0)"}
C {devices/gnd.sym} -860 -490 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -510 -570 1 0 {name=p2 sig_type=std_logic lab=vctrl1}
C {devices/gnd.sym} -570 -510 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -630 -490 0 0 {name=V3 value="PWL(0 1.8 29.9u 1.8 30u 0)"}
C {devices/gnd.sym} -630 -440 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -370 -570 1 0 {name=p1 sig_type=std_logic lab=vctrl2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -570 -570 0 0 {name=x2}
C {devices/vsource.sym} -690 -490 0 0 {name=V6 value=0.5}
C {devices/gnd.sym} -690 -440 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} -310 -630 0 1 {name=l4 lab=VDD}
C {devices/vsource.sym} -20 -540 0 1 {name=V4 value="PULSE(0 1.8 50.001u 1n 1n 5u 10u 10)"}
C {devices/gnd.sym} -20 -490 0 1 {name=l8 lab=GND}
C {devices/gnd.sym} -310 -510 0 1 {name=l9 lab=GND}
C {devices/vsource.sym} -250 -490 0 1 {name=V5 value="PULSE(0 1.8 50.001u 1n 1n 5u 10u 7)"}
C {devices/gnd.sym} -250 -440 0 1 {name=l10 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -310 -570 0 1 {name=x3}
C {devices/vsource.sym} -190 -490 0 1 {name=V7 value=0.5}
C {devices/gnd.sym} -190 -440 0 1 {name=l13 lab=GND}
C {devices/gnd.sym} -440 -630 2 0 {name=l11 lab=GND}
