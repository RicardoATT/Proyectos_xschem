v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -440 -40 360 360 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.81231e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vpre
vpost"
color="4 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 360 -40 1160 360 {flags=graph
y1=-2.3e-06
y2=1.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.81231e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="6 7"
node="\\"ipre [A]; i(vread1)\\"
\\"ipost [A]; i(vread2)\\""}
B 2 -440 360 360 760 {flags=graph
y1=86000
y2=200000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.81231e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"M [ohms];te be - i(vread2) /\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -40 -200 -20 -200 {
lab=#net1}
N 60 -200 60 -160 {
lab=be}
N 40 -200 60 -200 {
lab=be}
N 520 -200 540 -200 {
lab=vpost}
N -280 -290 -280 -270 {
lab=VDD}
N 380 -290 380 -270 {
lab=VDD}
N 380 -130 380 -110 {
lab=GND}
N -280 -130 -280 -110 {
lab=GND}
N -140 -200 -100 -200 {
lab=vpre}
N 60 -100 60 -80 {
lab=GND}
N 100 -130 120 -130 {
lab=vpost}
N 120 -130 120 -80 {
lab=vpost}
N 540 -200 540 -80 {
lab=vpost}
N 520 -340 540 -340 {
lab=vpost}
N 540 -340 540 -200 {
lab=vpost}
N 260 -340 260 -200 {
lab=#net2}
N 260 -340 460 -340 {
lab=#net2}
N 260 -200 280 -200 {
lab=#net2}
N 240 -200 260 -200 {
lab=#net2}
N 50 -130 60 -130 {
lab=GND}
N 50 -130 50 -100 {
lab=GND}
N 50 -100 60 -100 {
lab=GND}
N -400 -130 -370 -130 {
lab=vb2}
N -400 -150 -370 -150 {
lab=vb1}
N -400 -200 -380 -200 {
lab=vin}
N 60 -200 100 -200 {
lab=be}
N 270 -150 290 -150 {
lab=vb1}
N 270 -130 290 -130 {
lab=vb2}
N 630 -110 630 -90 {
lab=GND}
N 630 -190 630 -170 {
lab=VDD}
N 810 -110 810 -90 {
lab=GND}
N 810 -190 810 -170 {
lab=vin}
N 690 -110 690 -90 {
lab=GND}
N 690 -190 690 -170 {
lab=vb1}
N 750 -110 750 -90 {
lab=GND}
N 750 -190 750 -170 {
lab=vb2}
N 160 -200 180 -200 {
lab=te}
N 120 -80 540 -80 {
lab=vpost}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -50 -60 0 0 {name=x1}
C {sky130_fd_pr/rram_v0.sym} 130 -200 1 0 {name=R1
model=rram_v0
spiceprefix=X
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} 610 -60 0 0 {name=x2}
C {devices/ammeter.sym} 10 -200 3 0 {name=vread1 savecurrent=true}
C {sky130_fd_pr/diode.sym} -70 -200 1 0 {name=D1
model=diode_pw2nd_05v5
area=1e12
pj=4e6
}
C {sky130_fd_pr/nfet_01v8.sym} 80 -130 0 1 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 380 -290 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -280 -290 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 380 -110 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -280 -110 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 60 -80 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/diode.sym} 490 -340 3 0 {name=D2
model=diode_pw2nd_05v5
area=1e12
pj=4e6
}
C {devices/lab_pin.sym} -120 -200 1 0 {name=p7 sig_type=std_logic lab=vpre}
C {devices/lab_pin.sym} 540 -200 2 0 {name=p1 sig_type=std_logic lab=vpost}
C {devices/lab_pin.sym} -400 -200 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -400 -150 0 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -400 -130 0 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} 270 -150 0 0 {name=p5 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 270 -130 0 0 {name=p6 sig_type=std_logic lab=vb2}
C {devices/vsource.sym} 630 -140 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 630 -90 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 630 -190 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 810 -140 0 0 {name=V4 value=1.5}
C {devices/gnd.sym} 810 -90 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 810 -190 2 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 690 -140 0 0 {name=V2 value=0.45}
C {devices/gnd.sym} 690 -90 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 690 -190 2 0 {name=p9 sig_type=std_logic lab=vb1}
C {devices/vsource.sym} 750 -140 0 0 {name=V3 value=0.4}
C {devices/gnd.sym} 750 -90 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 750 -190 2 0 {name=p10 sig_type=std_logic lab=vb2}
C {devices/ammeter.sym} 210 -200 1 0 {name=vread2 savecurrent=true}
C {sky130_fd_pr/corner.sym} 730 -360 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 610 -360 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 860 -360 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  write STDP_2_LIF.raw
.endc
" }
C {devices/launcher.sym} 920 -230 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_2_LIF.raw tran"
}
C {devices/lab_pin.sym} 80 -200 1 0 {name=p11 sig_type=std_logic lab=be}
C {devices/lab_pin.sym} 170 -200 1 0 {name=p12 sig_type=std_logic lab=te}
