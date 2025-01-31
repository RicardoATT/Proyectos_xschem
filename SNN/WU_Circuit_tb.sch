v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1070 -750 -270 -350 {flags=graph
y1=-0.00054
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.534173e-11
x2=8.6809956e-10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6"
node="vout
vin"}
N -1250 -690 -1250 -680 {
lab=VDD}
N -1250 -600 -1250 -590 {
lab=GND}
N -1200 -640 -1190 -640 {
lab=Vout}
N -1310 -640 -1300 -640 {
lab=Vin}
N -1360 -450 -1360 -430 {
lab=GND}
N -1360 -530 -1360 -510 {
lab=VDD}
N -1300 -450 -1300 -430 {
lab=GND}
N -1300 -530 -1300 -510 {
lab=Vin}
N -1420 -450 -1420 -430 {
lab=GND}
N -1420 -530 -1420 -510 {
lab=Vb}
N -1310 -670 -1300 -670 {
lab=VDD}
N -1310 -610 -1300 -610 {
lab=Vb}
N -1310 -680 -1310 -670 {
lab=VDD}
N -1310 -680 -1250 -680 {
lab=VDD}
C {devices/gnd.sym} -1250 -590 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -1250 -690 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} -1190 -640 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -1310 -640 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} -1360 -480 0 0 {name=V1 value=1.8
*"PWL(0 1.8 19.9u 1.8 20u 0)"}
C {devices/gnd.sym} -1360 -430 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -1360 -530 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} -1300 -480 0 0 {name=V2 value="PWL(0 0 0.099n 0 0.1n 1.8 0.199n 1.8 0.2n 0)"
*"PWL(0 0 9.9u 0 10u 1.8 19.9u 1.8 20u 0)"}
C {devices/gnd.sym} -1300 -430 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1300 -530 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} -1380 -310 0 0 {name=CORNER1 only_toplevel=true corner=tt_mm}
C {devices/code_shown.sym} -1250 -310 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
	set wr_vecnames
	set wr_singlescale
	let mc_runs = 100
	let run = 1
	dowhile run <= mc_runs
		tran 0.001n 0.3n
		wrdata Switch_MC0.txt v(vin)
		wrdata Switch_MC\{$&run\}.txt v(vout)
		*write Switch_MC.raw
		reset
		let run = run + 1
	end
.endc
.save all
" }
C {devices/launcher.sym} -1310 -380 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/WU_Circuit_MC.raw tran"
}
C {devices/vsource.sym} -1420 -480 0 0 {name=V3 value=0.6}
C {devices/gnd.sym} -1420 -430 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -1420 -530 1 0 {name=p5 sig_type=std_logic lab=Vb}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/WU_Circuit.sym} -1250 -640 0 0 {name=x1}
C {devices/lab_pin.sym} -1310 -610 0 0 {name=p6 sig_type=std_logic lab=Vb}
