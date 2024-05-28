v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -440 -40 360 360 {flags=graph
y1=0.262219
y2=2.03822
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vpre
vpos"
color="4 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 360 -40 1160 360 {flags=graph
y1=-7.3e-07
y2=6.7e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color=10
node=i(vmeas1)}
B 2 -440 360 360 760 {flags=graph
y1=2.8
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=10
node="\\"Thickness [nm]; 5 n.x3.xr1.n1#ngap -\\""}
N 770 -110 770 -90 {
lab=GND}
N 770 -190 770 -170 {
lab=VDD}
N 830 -110 830 -90 {
lab=GND}
N 830 -190 830 -170 {
lab=vb1}
N -80 -170 -80 -150 {
lab=GND}
N -80 -330 -80 -310 {
lab=VDD}
N 60 -240 80 -240 {
lab=vpre}
N 160 -300 160 -280 {
lab=VDD}
N -180 -180 -170 -180 {
lab=vb1}
N -360 -160 -360 -140 {
lab=GND}
N -240 -260 -240 -240 {
lab=#net1}
N -240 -240 -180 -240 {
lab=#net1}
N -240 -290 -230 -290 {
lab=VDD}
N -230 -320 -230 -290 {
lab=VDD}
N -240 -320 -230 -320 {
lab=VDD}
N -320 -290 -280 -290 {
lab=#net2}
N -360 -320 -240 -320 {
lab=VDD}
N -370 -290 -360 -290 {
lab=VDD}
N -370 -320 -370 -290 {
lab=VDD}
N -370 -320 -360 -320 {
lab=VDD}
N -360 -260 -360 -240 {
lab=#net2}
N -360 -240 -300 -240 {
lab=#net2}
N -300 -290 -300 -240 {
lab=#net2}
N -360 -240 -360 -220 {
lab=#net2}
N 480 -220 500 -220 {
lab=#net3}
N 500 -160 510 -160 {
lab=vb2}
N 600 -150 600 -130 {
lab=GND}
N 600 -310 600 -290 {
lab=VDD}
N 740 -360 740 -220 {
lab=vpos}
N 320 -360 320 -240 {
lab=vpos}
N 160 -100 160 -80 {
lab=GND}
N 80 -240 100 -240 {
lab=vpre}
N 320 -180 370 -180 {
lab=vpos}
N 320 -240 320 -180 {
lab=vpos}
N 370 -270 370 -220 {
lab=VDD}
N 220 -220 240 -220 {
lab=#net4}
N 300 -220 340 -220 {
lab=#net4}
N 220 -240 320 -240 {
lab=vpos}
N 400 -220 420 -220 {
lab=#net5}
N 320 -360 740 -360 {
lab=vpos}
N 240 -220 300 -220 {
lab=#net4}
N 890 -110 890 -90 {
lab=GND}
N 890 -190 890 -170 {
lab=vb2}
N 160 -180 160 -160 {
lab=#net6}
C {devices/vsource.sym} 770 -140 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 770 -90 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 770 -190 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 830 -140 0 0 {name=V2 value=0.45}
C {devices/gnd.sym} 830 -90 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 830 -190 2 0 {name=p9 sig_type=std_logic lab=vb1}
C {sky130_fd_pr/corner.sym} 540 460 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 420 460 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 670 460 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 20n 100u
  write STDP_2_LIF.raw
.endc
" }
C {devices/launcher.sym} 730 590 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_2_LIF.raw tran"
}
C {devices/gnd.sym} -80 -150 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} -80 -330 0 0 {name=l14 lab=VDD}
C {devices/lab_pin.sym} -180 -180 0 0 {name=p13 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 80 -240 1 0 {name=p14 sig_type=std_logic lab=vpre}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} 220 -60 0 0 {name=x3}
C {devices/vdd.sym} 160 -300 0 0 {name=l16 lab=VDD}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} 160 -160 0 0 {name=x1}
C {devices/vdd.sym} -300 -320 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -360 -190 0 1 {name=I0 value="PWL(0 0 100u 7u)"}
C {devices/gnd.sym} -360 -140 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -260 -290 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -340 -290 0 1 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} 840 -140 0 0 {name=x2}
C {sky130_fd_pr/pfet_01v8.sym} 370 -200 3 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 500 -160 3 0 {name=p1 sig_type=std_logic lab=vb2}
C {devices/gnd.sym} 600 -130 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 600 -310 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 160 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 320 -320 2 0 {name=p2 sig_type=std_logic lab=vpos}
C {devices/vdd.sym} 370 -270 0 0 {name=l4 lab=VDD}
C {devices/ammeter.sym} 450 -220 3 0 {name=Vmeas1 savecurrent=true}
C {devices/vsource.sym} 890 -140 0 0 {name=V3 value=0.6}
C {devices/gnd.sym} 890 -90 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 890 -190 2 0 {name=p3 sig_type=std_logic lab=vb2}
C {devices/ammeter.sym} 160 -130 0 0 {name=Vmeas2 savecurrent=true}
