v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 160 -40 960 360 {flags=graph
y1=1.7
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdd}
B 2 -640 360 160 760 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pre
pos"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 160 360 960 760 {flags=graph
y1=2.1
y2=4.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Thickness [nm]; 5 n.x1.xr1.n1#ngap -\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -220 140 -220 160 {
lab=GND}
N -220 20 -220 40 {
lab=VDD}
N -440 140 -440 160 {
lab=GND}
N -440 60 -440 80 {
lab=VDD}
N -160 100 -140 100 {
lab=ipos}
N -20 140 -20 160 {
lab=GND}
N -160 80 -20 80 {
lab=pos}
N -380 140 -380 160 {
lab=GND}
N -380 80 -280 80 {
lab=pre}
C {devices/gnd.sym} -220 160 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -220 20 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -440 110 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -440 160 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -440 60 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/corner.sym} 440 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 320 -310 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
.inc $::SKYWATER_MODELS/rram_v1.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 330 -160 0 0 {name=NGSPICE
only_toplevel=true
value="
.param L_pre=0.15
.param W_pre=1
.param L_pos=0.15
.param W_pos=15
.param L_mem_in=0.15
.param W_mem_in=30
.param L_mem_out=0.15
.param W_mem_out=1.5
.control
  save all
  tran 1n 200u 0 1n
  write 6T1R_tb3.raw
.endc
" }
C {devices/launcher.sym} -350 240 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/6T1R_tb.raw tran"
}
C {devices/vsource.sym} -20 110 0 0 {name=V3 value="PWL(0 0 59.999u 0 60u 1.8)"
*"PULSE(0 1.8 45.001u 1n 1n 100n 200n 300)"}
C {devices/gnd.sym} -20 160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -330 80 1 0 {name=p1 sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} -100 80 1 0 {name=p2 sig_type=std_logic lab=pos}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -160 260 0 0 {name=x1}
C {devices/vsource.sym} -380 110 0 0 {name=V4 value="PWL(0 1.8 54.999u 1.8 55u 0)"}
C {devices/gnd.sym} -380 160 0 0 {name=l7 lab=GND
value="PWL(0 1.8 24.999u 1.8 25u 0)"}
C {devices/launcher.sym} -350 290 0 0 {name=h1
descr="load waves v2" 
tclcommand="xschem raw_read $netlist_dir/6T1R_tb2.raw tran"
}
C {devices/launcher.sym} -350 330 0 0 {name=h2
descr="load waves v3" 
tclcommand="xschem raw_read $netlist_dir/6T1R_tb3.raw tran"
}
C {devices/lab_pin.sym} -140 100 3 0 {name=p3 sig_type=std_logic lab=ipos}
