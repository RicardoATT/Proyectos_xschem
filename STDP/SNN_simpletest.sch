v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2400 -1200 -1600 -800 {flags=graph
y1=-0.0087
y2=1.8
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
node="\\"Vpre1 [V];vpre1\\"
\\"Vpres1 [V];vpres1\\""
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1600 -1200 -800 -800 {flags=graph
y1=5.1e-08
y2=3.4e-05
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



color="4 10"
node="\\"Ipre1 (A);i(vmeas1)\\"
\\"Ipost (A);i(vmeas)\\""}
B 2 -2400 -800 -1600 -400 {flags=graph
y1=-0.29
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


dataset=-1
unitx=1
logx=0
logy=0


color=7
node="\\"Vpos [V];vpos1\\""}
B 2 -1600 -800 -800 -400 {flags=graph
y1=2.2
y2=4.9
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
node="\\"Thickness1 [nm]; 5 n.x11.xr1.n1#ngap -\\""}
B 2 -2400 -400 -1600 0 {flags=graph
y1=0
y2=1.8
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
color="7 8 11 9"
node="\\"Update Weights;uw\\"
\\"Training;training\\"
\\"Inference;inference\\"
\\"e\\""}
B 2 -1600 -400 -800 0 {flags=graph
y1=0
y2=0.01
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

color="12 13"
node="\\"Control 1;ctrl1\\"
\\"Control 2;ctrl2\\""}
N -3480 -1080 -3480 -1060 {
lab=GND}
N -3480 -1160 -3480 -1140 {
lab=VDD}
N -3420 -1080 -3420 -1060 {
lab=GND}
N -3420 -1160 -3420 -1140 {
lab=vdd_pre}
N -2980 -470 -2980 -450 {
lab=GND}
N -2980 -630 -2980 -610 {
lab=vdd_pre}
N -3080 -480 -3070 -480 {
lab=vb_pre}
N -3340 -460 -3340 -440 {
lab=GND}
N -3140 -560 -3140 -540 {
lab=vc1}
N -3140 -540 -3080 -540 {
lab=vc1}
N -3140 -590 -3130 -590 {
lab=VDD}
N -3130 -620 -3130 -590 {
lab=VDD}
N -3140 -620 -3130 -620 {
lab=VDD}
N -3220 -590 -3180 -590 {
lab=#net1}
N -3260 -620 -3140 -620 {
lab=VDD}
N -3270 -590 -3260 -590 {
lab=VDD}
N -3270 -620 -3270 -590 {
lab=VDD}
N -3270 -620 -3260 -620 {
lab=VDD}
N -3260 -560 -3260 -540 {
lab=#net1}
N -3260 -540 -3200 -540 {
lab=#net1}
N -3200 -590 -3200 -540 {
lab=#net1}
N -3340 -540 -3340 -520 {
lab=#net2}
N -3150 -1080 -3150 -1060 {
lab=GND}
N -3150 -1160 -3150 -1140 {
lab=vdd_delay}
N -2560 -480 -2560 -470 {
lab=GND}
N -2560 -590 -2560 -580 {
lab=vdd_syn}
N -2730 -670 -2730 -660 {
lab=GND}
N -2500 -520 -2500 -510 {
lab=#net3}
N -2540 -440 -2540 -410 {
lab=#net4}
N -2540 -440 -2500 -440 {
lab=#net4}
N -2500 -410 -2490 -410 {
lab=GND}
N -2500 -450 -2500 -440 {
lab=#net4}
N -2500 -380 -2500 -370 {
lab=pattern1}
N -2560 -260 -2560 -250 {
lab=vb_pos}
N -2500 -270 -2500 -260 {
lab=#net5}
N -2500 -340 -2500 -330 {
lab=pattern1}
N -2500 -20 -2500 -10 {
lab=vp1}
N -3480 -660 -3480 -640 {
lab=GND}
N -3480 -740 -3480 -720 {
lab=uw}
N -3480 -520 -3480 -500 {
lab=GND}
N -3480 -600 -3480 -580 {
lab=training}
N -2840 -540 -2830 -540 {
lab=vpre1}
N -2570 -160 -2570 -140 {
lab=GND}
N -2430 -160 -2430 -140 {
lab=vdd_pos}
N -3480 -380 -3480 -360 {
lab=GND}
N -3480 -460 -3480 -440 {
lab=inference}
N -3280 -540 -3260 -540 {
lab=#net1}
N -3480 -800 -3480 -780 {
lab=GND}
N -3480 -880 -3480 -860 {
lab=ctrl1}
N -2730 -330 -2730 -320 {
lab=GND}
N -2680 -380 -2680 -370 {
lab=vpres1}
N -2790 -400 -2780 -400 {
lab=ctrl1}
N -2730 -500 -2730 -490 {
lab=GND}
N -2780 -540 -2780 -530 {
lab=vpre1}
N -2790 -580 -2790 -570 {
lab=ctrl2}
N -2790 -570 -2780 -570 {
lab=ctrl2}
N -3300 -800 -3300 -780 {
lab=GND}
N -3300 -880 -3300 -860 {
lab=ctrl2}
N -2790 -420 -2790 -400 {
lab=ctrl1}
N -3320 -940 -3320 -920 {
lab=GND}
N -3320 -1020 -3320 -1000 {
lab=vbias}
N -3330 -1080 -3330 -1060 {
lab=GND}
N -3330 -1160 -3330 -1140 {
lab=vdd_pos}
N -3240 -1080 -3240 -1060 {
lab=GND}
N -3240 -1160 -3240 -1140 {
lab=vdd_syn}
N -3040 -1080 -3040 -1060 {
lab=GND}
N -3040 -1160 -3040 -1140 {
lab=vdd_sw}
N -2960 -1080 -2960 -1060 {
lab=GND}
N -2960 -1160 -2960 -1140 {
lab=vdd_tg}
N -3480 -940 -3480 -920 {
lab=GND}
N -3480 -1020 -3480 -1000 {
lab=vb_pre}
N -3400 -940 -3400 -920 {
lab=GND}
N -3400 -1020 -3400 -1000 {
lab=vb_pos}
N -2730 -610 -2730 -580 {
lab=vdd_tg}
N -2730 -780 -2730 -750 {
lab=vdd_delay}
N -2730 -450 -2730 -410 {
lab=vdd_sw}
N -2790 -710 -2790 -700 {
lab=vpre1}
N -2670 -710 -2670 -700 {
lab=vpos1}
N -2680 -550 -2680 -540 {
lab=vpres1}
N -2620 -550 -2620 -540 {
lab=vpres1}
N -2500 -550 -2500 -540 {
lab=vpos1}
N -3220 -800 -3220 -780 {
lab=GND}
N -3220 -880 -3220 -860 {
lab=vpre}
N -2790 -370 -2780 -370 {
lab=uw}
N -2790 -340 -2780 -340 {
lab=vbias}
C {devices/vsource.sym} -3480 -1110 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -3480 -1060 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} -3480 -1160 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} -3420 -1110 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -3420 -1060 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -3420 -1160 2 0 {name=p9 sig_type=std_logic lab=vdd_pre}
C {devices/gnd.sym} -2980 -450 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -3080 -480 0 0 {name=p13 sig_type=std_logic lab=vb_pre}
C {devices/vdd.sym} -3200 -620 0 0 {name=l19 lab=VDD}
C {devices/isource.sym} -3340 -490 0 0 {name=I1 value="PWL(0 0 14.9u 0 15u 3u)"}
C {devices/gnd.sym} -3340 -440 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -3160 -590 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -3240 -590 0 1 {name=M1
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
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Presynaptic_LIF_neuron.sym} -2780 -440 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} -3220 -380 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code.sym} -3340 -380 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -3090 -380 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
  save all
  tran 50n 100u
  write SNN_simpletest.raw
.endc
" }
C {devices/launcher.sym} -3030 -250 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/SNN_simpletest.raw tran"
}
C {devices/lab_pin.sym} -3140 -540 0 0 {name=p10 sig_type=std_logic lab=vc1}
C {devices/vsource.sym} -3150 -1110 0 0 {name=V5 value=0.45}
C {devices/gnd.sym} -3150 -1060 0 0 {name=l29 lab=GND}
C {devices/lab_pin.sym} -3150 -1160 2 0 {name=p16 sig_type=std_logic lab=vdd_delay}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -2500 -360 0 0 {name=x11}
C {devices/gnd.sym} -2560 -470 0 0 {name=l39 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/delay/delay.sym} -2550 -590 0 0 {name=x10}
C {devices/lab_pin.sym} -2620 -550 1 0 {name=p26 sig_type=std_logic lab=vpres1}
C {devices/lab_pin.sym} -2500 -550 1 0 {name=p27 sig_type=std_logic lab=vpos1}
C {devices/gnd.sym} -2730 -660 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} -2670 -700 3 0 {name=p28 sig_type=std_logic lab=vpos1}
C {devices/lab_pin.sym} -2790 -700 3 0 {name=p33 sig_type=std_logic lab=vpre1}
C {devices/ammeter.sym} -2500 -480 0 0 {name=Vmeas11 savecurrent=true}
C {sky130_fd_pr/nfet_01v8.sym} -2520 -410 0 0 {name=M11
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
C {devices/gnd.sym} -2490 -410 3 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -2500 -370 2 0 {name=p46 sig_type=std_logic lab=pattern1}
C {devices/lab_pin.sym} -2680 -380 1 0 {name=p24 sig_type=std_logic lab=vpres1}
C {devices/lab_pin.sym} -2790 -370 0 0 {name=p53 sig_type=std_logic lab=uw}
C {devices/lab_pin.sym} -2560 -260 0 0 {name=p59 sig_type=std_logic lab=vb_pos}
C {devices/gnd.sym} -2570 -140 0 0 {name=l63 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Postsynaptic_LIF_neuron.sym} -2600 90 1 0 {name=x4}
C {devices/ammeter.sym} -2500 -300 0 0 {name=Vmeas4 savecurrent=true}
C {devices/lab_pin.sym} -2500 -340 2 0 {name=p60 sig_type=std_logic lab=pattern1}
C {devices/lab_pin.sym} -2500 -10 2 0 {name=p61 sig_type=std_logic lab=vp1}
C {devices/vsource.sym} -3480 -690 0 0 {name=V13 value="PWL(0 1.8 9.9u 1.8 10u 0)"}
C {devices/gnd.sym} -3480 -640 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} -3480 -740 2 0 {name=p65 sig_type=std_logic lab=uw}
C {devices/vsource.sym} -3480 -550 0 0 {name=V14 value=0}
C {devices/gnd.sym} -3480 -500 0 0 {name=l68 lab=GND}
C {devices/lab_pin.sym} -3480 -600 2 0 {name=p66 sig_type=std_logic lab=training}
C {devices/lab_pin.sym} -2830 -540 1 0 {name=p69 sig_type=std_logic lab=vpre1}
C {devices/vsource.sym} -3480 -410 0 0 {name=V15 value=0}
C {devices/gnd.sym} -3480 -360 0 0 {name=l69 lab=GND}
C {devices/lab_pin.sym} -3480 -460 2 0 {name=p73 sig_type=std_logic lab=inference}
C {devices/ammeter.sym} -3310 -540 1 0 {name=Vmeas1 savecurrent=true}
C {devices/lab_pin.sym} -2790 -420 2 0 {name=p74 sig_type=std_logic lab=ctrl1}
C {devices/vsource.sym} -3480 -830 0 0 {name=V11 value="PWL(0 1.8 9.9u 1.8 10u 0)"}
C {devices/gnd.sym} -3480 -780 0 0 {name=l72 lab=GND}
C {devices/lab_pin.sym} -3480 -880 2 0 {name=p75 sig_type=std_logic lab=ctrl1}
C {devices/gnd.sym} -2730 -320 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} -2680 -550 1 0 {name=p2 sig_type=std_logic lab=vpres1}
C {devices/lab_pin.sym} -2780 -530 3 0 {name=p5 sig_type=std_logic lab=vpre1}
C {devices/lab_pin.sym} -2790 -580 2 0 {name=p14 sig_type=std_logic lab=ctrl2}
C {devices/gnd.sym} -2730 -490 0 0 {name=l33 lab=GND}
C {devices/vsource.sym} -3300 -830 0 0 {name=V12 value=0}
C {devices/gnd.sym} -3300 -780 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} -3300 -880 2 0 {name=p17 sig_type=std_logic lab=ctrl2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/t_gate.sym} -2730 -540 0 0 {name=x7}
C {devices/vsource.sym} -3320 -970 0 0 {name=V10 value=0.5}
C {devices/gnd.sym} -3320 -920 0 0 {name=l75 lab=GND}
C {devices/lab_pin.sym} -3320 -1020 2 0 {name=p82 sig_type=std_logic lab=vbias}
C {devices/vsource.sym} -3330 -1110 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -3330 -1060 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -3330 -1160 2 0 {name=p6 sig_type=std_logic lab=vdd_pos}
C {devices/vsource.sym} -3240 -1110 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} -3240 -1060 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -3240 -1160 2 0 {name=p7 sig_type=std_logic lab=vdd_syn}
C {devices/vsource.sym} -3040 -1110 0 0 {name=V6 value=0.45}
C {devices/gnd.sym} -3040 -1060 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -3040 -1160 2 0 {name=p1 sig_type=std_logic lab=vdd_sw}
C {devices/vsource.sym} -2960 -1110 0 0 {name=V7 value=0.45}
C {devices/gnd.sym} -2960 -1060 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -2960 -1160 2 0 {name=p3 sig_type=std_logic lab=vdd_tg}
C {devices/vsource.sym} -3480 -970 0 0 {name=V8 value=0.5}
C {devices/gnd.sym} -3480 -920 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -3480 -1020 2 0 {name=p8 sig_type=std_logic lab=vb_pre}
C {devices/vsource.sym} -3400 -970 0 0 {name=V9 value=0.5}
C {devices/gnd.sym} -3400 -920 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -3400 -1020 2 0 {name=p11 sig_type=std_logic lab=vb_pos}
C {devices/lab_pin.sym} -2980 -630 2 0 {name=p4 sig_type=std_logic lab=vdd_pre}
C {devices/lab_pin.sym} -2430 -140 3 0 {name=p12 sig_type=std_logic lab=vdd_pos}
C {devices/lab_pin.sym} -2560 -590 1 0 {name=p15 sig_type=std_logic lab=vdd_syn}
C {devices/lab_pin.sym} -2730 -780 0 0 {name=p18 sig_type=std_logic lab=vdd_delay}
C {devices/lab_pin.sym} -2730 -450 0 0 {name=p19 sig_type=std_logic lab=vdd_sw}
C {devices/lab_pin.sym} -2730 -610 0 0 {name=p20 sig_type=std_logic lab=vdd_tg}
C {devices/vsource.sym} -3220 -830 0 0 {name=V16 value="PWL(0 0 14.9u 0 15u 1.8)"}
C {devices/gnd.sym} -3220 -780 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -3220 -880 2 0 {name=p21 sig_type=std_logic lab=vpre}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -2730 -370 0 0 {name=x2}
C {devices/lab_pin.sym} -2790 -340 0 0 {name=p22 sig_type=std_logic lab=vbias}
