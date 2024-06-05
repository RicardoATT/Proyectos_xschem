v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -650 -670 -650 -650 {
lab=VDD}
N -650 -590 -650 -570 {
lab=GND}
N -530 -670 -530 -650 {
lab=Vinn}
N -530 -590 -530 -570 {
lab=GND}
N -470 -670 -470 -650 {
lab=Vinp}
N -470 -590 -470 -570 {
lab=GND}
N -590 -670 -590 -650 {
lab=VSS}
N -590 -590 -590 -570 {
lab=GND}
N -520 -940 -520 -920 {
lab=VDD}
N -440 -870 -420 -870 {
lab=Vout}
N -640 -910 -600 -910 {
lab=Vinp}
N -640 -830 -600 -830 {
lab=Vinn}
N -620 -830 -620 -810 {
lab=Vinn}
N -620 -750 -620 -730 {
lab=VSS}
N -520 -820 -520 -730 {
lab=VSS}
N -620 -730 -520 -730 {
lab=VSS}
N -620 -1000 -600 -1000 {
lab=Vinn}
N -620 -1000 -620 -830 {
lab=Vinn}
N -540 -1000 -420 -1000 {
lab=Vout}
N -420 -1000 -420 -870 {
lab=Vout}
N -420 -870 -420 -850 {
lab=Vout}
N -420 -790 -420 -730 {
lab=VSS}
N -520 -730 -420 -730 {
lab=VSS}
N -280 -870 -280 -850 {
lab=Vout}
N -420 -870 -280 -870 {
lab=Vout}
N -280 -790 -280 -730 {
lab=VSS}
N -420 -730 -280 -730 {
lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} -420 -820 0 0 {name=CL model=cap_mim_m3_1 W=5040000 L=1 MF=1 spiceprefix=X}
C {devices/res.sym} -280 -820 0 0 {name=RL
value=100k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -620 -780 0 0 {name=CL1 model=cap_mim_m3_1 W=5040000 L=1 MF=1 spiceprefix=X}
C {devices/res.sym} -570 -1000 1 0 {name=RL1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -520 -940 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} -650 -620 0 0 {name=V5 value=1.8}
C {devices/vdd.sym} -650 -670 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -650 -570 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -530 -620 0 0 {name=V6 value=0.9}
C {devices/gnd.sym} -530 -570 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -530 -670 2 0 {name=p11 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} -640 -910 0 0 {name=p12 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -470 -620 0 0 {name=V7 value="ac 1 SINE(0.9 0.9 10000k)"}
C {devices/gnd.sym} -470 -570 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -470 -670 2 0 {name=p13 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -590 -620 0 0 {name=V8 value=0}
C {devices/gnd.sym} -590 -570 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -590 -670 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} -230 -1010 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -280 -870 1 0 {name=p15 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -640 -830 0 0 {name=p16 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} -620 -730 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {/home/ricardo/RATT_repos/Proyectos_xschem/opamp_design/cascode_one_stage_opamp/cascode_one_stage_opamp.sym} -290 -750 0 0 {name=x1}
C {devices/code_shown.sym} -220 -860 0 0 {name=SPICE only_toplevel=false 
value="
.param W1=9.389
.param W5=9.7
.param W9=35.393
.param W10=7.5
.param W11=0.469
.param L0=0.15
.ac dec 0.0001 1 10000000k
.control
	run
	setplot tran1
	set color0=rgb:f/f/f
	set color1=rgb:0/0/0
	settype decibel vout
	plot vdb(Vout) xlog
	wrdata cascode_one_stage_opamp_av.ssv vdb(Vout) xlog
.endc
.save all
"}
