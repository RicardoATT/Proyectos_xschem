v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -440 -40 360 360 {flags=graph
y1=0.1
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.06584e-07
x2=3.23234e-06
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
y1=-1.39801e-07
y2=1.36256e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.06584e-07
x2=3.23234e-06
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
x1=2.06584e-07
x2=3.23234e-06
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
N -40 -230 -20 -230 {
lab=#net1}
N 60 -230 60 -190 {
lab=be}
N 40 -230 60 -230 {
lab=be}
N 740 -230 760 -230 {
lab=vpost}
N -280 -320 -280 -300 {
lab=VDD}
N 600 -320 600 -300 {
lab=VDD}
N 600 -160 600 -140 {
lab=GND}
N -280 -160 -280 -140 {
lab=GND}
N 60 -130 60 -110 {
lab=GND}
N 740 -370 760 -370 {
lab=vpost}
N 760 -370 760 -230 {
lab=vpost}
N 50 -160 60 -160 {
lab=GND}
N 50 -160 50 -130 {
lab=GND}
N 50 -130 60 -130 {
lab=GND}
N -400 -160 -370 -160 {
lab=vb2}
N -400 -180 -370 -180 {
lab=vb1}
N -400 -230 -380 -230 {
lab=vin}
N 490 -180 510 -180 {
lab=vb1}
N 490 -160 510 -160 {
lab=vb2}
N 850 -140 850 -120 {
lab=GND}
N 850 -220 850 -200 {
lab=VDD}
N 1030 -140 1030 -120 {
lab=GND}
N 1030 -220 1030 -200 {
lab=vin}
N 910 -140 910 -120 {
lab=GND}
N 910 -220 910 -200 {
lab=vb1}
N 970 -140 970 -120 {
lab=GND}
N 970 -220 970 -200 {
lab=vb2}
N -110 -270 -70 -270 {
lab=vpre}
N -110 -270 -110 -230 {
lab=vpre}
N 710 -410 760 -410 {
lab=vpost}
N 760 -410 760 -370 {
lab=vpost}
N 710 -370 710 -350 {
lab=GND}
N -70 -230 -70 -210 {
lab=GND}
N 100 -160 120 -160 {
lab=vpost}
N 120 -160 120 -80 {
lab=vpost}
N 760 -230 760 -80 {
lab=vpost}
N 380 -230 400 -230 {
lab=te}
N 200 -230 240 -230 {
lab=te}
N 60 -230 100 -230 {
lab=be}
N 100 -230 140 -230 {
lab=be}
N 120 -80 760 -80 {
lab=vpost}
N 260 -370 260 -230 {
lab=te}
N 260 -370 680 -370 {
lab=te}
N -110 -230 -100 -230 {
lab=vpre}
N -120 -230 -110 -230 {
lab=vpre}
N -130 -230 -120 -230 {
lab=vpre}
N -140 -230 -130 -230 {
lab=vpre}
N 460 -230 500 -230 {
lab=#net2}
N 240 -230 260 -230 {
lab=te}
N 260 -230 380 -230 {
lab=te}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} -50 -90 0 0 {name=x1}
C {sky130_fd_pr/rram_v0.sym} 170 -230 1 0 {name=R1
model=rram_v0
spiceprefix=X
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra.sym} 830 -90 0 0 {name=x2}
C {devices/ammeter.sym} 10 -230 3 0 {name=vread1 savecurrent=true}
C {sky130_fd_pr/nfet_01v8.sym} 80 -160 0 1 {name=M1
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
C {devices/vdd.sym} 600 -320 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -280 -320 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 600 -140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -280 -140 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 60 -110 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -120 -230 1 0 {name=p7 sig_type=std_logic lab=vpre}
C {devices/lab_pin.sym} 760 -230 2 0 {name=p1 sig_type=std_logic lab=vpost}
C {devices/lab_pin.sym} -400 -230 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -400 -180 0 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -400 -160 0 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} 490 -180 0 0 {name=p5 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 490 -160 0 0 {name=p6 sig_type=std_logic lab=vb2}
C {devices/vsource.sym} 850 -170 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 850 -120 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 850 -220 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 1030 -170 0 0 {name=V4 value=1.5}
C {devices/gnd.sym} 1030 -120 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1030 -220 2 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 910 -170 0 0 {name=V2 value=0.45}
C {devices/gnd.sym} 910 -120 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 910 -220 2 0 {name=p9 sig_type=std_logic lab=vb1}
C {devices/vsource.sym} 970 -170 0 0 {name=V3 value=0.4}
C {devices/gnd.sym} 970 -120 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 970 -220 2 0 {name=p10 sig_type=std_logic lab=vb2}
C {devices/ammeter.sym} 430 -230 1 0 {name=vread2 savecurrent=true}
C {sky130_fd_pr/corner.sym} 950 -390 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 830 -390 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 1080 -390 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  write STDP_2_LIF.raw
.endc
" }
C {devices/launcher.sym} 1140 -260 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_2_LIF.raw tran"
}
C {devices/lab_pin.sym} 100 -230 1 0 {name=p11 sig_type=std_logic lab=be}
C {devices/lab_pin.sym} 240 -230 1 0 {name=p12 sig_type=std_logic lab=te}
C {sky130_fd_pr/nfet_01v8.sym} -70 -250 3 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 710 -390 1 0 {name=M3
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
C {devices/gnd.sym} -70 -210 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 710 -350 0 0 {name=l12 lab=GND}
