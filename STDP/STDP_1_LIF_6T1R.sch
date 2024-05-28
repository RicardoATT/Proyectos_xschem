v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 470 -280 1270 120 {flags=graph
y1=0.31
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
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 470 120 1270 520 {flags=graph
y1=-8.1e-07
y2=5.4e-05
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
node="\\"Iout (A);i(vmeas3)\\"
\\"Iin (A); i(vmeas)\\""
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 470 520 1270 920 {flags=graph
y1=2.6
y2=3.9
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


dataset=-1
unitx=1
logx=0
logy=0
color=7
node="\\"Thickness [nm]; 5 n.x2.xr1.n1#ngap -\\""}
N -580 -140 -580 -120 {
lab=GND}
N -580 -300 -580 -280 {
lab=VDD}
N -1050 -210 -1050 -190 {
lab=GND}
N -1050 -290 -1050 -270 {
lab=VDD}
N -990 -210 -990 -190 {
lab=GND}
N -990 -290 -990 -270 {
lab=vb1}
N -440 -210 -420 -210 {
lab=vout}
N -200 -210 -180 -210 {
lab=GND}
N -180 -230 -180 -210 {
lab=GND}
N -260 -270 -260 -250 {
lab=VDD}
N -200 -190 -180 -190 {
lab=#net1}
N -180 -130 -180 -110 {
lab=GND}
N -340 -210 -320 -210 {
lab=#net2}
N -260 -150 -260 -130 {
lab=GND}
N -680 -150 -670 -150 {
lab=vb1}
N -880 -50 -880 -30 {
lab=GND}
N -760 -230 -760 -210 {
lab=#net3}
N -760 -260 -750 -260 {
lab=VDD}
N -750 -290 -750 -260 {
lab=VDD}
N -760 -290 -750 -290 {
lab=VDD}
N -840 -260 -800 -260 {
lab=#net4}
N -880 -290 -760 -290 {
lab=VDD}
N -890 -260 -880 -260 {
lab=VDD}
N -890 -290 -890 -260 {
lab=VDD}
N -890 -290 -880 -290 {
lab=VDD}
N -880 -230 -880 -210 {
lab=#net4}
N -880 -210 -820 -210 {
lab=#net4}
N -820 -260 -820 -210 {
lab=#net4}
N -880 -210 -880 -190 {
lab=#net4}
N -700 -210 -680 -210 {
lab=#net5}
N -880 -130 -880 -110 {
lab=#net6}
N -420 -210 -400 -210 {
lab=vout}
C {devices/gnd.sym} -580 -120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -580 -300 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -1050 -240 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -1050 -190 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -1050 -290 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -990 -240 0 0 {name=V2 value=0.5}
C {devices/gnd.sym} -990 -190 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -990 -290 2 0 {name=p3 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} -680 -150 0 0 {name=p6 sig_type=std_logic lab=vb1}
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
tclcommand="xschem raw_read $netlist_dir/STDP_1_LIF_6T1R.raw tran"
}
C {devices/code_shown.sym} 120 150 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 50u
  write STDP_1_LIF_6T1R.raw
.endc
" }
C {devices/lab_pin.sym} -420 -210 1 0 {name=p7 sig_type=std_logic lab=vout}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -200 -30 0 0 {name=x2}
C {devices/gnd.sym} -180 -230 2 0 {name=l1 lab=GND}
C {devices/vdd.sym} -260 -270 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} -180 -110 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} -260 -130 0 0 {name=l9 lab=GND}
C {/home/ricardoatt/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} -340 -130 0 0 {name=x1}
C {devices/vdd.sym} -820 -290 0 0 {name=l8 lab=VDD}
C {devices/isource.sym} -880 -80 0 1 {name=I0 value="PULSE(0 3u 1n 1n 1n 5u 10u 5)"}
C {devices/gnd.sym} -880 -30 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -780 -260 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -860 -260 0 1 {name=M2
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
C {devices/ammeter.sym} -880 -160 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} -730 -210 3 1 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} -370 -210 3 1 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} -180 -160 0 0 {name=Vmeas3 savecurrent=true}
