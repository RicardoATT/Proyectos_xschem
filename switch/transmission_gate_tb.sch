v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -500 -520 300 -120 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6"
node="vin
vout"}
N -680 -480 -680 -470 {
lab=VDD}
N -680 -370 -680 -360 {
lab=GND}
N -600 -420 -590 -420 {
lab=Vout}
N -770 -420 -760 -420 {
lab=Vin}
N -790 -220 -790 -200 {
lab=GND}
N -790 -300 -790 -280 {
lab=VDD}
N -730 -220 -730 -200 {
lab=GND}
N -730 -300 -730 -280 {
lab=Vin}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/transmission_gate.sym} -540 -340 0 0 {name=x1}
C {devices/gnd.sym} -680 -360 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -680 -480 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} -590 -420 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -770 -420 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} -790 -250 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -790 -200 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -790 -300 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} -730 -250 0 0 {name=V2 value="PWL(0 0 9.9u 0 10u 1.8 19.9u 1.8 20u 0)"}
C {devices/gnd.sym} -730 -200 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -730 -300 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} -810 -80 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code_shown.sym} -680 -80 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
  save all
  tran 1n 30u
  write transmission_gate_tb.raw
.endc
" }
C {devices/launcher.sym} -740 -150 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/transmission_gate_tb.raw tran"
}
