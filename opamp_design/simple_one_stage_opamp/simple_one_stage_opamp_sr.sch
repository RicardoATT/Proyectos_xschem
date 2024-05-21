v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -770 -340 -770 -320 {
lab=VDD}
N -770 -260 -770 -240 {
lab=GND}
N -650 -340 -650 -320 {
lab=Vinp}
N -650 -260 -650 -240 {
lab=GND}
N -710 -340 -710 -320 {
lab=VSS}
N -710 -260 -710 -240 {
lab=GND}
N -740 -520 -720 -520 {
lab=Vinp}
N -640 -550 -640 -530 {
lab=VDD}
N -640 -430 -640 -390 {
lab=VSS}
N -560 -480 -520 -480 {
lab=Vout}
N -540 -480 -540 -410 {
lab=Vout}
N -720 -410 -540 -410 {
lab=Vout}
N -720 -440 -720 -410 {
lab=Vout}
C {devices/vdd.sym} -640 -550 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -770 -290 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -770 -340 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -770 -240 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -740 -520 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -650 -290 0 0 {name=V3 value="PWL(0 0 4.999u 0 5u 1.8 9.999u 1.8 10u 0)"}
C {devices/gnd.sym} -650 -240 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -650 -340 2 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -710 -290 0 0 {name=V4 value=0}
C {devices/gnd.sym} -710 -240 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -710 -340 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -410 -410 0 0 {name=SPICE
value="
.control
	tran 0.1n 15u
	plot v(Vout)
	wrdata simple_one_stage_opamp_sr.ssv (Vout)
.endc
.save all
"}
C {sky130_fd_pr/corner.sym} -430 -560 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -520 -480 2 0 {name=p10 sig_type=std_logic lab=Vout}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/opamp_design/simple_one_stage_opamp/simple_one_stage_opamp.sym} -360 -240 0 0 {name=x1}
C {devices/lab_pin.sym} -640 -390 2 0 {name=p7 sig_type=std_logic lab=VSS}
