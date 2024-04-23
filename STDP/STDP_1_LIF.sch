v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -700 -80 100 320 {flags=graph
y1=0.37
y2=1.8
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
node="vin
vout"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -700 320 100 720 {flags=graph
y1=-3.3e-07
y2=8.5e-06
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
node="\\"im1 (A);i(vread1)\\""
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 100 320 900 720 {flags=graph
y1=110835
y2=118492
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
node="\\"M [ohms];vout 0 - i(vread1) /\\""
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -700 720 100 1120 {flags=graph
y1=2.8
y2=4.1
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


dataset=-1
unitx=1
logx=0
logy=0
color=7
node="\\"Thickness [nm]; 5 n.xr1.n1#ngap -\\""}
N -580 -140 -580 -120 {
lab=GND}
N -580 -300 -580 -280 {
lab=VDD}
N -100 -140 -100 -120 {
lab=GND}
N -100 -220 -100 -200 {
lab=VDD}
N 80 -140 80 -120 {
lab=GND}
N 80 -220 80 -200 {
lab=vin}
N -40 -140 -40 -120 {
lab=GND}
N -40 -220 -40 -200 {
lab=vb1}
N 20 -140 20 -120 {
lab=GND}
N 20 -220 20 -200 {
lab=vb2}
N -440 -210 -420 -210 {
lab=vout}
N -420 -210 -400 -210 {
lab=vout}
N -180 -210 -160 -210 {
lab=GND}
N -160 -210 -160 -190 {
lab=GND}
N -260 -210 -240 -210 {
lab=#net1}
N -340 -210 -320 -210 {
lab=#net2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -350 -70 0 0 {name=x1}
C {devices/gnd.sym} -580 -120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -580 -300 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -100 -170 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -100 -120 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -100 -220 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 80 -170 0 0 {name=V4 value=1.5}
C {devices/gnd.sym} 80 -120 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 80 -220 2 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -680 -210 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} -40 -170 0 0 {name=V2 value=0.45}
C {devices/gnd.sym} -40 -120 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -40 -220 2 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/vsource.sym} 20 -170 0 0 {name=V3 value=0.4}
C {devices/gnd.sym} 20 -120 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 20 -220 2 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -670 -140 0 0 {name=p5 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} -670 -160 0 0 {name=p6 sig_type=std_logic lab=vb1}
C {sky130_fd_pr/corner.sym} 230 -60 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 110 -60 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/launcher.sym} 180 90 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_1_LIF.raw tran"
}
C {devices/code_shown.sym} 120 150 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  write STDP_1_LIF.raw
.endc
" }
C {devices/lab_pin.sym} -420 -210 1 0 {name=p7 sig_type=std_logic lab=vout}
C {sky130_fd_pr/rram_v0.sym} -210 -210 1 0 {name=R1
model=rram_v0
spiceprefix=X
}
C {devices/gnd.sym} -160 -190 0 0 {name=l1 lab=GND}
C {devices/ammeter.sym} -290 -210 3 0 {name=vread1 savecurrent=true}
C {sky130_fd_pr/diode.sym} -370 -210 1 0 {name=D1
model=diode_pw2nd_05v5
area=1e12
pj=4e6
}
