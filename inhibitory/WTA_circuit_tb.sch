v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -800 800 -400 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color="4 6 7 8 10 12 13 15 16 11"
node="0_in
1_in
2_in
3_in
4_in
5_in
6_in
7_in
8_in
9_in"}
B 2 0 -1200 800 -800 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.1e-06
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
N -840 -940 -840 -920 {
lab=GND}
N -840 -1020 -840 -1000 {
lab=0_in}
N -840 -1080 -840 -1060 {
lab=GND}
N -840 -1160 -840 -1140 {
lab=vdd_or}
N -350 -790 -350 -770 {
lab=vdd_or}
N -350 -490 -350 -470 {
lab=GND}
N -440 -540 -430 -540 {
lab=0_in}
N -170 -630 -160 -630 {
lab=vout_or}
N -440 -560 -430 -560 {
lab=1_in}
N -440 -580 -430 -580 {
lab=2_in}
N -440 -600 -430 -600 {
lab=3_in}
N -440 -620 -430 -620 {
lab=4_in}
N -440 -640 -430 -640 {
lab=5_in}
N -440 -660 -430 -660 {
lab=6_in}
N -440 -680 -430 -680 {
lab=7_in}
N -440 -700 -430 -700 {
lab=8_in}
N -440 -720 -430 -720 {
lab=9_in}
N -840 -800 -840 -780 {
lab=GND}
N -840 -880 -840 -860 {
lab=1_in}
N -840 -660 -840 -640 {
lab=GND}
N -840 -740 -840 -720 {
lab=2_in}
N -840 -520 -840 -500 {
lab=GND}
N -840 -600 -840 -580 {
lab=3_in}
N -840 -380 -840 -360 {
lab=GND}
N -840 -460 -840 -440 {
lab=4_in}
N -840 -240 -840 -220 {
lab=GND}
N -840 -320 -840 -300 {
lab=5_in}
N -840 -100 -840 -80 {
lab=GND}
N -840 -180 -840 -160 {
lab=6_in}
N -840 40 -840 60 {
lab=GND}
N -840 -40 -840 -20 {
lab=7_in}
N -840 180 -840 200 {
lab=GND}
N -840 100 -840 120 {
lab=8_in}
N -840 320 -840 340 {
lab=GND}
N -840 240 -840 260 {
lab=9_in}
C {devices/vsource.sym} -840 -970 0 0 {name=V0 value="PWL(0 0 99n 0 100n 1.8 149n 1.8 150n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -920 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -840 -1110 0 0 {name=V10 value=1.8}
C {devices/gnd.sym} -840 -1060 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -840 -1160 2 0 {name=p1 sig_type=std_logic lab=vdd_or}
C {devices/lab_pin.sym} -350 -790 2 0 {name=p2 sig_type=std_logic lab=vdd_or}
C {devices/gnd.sym} -350 -470 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -440 -540 0 0 {name=p6 sig_type=std_logic lab=0_in}
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
  tran 0.01n 1.1u
  write WTA_circuit_tb.raw
.endc" }
C {devices/lab_pin.sym} -160 -630 2 0 {name=p7 sig_type=std_logic lab=vout_or}
C {devices/launcher.sym} -140 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/WTA_circuit_tb.raw tran"
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/inhibitory/WTA_circuit.sym} -310 -630 0 0 {name=x1}
C {devices/lab_pin.sym} -440 -560 0 0 {name=p5 sig_type=std_logic lab=1_in}
C {devices/lab_pin.sym} -440 -580 0 0 {name=p8 sig_type=std_logic lab=2_in}
C {devices/lab_pin.sym} -440 -600 0 0 {name=p10 sig_type=std_logic lab=3_in}
C {devices/lab_pin.sym} -440 -620 0 0 {name=p11 sig_type=std_logic lab=4_in}
C {devices/lab_pin.sym} -440 -640 0 0 {name=p12 sig_type=std_logic lab=5_in}
C {devices/lab_pin.sym} -440 -660 0 0 {name=p13 sig_type=std_logic lab=6_in}
C {devices/lab_pin.sym} -440 -680 0 0 {name=p14 sig_type=std_logic lab=7_in}
C {devices/lab_pin.sym} -440 -700 0 0 {name=p15 sig_type=std_logic lab=8_in}
C {devices/lab_pin.sym} -440 -720 0 0 {name=p16 sig_type=std_logic lab=9_in}
C {devices/lab_pin.sym} -840 -1020 0 0 {name=p3 sig_type=std_logic lab=0_in}
C {devices/vsource.sym} -840 -830 0 0 {name=V1 value="PWL(0 0 199n 0 200n 1.8 249n 1.8 250n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -780 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -840 -880 0 0 {name=p4 sig_type=std_logic lab=1_in}
C {devices/vsource.sym} -840 -690 0 0 {name=V2 value="PWL(0 0 299n 0 300n 1.8 349n 1.8 350n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -640 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -840 -550 0 0 {name=V3 value="PWL(0 0 399n 0 400n 1.8 449n 1.8 450n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -500 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -840 -410 0 0 {name=V4 value="PWL(0 0 499n 0 500n 1.8 549n 1.8 550n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -360 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -840 -270 0 0 {name=V5 value="PWL(0 0 599n 0 600n 1.8 649n 1.8 650n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -220 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -840 -130 0 0 {name=V6 value="PWL(0 0 699n 0 700n 1.8 749n 1.8 750n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 -80 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -840 10 0 0 {name=V7 value="PWL(0 0 799n 0 800n 1.8 849n 1.8 850n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 60 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -840 -740 0 0 {name=p9 sig_type=std_logic lab=2_in}
C {devices/lab_pin.sym} -840 -600 0 0 {name=p17 sig_type=std_logic lab=3_in}
C {devices/lab_pin.sym} -840 -460 0 0 {name=p18 sig_type=std_logic lab=4_in}
C {devices/lab_pin.sym} -840 -320 0 0 {name=p19 sig_type=std_logic lab=5_in}
C {devices/lab_pin.sym} -840 -180 0 0 {name=p20 sig_type=std_logic lab=6_in}
C {devices/lab_pin.sym} -840 -40 0 0 {name=p21 sig_type=std_logic lab=7_in}
C {devices/vsource.sym} -840 150 0 0 {name=V8 value="PWL(0 0 899n 0 900n 1.8 949n 1.8 950n 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 200 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -840 290 0 0 {name=V9 value="PWL(0 0 999n 0 1u 1.8 1.049u 1.8 1.050u 0)"
*"PULSE(0 1.8 1n 1n 1n 10u 20u 4)"}
C {devices/gnd.sym} -840 340 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -840 100 0 0 {name=p22 sig_type=std_logic lab=8_in}
C {devices/lab_pin.sym} -840 240 0 0 {name=p23 sig_type=std_logic lab=9_in}
