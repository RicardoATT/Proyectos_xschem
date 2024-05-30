v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -440 -40 360 360 {flags=graph
y1=-0.13
y2=1.9
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
node="vpre1
vpre2
vpos"
color="4 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 360 -40 1160 360 {flags=graph
y1=3e-09
y2=2.2e-05
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



color="4 7 6"
node="\\"Ipre1 (A);i(vmeas1)\\"
\\"Ipre2 (A);i(vmeas2)\\"
\\"Ipre3 (A);i(vmeas3)\\""}
B 2 -440 360 360 760 {flags=graph
y1=3.3
y2=4.7
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
node="\\"Thickness [nm]; 5 n.x4.xr1.n1#ngap -\\""}
N 600 -140 600 -120 {
lab=GND}
N 600 -220 600 -200 {
lab=VDD}
N 660 -140 660 -120 {
lab=GND}
N 660 -220 660 -200 {
lab=vb1}
N -80 -170 -80 -150 {
lab=GND}
N -80 -330 -80 -310 {
lab=VDD}
N 60 -240 80 -240 {
lab=vpre1}
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
N 80 -240 100 -240 {
lab=vpre1}
N 370 -270 370 -220 {
lab=VDD}
N 400 -220 420 -220 {
lab=#net3}
N 720 -140 720 -120 {
lab=GND}
N 720 -220 720 -200 {
lab=vb2}
N 160 -180 160 -160 {
lab=GND}
N -80 -490 -80 -470 {
lab=GND}
N -80 -650 -80 -630 {
lab=VDD}
N 60 -560 80 -560 {
lab=vpre2}
N 160 -620 160 -600 {
lab=VDD}
N -180 -500 -170 -500 {
lab=vb2}
N -360 -480 -360 -460 {
lab=GND}
N -240 -580 -240 -560 {
lab=#net4}
N -240 -560 -180 -560 {
lab=#net4}
N -240 -610 -230 -610 {
lab=VDD}
N -230 -640 -230 -610 {
lab=VDD}
N -240 -640 -230 -640 {
lab=VDD}
N -320 -610 -280 -610 {
lab=#net5}
N -360 -640 -240 -640 {
lab=VDD}
N -370 -610 -360 -610 {
lab=VDD}
N -370 -640 -370 -610 {
lab=VDD}
N -370 -640 -360 -640 {
lab=VDD}
N -360 -580 -360 -560 {
lab=#net5}
N -360 -560 -300 -560 {
lab=#net5}
N -300 -610 -300 -560 {
lab=#net5}
N -360 -560 -360 -540 {
lab=#net5}
N 80 -560 100 -560 {
lab=vpre2}
N 160 -500 160 -480 {
lab=GND}
N 370 -590 370 -540 {
lab=VDD}
N 400 -540 420 -540 {
lab=#net6}
N 480 -540 500 -540 {
lab=#net7}
N 480 -220 500 -220 {
lab=#net7}
N 500 -140 500 -120 {
lab=GND}
N 500 -220 500 -200 {
lab=#net7}
N 500 -540 500 -220 {
lab=#net7}
N 370 -180 370 -160 {
lab=GND}
N 370 -500 370 -480 {
lab=GND}
N 220 -560 240 -560 {
lab=GND}
N 240 -560 240 -520 {
lab=GND}
N 220 -540 340 -540 {
lab=#net8}
N 220 -240 240 -240 {
lab=GND}
N 240 -240 240 -200 {
lab=GND}
N 220 -220 340 -220 {
lab=#net9}
C {devices/vsource.sym} 600 -170 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 600 -120 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 600 -220 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 660 -170 0 0 {name=V2 value=0.45}
C {devices/gnd.sym} 660 -120 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 660 -220 2 0 {name=p9 sig_type=std_logic lab=vb1}
C {sky130_fd_pr/corner.sym} 550 470 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 430 470 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 680 470 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 20n 100u
  write STDP_2_LIF_6T1R_adder.raw
.endc
" }
C {devices/launcher.sym} 740 600 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_2_LIF_6T1R_adder.raw tran"
}
C {devices/gnd.sym} -80 -150 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} -80 -330 0 0 {name=l14 lab=VDD}
C {devices/lab_pin.sym} -180 -180 0 0 {name=p13 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 80 -240 1 0 {name=p14 sig_type=std_logic lab=vpre1}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} 220 -60 0 0 {name=x4}
C {devices/vdd.sym} 160 -300 0 0 {name=l16 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} 160 -160 0 0 {name=x1}
C {devices/vdd.sym} -300 -320 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -360 -190 0 1 {name=I0 value="PULSE(0 3u 10n 10n 10n 5u 10u 10)"}
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
C {devices/gnd.sym} 160 -160 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 370 -270 0 0 {name=l4 lab=VDD}
C {devices/ammeter.sym} 450 -220 3 0 {name=Vmeas1 savecurrent=true}
C {devices/vsource.sym} 720 -170 0 0 {name=V3 value=0.45}
C {devices/gnd.sym} 720 -120 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 720 -220 2 0 {name=p3 sig_type=std_logic lab=vb2}
C {devices/gnd.sym} -80 -470 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} -80 -650 0 0 {name=l10 lab=VDD}
C {devices/lab_pin.sym} -180 -500 0 0 {name=p4 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} 80 -560 1 0 {name=p5 sig_type=std_logic lab=vpre2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} 220 -380 0 0 {name=x5}
C {devices/vdd.sym} 160 -620 0 0 {name=l11 lab=VDD}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/LIF_neuron_Vohra_CC.sym} 160 -480 0 0 {name=x2}
C {devices/vdd.sym} -300 -640 0 0 {name=l12 lab=VDD}
C {devices/isource.sym} -360 -510 0 1 {name=I1 value="PULSE(0 3u 10n 10n 10n 5u 10u 5)"}
C {devices/gnd.sym} -360 -460 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -260 -610 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -340 -610 0 1 {name=M5
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
C {devices/gnd.sym} 160 -480 0 0 {name=l17 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 370 -520 3 0 {name=M6
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
C {devices/vdd.sym} 370 -590 0 0 {name=l18 lab=VDD}
C {devices/ammeter.sym} 450 -540 3 1 {name=Vmeas2 savecurrent=true}
C {devices/gnd.sym} 500 -120 0 0 {name=l1 lab=GND}
C {devices/ammeter.sym} 500 -170 0 0 {name=Vmeas3 savecurrent=true}
C {devices/gnd.sym} 370 -160 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 370 -480 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 240 -520 0 0 {name=l23 lab=GND}
C {devices/gnd.sym} 240 -200 0 0 {name=l24 lab=GND}
