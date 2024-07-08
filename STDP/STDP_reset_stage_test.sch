v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -880 -1080 -80 -680 {flags=graph
y1=2.20405
y2=3.49429
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




color=10
node="\\"Thickness1 [nm]; 5 n.x1.xr1.n1#ngap -\\""}
B 2 -880 -1480 -80 -1080 {flags=graph
y1=0
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


dataset=-1
unitx=1
logx=0
logy=0





color=6
node=vcontrol}
N -860 -330 -860 -310 {
lab=GND}
N -860 -410 -860 -390 {
lab=VDD}
N -1060 -920 -1060 -900 {
lab=VDD}
N -1140 -860 -1120 -860 {
lab=vcontrol}
N -1000 -840 -980 -840 {
lab=vsyn1}
N -1060 -800 -1060 -780 {
lab=GND}
N -1000 -860 -980 -860 {
lab=GND}
N -1170 -720 -1170 -700 {
lab=GND}
N -1170 -820 -1170 -780 {
lab=#net1}
N -1220 -860 -1200 -860 {
lab=VDD}
N -1170 -880 -1170 -860 {
lab=GND}
C {devices/vsource.sym} -860 -360 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -860 -310 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -860 -410 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/corner.sym} -770 -600 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code.sym} -890 -600 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -640 -600 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
  save all
  tran 1n 100u
  write STDP_reset_stage_test.raw
.endc
" }
C {devices/launcher.sym} -580 -470 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_reset_stage_test.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -1000 -680 0 0 {name=x1}
C {devices/vdd.sym} -1060 -920 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} -1060 -780 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -980 -840 2 0 {name=p8 sig_type=std_logic lab=vsyn1}
C {devices/gnd.sym} -980 -860 3 0 {name=l4 lab=GND}
C {devices/vdd.sym} -1220 -860 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -1170 -750 0 0 {name=V2 value="PULSE(0 1.8 1n 1n 1n 5u 10u 2)"}
C {devices/gnd.sym} -1170 -700 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1130 -860 1 0 {name=p2 sig_type=std_logic lab=vcontrol}
C {sky130_fd_pr/nfet_01v8.sym} -1170 -840 3 0 {name=M1
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
C {devices/gnd.sym} -1170 -880 2 0 {name=l2 lab=GND}
