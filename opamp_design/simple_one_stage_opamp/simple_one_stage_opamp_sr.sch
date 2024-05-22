v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -830 -340 -830 -320 {
lab=VDD}
N -830 -260 -830 -240 {
lab=GND}
N -710 -340 -710 -320 {
lab=Vinp}
N -710 -260 -710 -240 {
lab=GND}
N -770 -340 -770 -320 {
lab=VSS}
N -770 -260 -770 -240 {
lab=GND}
N -800 -520 -780 -520 {
lab=Vinp}
N -700 -550 -700 -530 {
lab=VDD}
N -700 -430 -700 -390 {
lab=VSS}
N -620 -480 -580 -480 {
lab=Vout}
N -600 -480 -600 -410 {
lab=Vout}
N -780 -410 -600 -410 {
lab=Vout}
N -780 -440 -780 -410 {
lab=Vout}
C {devices/vdd.sym} -700 -550 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -830 -290 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -830 -340 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -830 -240 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -800 -520 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -710 -290 0 0 {name=V3 value="PWL(0 0 4.999u 0 5u 1.8 9.999u 1.8 10u 0)"}
C {devices/gnd.sym} -710 -240 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -710 -340 2 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -770 -290 0 0 {name=V4 value=0}
C {devices/gnd.sym} -770 -240 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -770 -340 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -470 -410 0 0 {name=SPICE
value="
.control
	tran 0.1n 15u
	set color0=rgb:f/f/f
	set color1=rgb:0/0/0
	plot v(Vout)
	wrdata simple_one_stage_opamp_sr.ssv (Vout)
.endc
.save all
"}
C {sky130_fd_pr/corner.sym} -490 -560 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -580 -480 2 0 {name=p10 sig_type=std_logic lab=Vout}
C {/home/ricardo/RATT_repos/Proyectos_xschem/opamp_design/simple_one_stage_opamp/simple_one_stage_opamp.sym} -420 -240 0 0 {name=x1}
C {devices/lab_pin.sym} -700 -390 2 0 {name=p7 sig_type=std_logic lab=VSS}
