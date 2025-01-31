v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1070 -750 -270 -350 {flags=graph
y1=-0.049
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.0320176e-10
x2=3.2475619e-09
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
N -1350 -910 -1350 -900 {
lab=VDD}
N -1350 -620 -1350 -610 {
lab=GND}
N -1170 -760 -1160 -760 {
lab=Vout}
N -1360 -450 -1360 -430 {
lab=GND}
N -1360 -530 -1360 -510 {
lab=VDD}
N -1300 -450 -1300 -430 {
lab=GND}
N -1300 -530 -1300 -510 {
lab=Vin}
N -1440 -860 -1430 -860 {lab=GND}
N -1440 -860 -1440 -700 {lab=GND}
N -1440 -700 -1430 -700 {lab=GND}
N -1440 -720 -1430 -720 {lab=GND}
N -1440 -740 -1430 -740 {lab=GND}
N -1440 -760 -1430 -760 {lab=GND}
N -1440 -780 -1430 -780 {lab=GND}
N -1440 -800 -1430 -800 {lab=GND}
N -1440 -820 -1430 -820 {lab=GND}
N -1440 -840 -1430 -840 {lab=GND}
N -1440 -680 -1430 -680 {lab=Vin}
N -1440 -660 -1430 -660 {lab=GND}
C {devices/gnd.sym} -1350 -610 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -1350 -910 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} -1160 -760 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -1440 -680 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} -1360 -480 0 0 {name=V1 value=1.8
*"PWL(0 1.8 19.9u 1.8 20u 0)"}
C {devices/gnd.sym} -1440 -860 2 0 {name=l6 lab=GND}
C {devices/vdd.sym} -1360 -530 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} -1300 -480 0 0 {name=V2 value="PWL(0 0 0.249n 0 0.25n 1.8 0.499n 1.8 0.5n 0)"
*"PWL(0 0 9.9u 0 10u 1.8 19.9u 1.8 20u 0)"}
C {devices/gnd.sym} -1300 -430 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1300 -530 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} -1380 -310 0 0 {name=CORNER1 only_toplevel=true corner=tt_mm}
C {devices/code_shown.sym} -1250 -310 0 0 {name=NGSPICE1
only_toplevel=true
value="
.param Wp_or=1
.param Lp_or=0.15
.param Wn_or=1
.param Ln_or=0.15
.control
	set wr_vecnames
	set wr_singlescale
	let mc_runs = 100
	let run = 1
	dowhile run <= mc_runs
		tran 0.001n 1.5n
		wrdata WTA_MC0.txt v(vin)
		wrdata WTA_MC\{$&run\}.txt v(vout)
		*write WTA_MC.raw
		reset
		let run = run + 1
	end
.endc
.save all
" }
C {devices/launcher.sym} -1310 -380 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/WTA_MC.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/SNN/WTA_circuit.sym} -1320 -760 0 0 {name=x1}
C {devices/gnd.sym} -1440 -660 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -1360 -430 0 0 {name=l5 lab=GND}
