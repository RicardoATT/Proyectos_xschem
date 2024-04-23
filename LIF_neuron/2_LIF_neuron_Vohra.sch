v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -830 -100 -30 300 {flags=graph
y1=-0.18
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vpre
vpost
vin
vb1
vb2"
color="6 7 4 10 8"
dataset=-1
unitx=1
logx=0
logy=0
}
N -700 -160 -700 -140 {
lab=GND}
N -700 -320 -700 -300 {
lab=VDD}
N -210 -160 -210 -140 {
lab=GND}
N -210 -240 -210 -220 {
lab=VDD}
N -90 -160 -90 -140 {
lab=GND}
N -90 -240 -90 -220 {
lab=vin}
N 0 200 0 220 {
lab=GND}
N 0 120 0 140 {
lab=vb1}
N -150 -160 -150 -140 {
lab=GND}
N -150 -240 -150 -220 {
lab=vb}
N -420 -160 -420 -140 {
lab=GND}
N -420 -320 -420 -300 {
lab=VDD}
N -280 -230 -260 -230 {
lab=vpost}
N -540 -230 -520 -230 {
lab=vpre}
N -560 -230 -540 -230 {
lab=vpre}
N 180 200 180 220 {
lab=GND}
N 180 120 180 140 {
lab=vb2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -470 -90 0 0 {name=x1}
C {devices/gnd.sym} -700 -140 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -700 -320 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -210 -190 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -210 -140 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -210 -240 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -90 -190 0 0 {name=V4 value="PWL(0 0 50u 1.8)"}
C {devices/gnd.sym} -90 -140 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -90 -240 2 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -800 -230 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 0 170 0 0 {name=V2 value=0.5}
C {devices/gnd.sym} 0 220 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 0 120 2 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/vsource.sym} -150 -190 0 0 {name=V3 value=0.3}
C {devices/gnd.sym} -150 -140 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -150 -240 2 0 {name=p4 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} -790 -160 0 0 {name=p5 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} -790 -180 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -540 -230 1 0 {name=p7 sig_type=std_logic lab=vpre}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -190 -90 0 0 {name=x2}
C {devices/gnd.sym} -420 -140 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -420 -320 0 0 {name=l9 lab=VDD}
C {devices/lab_pin.sym} -510 -160 0 0 {name=p9 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} -510 -180 0 0 {name=p10 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -260 -230 1 0 {name=p11 sig_type=std_logic lab=vpost}
C {sky130_fd_pr/corner.sym} -20 -70 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 110 -70 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 10n 50u
  write 2_LIF_neuron_Vohra.raw
.endc
" }
C {devices/launcher.sym} 50 80 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/2_LIF_neuron_Vohra.raw tran"
}
C {devices/vsource.sym} 180 170 0 0 {name=V5 value="PWL(0 0 50u 0.5)"}
C {devices/gnd.sym} 180 220 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 180 120 2 0 {name=p8 sig_type=std_logic lab=vb2}
