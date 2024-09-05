v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1800 -60 -1000 340 {flags=graph
y1=-0.42
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.77996e-08
x2=1.33699e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Vin [V]; vin\\"
\\"Vout [V]; delay\\""
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N -1780 -120 -1780 -100 {
lab=GND}
N -1780 -200 -1780 -180 {
lab=VDD}
N -1680 -120 -1680 -100 {
lab=GND}
N -1620 -200 -1620 -180 {
lab=GND}
N -1680 -240 -1680 -180 {
lab=vin}
N -1620 -300 -1620 -280 {
lab=VDD}
N -1560 -240 -1540 -240 {
lab=delay}
C {devices/vsource.sym} -1780 -150 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -1780 -100 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -1780 -200 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -1620 -300 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} -1680 -100 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/corner.sym} -1360 -190 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code.sym} -1480 -190 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -1230 -220 0 0 {name=NGSPICE1
only_toplevel=true
value="
.param Lp_delay=3.5
.param Wp_delay=0.45
.param Ln_delay=3.5
.param Wn_delay=0.45
.control
  save all
  tran 0.1n 1u
  write delay_test.raw
.endc
" }
C {devices/launcher.sym} -1400 -240 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/delay_test.raw tran"
}
C {devices/gnd.sym} -1620 -180 0 0 {name=l2 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/delay/delay.sym} -1440 -120 0 0 {name=x1}
C {devices/vsource.sym} -1680 -150 0 0 {name=V2 value="PULSE(0 1.8 1n 1n 1n 15n 40n 200)"}
C {devices/lab_pin.sym} -1540 -240 2 0 {name=p1 sig_type=std_logic lab=delay}
C {devices/lab_pin.sym} -1680 -210 0 0 {name=p2 sig_type=std_logic lab=vin}
