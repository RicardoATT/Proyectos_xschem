v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -710 -60 -710 -40 {
lab=VDD}
N -710 20 -710 40 {
lab=GND}
N -590 -60 -590 -40 {
lab=Vinn}
N -590 20 -590 40 {
lab=GND}
N -530 -60 -530 -40 {
lab=Vinp}
N -530 20 -530 40 {
lab=GND}
N -650 -60 -650 -40 {
lab=VSS}
N -650 20 -650 40 {
lab=GND}
N -680 -240 -660 -240 {
lab=Vinp}
N -680 -160 -660 -160 {
lab=Vinn}
N -580 -270 -580 -250 {
lab=VDD}
N -500 -200 -480 -200 {
lab=Vout}
N -580 -150 -580 -120 {
lab=VSS}
C {devices/vdd.sym} -580 -270 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -710 -10 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -710 -60 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -710 40 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -590 -10 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -590 40 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -590 -60 2 0 {name=p1 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} -680 -240 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -530 -10 0 0 {name=V3 value="ac 1 SINE(0.9 0.9 10000k)"}
C {devices/gnd.sym} -530 40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -530 -60 2 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -650 -10 0 0 {name=V4 value=0}
C {devices/gnd.sym} -650 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -650 -60 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -360 -130 0 0 {name=SPICE only_toplevel=false 
value=".ac dec 0.0001 1 10000000k
.control
	run
	setplot tran1
	set color0=rgb:f/f/f
	set color1=rgb:0/0/0
	settype decibel vout
	plot vdb(Vout) xlog
	wrdata simple_one_stage_opamp_gb.ssv vdb(Vout) xlog
.endc
.save all
"}
C {sky130_fd_pr/corner.sym} -370 -280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -480 -200 2 0 {name=p10 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -680 -160 0 0 {name=p3 sig_type=std_logic lab=Vinn}
C {/home/ricardo/RATT_repos/Proyectos_xschem/opamp_design/simple_one_stage_opamp/simple_one_stage_opamp.sym} -300 40 0 0 {name=x1}
C {devices/lab_pin.sym} -580 -120 2 0 {name=p7 sig_type=std_logic lab=VSS}
