v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -400 800 0 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=X_in}
B 2 0 0 800 400 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=T_in}
B 2 0 -800 800 -400 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=U_in}
B 2 0 -1200 800 -800 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout_or
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -500 -180 -500 -160 {
lab=GND}
N -500 -260 -500 -240 {
lab=T_in}
N -500 -320 -500 -300 {
lab=GND}
N -500 -400 -500 -380 {
lab=vdd_or}
N -320 -400 -320 -380 {
lab=vdd_or}
N -320 -280 -320 -260 {
lab=GND}
N -500 -40 -500 -20 {
lab=GND}
N -500 -120 -500 -100 {
lab=X_in}
N -400 -360 -390 -360 {
lab=U_in}
N -400 -330 -390 -330 {
lab=X_in}
N -260 -330 -250 -330 {
lab=vout_or}
N -400 -300 -390 -300 {
lab=T_in}
N -500 100 -500 120 {
lab=GND}
N -500 20 -500 40 {
lab=U_in}
C {devices/vsource.sym} -500 -210 0 0 {name=V1 value="PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -500 -160 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -500 -260 2 0 {name=p3 sig_type=std_logic lab=T_in}
C {devices/vsource.sym} -500 -350 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -500 -300 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -500 -400 2 0 {name=p1 sig_type=std_logic lab=vdd_or}
C {devices/lab_pin.sym} -320 -400 2 0 {name=p2 sig_type=std_logic lab=vdd_or}
C {devices/gnd.sym} -320 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -500 -70 0 0 {name=V2 value="PULSE(0 1.8 1n 1n 1n 5u 10u 8)"}
C {devices/gnd.sym} -500 -20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -500 -120 2 0 {name=p4 sig_type=std_logic lab=X_in}
C {devices/lab_pin.sym} -400 -330 0 0 {name=p5 sig_type=std_logic lab=X_in}
C {devices/lab_pin.sym} -400 -360 0 0 {name=p6 sig_type=std_logic lab=U_in}
C {sky130_fd_pr/corner.sym} -170 -380 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code_shown.sym} -300 -190 0 0 {name=NGSPICE1
only_toplevel=true
value="
.param Wp_or=5
.param Lp_or=0.15
.param Wn_or=5
.param Ln_or=0.15
.control
  save all
  tran 1n 40u
  write or_3_tb.raw
.endc" }
C {devices/lab_pin.sym} -250 -330 2 0 {name=p7 sig_type=std_logic lab=vout_or}
C {devices/launcher.sym} -140 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/or_3_tb.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/inhibitory/or_3.sym} -90 -220 0 0 {name=x1}
C {devices/lab_pin.sym} -400 -300 0 0 {name=p8 sig_type=std_logic lab=T_in}
C {devices/vsource.sym} -500 70 0 0 {name=V4 value="PULSE(0 1.8 1n 1n 1n 2.5u 5u 16)"}
C {devices/gnd.sym} -500 120 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -500 20 2 0 {name=p9 sig_type=std_logic lab=U_in}
