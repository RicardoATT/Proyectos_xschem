v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 870 -360 1670 40 {flags=graph
y1=-1.3e-07
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Vbl[V];vbl\\"
\\"Vout[V];vout\\""
color="6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 240 -370 240 -260 {
lab=#net1}
N 190 -370 240 -370 {
lab=#net1}
N 530 -800 650 -800 {
lab=#net2}
N 240 -660 240 -370 {
lab=#net1}
N 240 -660 280 -660 {
lab=#net1}
N 280 -800 280 -660 {
lab=#net1}
N 280 -660 280 -500 {
lab=#net1}
N 240 -200 240 -120 {
lab=GND}
N 1120 -770 1270 -770 {
lab=Vout}
N 1270 -770 1270 -500 {
lab=Vout}
N 1120 -500 1270 -500 {
lab=Vout}
N 1270 -620 1360 -620 {
lab=Vout}
N 1420 -620 1480 -620 {
lab=GND}
N 1480 -620 1480 -460 {
lab=GND}
N 730 -750 730 -710 {
lab=GND}
N 730 -900 730 -850 {
lab=VDD}
N -80 -260 -80 -160 {
lab=GND}
N -80 -370 130 -370 {
lab=Vbl}
N 280 -800 370 -800 {
lab=#net1}
N 280 -500 370 -500 {
lab=#net1}
N 450 -870 450 -850 {
lab=VDD}
N 450 -570 450 -550 {
lab=VDD}
N 450 -750 450 -730 {
lab=GND}
N 450 -450 450 -430 {
lab=GND}
N 1040 -720 1040 -700 {
lab=GND}
N 1040 -840 1040 -820 {
lab=VDD}
N 1040 -450 1040 -430 {
lab=GND}
N 1040 -570 1040 -550 {
lab=VDD}
N 940 -460 960 -460 {
lab=sel_B1}
N -80 -370 -80 -320 {
lab=Vbl}
N 940 -730 960 -730 {
lab=sel_I1}
N 530 -500 960 -500 {
lab=#net3}
N -60 -500 -60 -480 {
lab=GND}
N -60 -580 -60 -560 {
lab=VDD}
N 100 -500 100 -480 {
lab=GND}
N 150 -680 190 -680 {
lab=GND}
N 0 -680 50 -680 {
lab=VDD}
N 100 -600 100 -560 {
lab=sel_B1}
N 100 -580 160 -580 {
lab=sel_B1}
N 100 -790 120 -790 {
lab=sel_I1}
N 100 -790 100 -770 {
lab=sel_I1}
N 820 -800 940 -800 {
lab=#net4}
N 940 -800 940 -770 {
lab=#net4}
N 940 -770 960 -770 {
lab=#net4}
N 1300 -640 1300 -620 {
lab=Vout}
C {devices/res.sym} 160 -370 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1390 -620 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/inverter/inverter.sym} 770 -780 0 0 {name=x3}
C {sky130_fd_pr/rram_v0.sym} 240 -230 0 0 {name=R3
model=rram_v0
spiceprefix=X
}
C {devices/gnd.sym} 240 -120 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1480 -460 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1040 -700 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 730 -710 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -80 -160 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -60 -530 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vdd.sym} -60 -580 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} -60 -480 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} 730 -900 0 0 {name=l9 lab=VDD}
C {devices/vdd.sym} 1040 -840 0 0 {name=l10 lab=VDD}
C {devices/vsource.sym} -80 -290 0 0 {name=Vbl value="PWL(0 0 10u 0 15u 3 20u 0)"}
C {devices/vdd.sym} 450 -870 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 450 -570 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 450 -730 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 450 -430 0 0 {name=l15 lab=GND}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/hopfield/transmission_gate.sym} 590 -720 0 0 {name=x4}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/hopfield/transmission_gate.sym} 590 -420 0 0 {name=x5}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/hopfield/switch_cto.sym} 1080 -690 0 0 {name=x1}
C {devices/gnd.sym} 1040 -430 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 1040 -570 0 0 {name=l11 lab=VDD}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/hopfield/switch_cto.sym} 1080 -420 0 0 {name=x2}
C {devices/code_shown.sym} 350 -290 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  write synapse_hopfield_tb.raw
.endc

" }
C {sky130_fd_pr/corner.sym} 450 -90 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 330 -90 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/launcher.sym} 710 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sinapsis_3_inputs.raw tran"
}
C {devices/lab_pin.sym} -80 -370 0 0 {name=p1 sig_type=std_logic lab=Vbl}
C {devices/lab_pin.sym} 1300 -640 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} 100 -530 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} 100 -480 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 160 -580 2 0 {name=p3 sig_type=std_logic lab=sel_B1}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/inverter/inverter.sym} 120 -720 3 0 {name=x6}
C {devices/gnd.sym} 190 -680 3 0 {name=l16 lab=GND}
C {devices/vdd.sym} 0 -680 3 0 {name=l18 lab=VDD}
C {devices/lab_pin.sym} 120 -790 2 0 {name=p4 sig_type=std_logic lab=sel_I1}
C {devices/lab_pin.sym} 940 -460 0 0 {name=p5 sig_type=std_logic lab=sel_B1}
C {devices/lab_pin.sym} 940 -730 0 0 {name=p6 sig_type=std_logic lab=sel_I1}
