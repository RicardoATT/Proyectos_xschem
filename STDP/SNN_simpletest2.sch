v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2400 -1200 -1600 -800 {flags=graph
y1=-0.079
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Vpre1 [V];vpre1\\"
\\"Vpre2 [V];vpre2\\"
\\"Vpres1 [V];vpres1\\"
\\"Vpres2 [V];vpres2\\""
color="4 6 8 9"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1600 -1200 -800 -800 {flags=graph
y1=-1.3e-07
y2=5.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color="10 11"
node="\\"Ipos1 (A);i(vmeas11)\\"
\\"Ipos2 (A);i(vmeas2)\\""}
B 2 -2400 -800 -1600 -400 {flags=graph
y1=-0.36
y2=2.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color=7
node="\\"Vpos [V];vpos2\\""}
B 2 -1600 -800 -800 -400 {flags=graph
y1=2.1
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color="10 11"
node="\\"Thickness1 [nm]; 5 n.x11.xr1.n1#ngap -\\"
\\"Thickness2 [nm]; 5 n.x21.xr1.n1#ngap -\\""}
B 2 -1600 -400 -800 0 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 8 11"
node="\\"Update Weights;uw\\"
\\"Training;training\\"
\\"Inference;inference\\""}
B 2 -2400 -400 -1600 0 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
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
B 2 -1600 -1600 -800 -1200 {flags=graph
y1=-1.3e-07
y2=5.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0





color=12
node="\\"Ip1 (A);i(vmeas4)\\""}
B 2 -2400 -1600 -1600 -1200 {flags=graph
y1=-0.079
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000114977
x2=0.000115365
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=12
node="\\"Vp1 [V];vp1\\""}
N -3970 -980 -3970 -960 {
lab=GND}
N -3970 -1060 -3970 -1040 {
lab=vdd_in}
N -3890 -980 -3890 -960 {
lab=GND}
N -3890 -1060 -3890 -1040 {
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
lab=vdd_in}
N -3130 -620 -3130 -590 {
lab=vdd_in}
N -3140 -620 -3130 -620 {
lab=vdd_in}
N -3220 -590 -3180 -590 {
lab=#net1}
N -3260 -620 -3140 -620 {
lab=vdd_in}
N -3270 -590 -3260 -590 {
lab=vdd_in}
N -3270 -620 -3270 -590 {
lab=vdd_in}
N -3270 -620 -3260 -620 {
lab=vdd_in}
N -3260 -560 -3260 -540 {
lab=#net1}
N -3260 -540 -3200 -540 {
lab=#net1}
N -3200 -590 -3200 -540 {
lab=#net1}
N -3340 -540 -3340 -520 {
lab=#net2}
N -3620 -980 -3620 -960 {
lab=GND}
N -3620 -1060 -3620 -1040 {
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
N -3970 -560 -3970 -540 {
lab=GND}
N -3970 -640 -3970 -620 {
lab=uw}
N -3970 -420 -3970 -400 {
lab=GND}
N -3970 -500 -3970 -480 {
lab=training}
N -2840 -540 -2830 -540 {
lab=vpre1}
N -2570 -160 -2570 -140 {
lab=GND}
N -2430 -160 -2430 -140 {
lab=vdd_pos}
N -3970 -280 -3970 -260 {
lab=GND}
N -3970 -360 -3970 -340 {
lab=inference}
N -3280 -540 -3260 -540 {
lab=#net1}
N -3970 -700 -3970 -680 {
lab=GND}
N -3970 -780 -3970 -760 {
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
N -3790 -700 -3790 -680 {
lab=GND}
N -3790 -780 -3790 -760 {
lab=ctrl2}
N -2790 -420 -2790 -400 {
lab=ctrl1}
N -3810 -840 -3810 -820 {
lab=GND}
N -3810 -920 -3810 -900 {
lab=vbias}
N -3800 -980 -3800 -960 {
lab=GND}
N -3800 -1060 -3800 -1040 {
lab=vdd_pos}
N -3710 -980 -3710 -960 {
lab=GND}
N -3710 -1060 -3710 -1040 {
lab=vdd_syn}
N -3510 -980 -3510 -960 {
lab=GND}
N -3510 -1060 -3510 -1040 {
lab=vdd_sw}
N -3430 -980 -3430 -960 {
lab=GND}
N -3430 -1060 -3430 -1040 {
lab=vdd_tg}
N -3970 -840 -3970 -820 {
lab=GND}
N -3970 -920 -3970 -900 {
lab=vb_pre}
N -3890 -840 -3890 -820 {
lab=GND}
N -3890 -920 -3890 -900 {
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
N -2790 -370 -2780 -370 {
lab=uw}
N -2790 -340 -2780 -340 {
lab=vbias}
N -2980 -990 -2980 -970 {
lab=GND}
N -2980 -1150 -2980 -1130 {
lab=vdd_pre}
N -3080 -1000 -3070 -1000 {
lab=vb_pre}
N -3340 -980 -3340 -960 {
lab=GND}
N -3140 -1080 -3140 -1060 {
lab=vc2}
N -3140 -1060 -3080 -1060 {
lab=vc2}
N -3140 -1110 -3130 -1110 {
lab=vdd_in}
N -3130 -1140 -3130 -1110 {
lab=vdd_in}
N -3140 -1140 -3130 -1140 {
lab=vdd_in}
N -3220 -1110 -3180 -1110 {
lab=#net6}
N -3260 -1140 -3140 -1140 {
lab=vdd_in}
N -3270 -1110 -3260 -1110 {
lab=vdd_in}
N -3270 -1140 -3270 -1110 {
lab=vdd_in}
N -3270 -1140 -3260 -1140 {
lab=vdd_in}
N -3260 -1080 -3260 -1060 {
lab=#net6}
N -3260 -1060 -3200 -1060 {
lab=#net6}
N -3200 -1110 -3200 -1060 {
lab=#net6}
N -3340 -1060 -3340 -1040 {
lab=#net7}
N -2560 -1000 -2560 -990 {
lab=GND}
N -2560 -1110 -2560 -1100 {
lab=vdd_syn}
N -2730 -1190 -2730 -1180 {
lab=GND}
N -2500 -1040 -2500 -1030 {
lab=#net8}
N -2540 -960 -2540 -930 {
lab=#net9}
N -2540 -960 -2500 -960 {
lab=#net9}
N -2500 -930 -2490 -930 {
lab=GND}
N -2500 -970 -2500 -960 {
lab=#net9}
N -2500 -900 -2500 -890 {
lab=pattern1}
N -2840 -1060 -2830 -1060 {
lab=vpre2}
N -3280 -1060 -3260 -1060 {
lab=#net6}
N -2730 -850 -2730 -840 {
lab=GND}
N -2680 -900 -2680 -890 {
lab=vpres2}
N -2790 -920 -2780 -920 {
lab=ctrl1}
N -2730 -1020 -2730 -1010 {
lab=GND}
N -2780 -1060 -2780 -1050 {
lab=vpre2}
N -2790 -1100 -2790 -1090 {
lab=ctrl2}
N -2790 -1090 -2780 -1090 {
lab=ctrl2}
N -2790 -940 -2790 -920 {
lab=ctrl1}
N -2730 -1130 -2730 -1100 {
lab=vdd_tg}
N -2730 -1300 -2730 -1270 {
lab=vdd_delay}
N -2730 -970 -2730 -930 {
lab=vdd_sw}
N -2790 -1230 -2790 -1220 {
lab=vpre2}
N -2670 -1230 -2670 -1220 {
lab=vpos2}
N -2680 -1070 -2680 -1060 {
lab=vpres2}
N -2620 -1070 -2620 -1060 {
lab=vpres2}
N -2500 -1070 -2500 -1060 {
lab=vpos2}
N -2790 -890 -2780 -890 {
lab=uw}
N -2790 -860 -2780 -860 {
lab=vbias}
C {devices/vsource.sym} -3970 -1010 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -3970 -960 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -3890 -1010 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -3890 -960 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -3890 -1060 2 0 {name=p9 sig_type=std_logic lab=vdd_pre}
C {devices/gnd.sym} -2980 -450 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -3080 -480 0 0 {name=p13 sig_type=std_logic lab=vb_pre}
C {devices/isource.sym} -3340 -490 0 0 {name=I1 value="PWL(0 0 14.9u 0 15u 3u 109.9u 3u 110u 0 114.9u 0 115u 3u)"}
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
C {sky130_fd_pr/corner.sym} -3240 -150 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {devices/code.sym} -3360 -150 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -3110 -150 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
  save all
  tran 100n 200u
  write SNN_simpletest.raw
.endc
" }
C {devices/launcher.sym} -3050 -20 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/SNN_simpletest.raw tran"
}
C {devices/lab_pin.sym} -3140 -540 0 0 {name=p10 sig_type=std_logic lab=vc1}
C {devices/vsource.sym} -3620 -1010 0 0 {name=V5 value=1.8}
C {devices/gnd.sym} -3620 -960 0 0 {name=l29 lab=GND}
C {devices/lab_pin.sym} -3620 -1060 2 0 {name=p16 sig_type=std_logic lab=vdd_delay}
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
C {devices/vsource.sym} -3970 -590 0 0 {name=V13 value="PWL(0 1.8 9.9u 1.8 10u 0)"}
C {devices/gnd.sym} -3970 -540 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} -3970 -640 2 0 {name=p65 sig_type=std_logic lab=uw}
C {devices/vsource.sym} -3970 -450 0 0 {name=V14 value="PWL(0 0 14.9u 0 15u 1.8 109.9u 1.8 110u 0)"}
C {devices/gnd.sym} -3970 -400 0 0 {name=l68 lab=GND}
C {devices/lab_pin.sym} -3970 -500 2 0 {name=p66 sig_type=std_logic lab=training}
C {devices/lab_pin.sym} -2830 -540 1 0 {name=p69 sig_type=std_logic lab=vpre1}
C {devices/vsource.sym} -3970 -310 0 0 {name=V15 value="PWL(0 0 114.9u 0 115u 1.8)"}
C {devices/gnd.sym} -3970 -260 0 0 {name=l69 lab=GND}
C {devices/lab_pin.sym} -3970 -360 2 0 {name=p73 sig_type=std_logic lab=inference}
C {devices/ammeter.sym} -3310 -540 1 0 {name=Vmeas1 savecurrent=true}
C {devices/lab_pin.sym} -2790 -420 2 0 {name=p74 sig_type=std_logic lab=ctrl1}
C {devices/vsource.sym} -3970 -730 0 0 {name=V11 value="PWL(0 1.8 9.9u 1.8 10u 0)"}
C {devices/gnd.sym} -3970 -680 0 0 {name=l72 lab=GND}
C {devices/lab_pin.sym} -3970 -780 2 0 {name=p75 sig_type=std_logic lab=ctrl1}
C {devices/gnd.sym} -2730 -320 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} -2680 -550 1 0 {name=p2 sig_type=std_logic lab=vpres1}
C {devices/lab_pin.sym} -2780 -530 3 0 {name=p5 sig_type=std_logic lab=vpre1}
C {devices/lab_pin.sym} -2790 -580 2 0 {name=p14 sig_type=std_logic lab=ctrl2}
C {devices/gnd.sym} -2730 -490 0 0 {name=l33 lab=GND}
C {devices/vsource.sym} -3790 -730 0 0 {name=V12 value="PWL(0 0 114.9u 0 115u 1.8)"}
C {devices/gnd.sym} -3790 -680 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} -3790 -780 2 0 {name=p17 sig_type=std_logic lab=ctrl2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/t_gate.sym} -2730 -540 0 0 {name=x7}
C {devices/vsource.sym} -3810 -870 0 0 {name=V10 value=0.5}
C {devices/gnd.sym} -3810 -820 0 0 {name=l75 lab=GND}
C {devices/lab_pin.sym} -3810 -920 2 0 {name=p82 sig_type=std_logic lab=vbias}
C {devices/vsource.sym} -3800 -1010 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -3800 -960 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -3800 -1060 2 0 {name=p6 sig_type=std_logic lab=vdd_pos}
C {devices/vsource.sym} -3710 -1010 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} -3710 -960 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -3710 -1060 2 0 {name=p7 sig_type=std_logic lab=vdd_syn}
C {devices/vsource.sym} -3510 -1010 0 0 {name=V6 value=1.8}
C {devices/gnd.sym} -3510 -960 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -3510 -1060 2 0 {name=p1 sig_type=std_logic lab=vdd_sw}
C {devices/vsource.sym} -3430 -1010 0 0 {name=V7 value=1.8}
C {devices/gnd.sym} -3430 -960 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -3430 -1060 2 0 {name=p3 sig_type=std_logic lab=vdd_tg}
C {devices/vsource.sym} -3970 -870 0 0 {name=V8 value=0.5}
C {devices/gnd.sym} -3970 -820 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -3970 -920 2 0 {name=p8 sig_type=std_logic lab=vb_pre}
C {devices/vsource.sym} -3890 -870 0 0 {name=V9 value=0.5}
C {devices/gnd.sym} -3890 -820 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -3890 -920 2 0 {name=p11 sig_type=std_logic lab=vb_pos}
C {devices/lab_pin.sym} -2980 -630 2 0 {name=p4 sig_type=std_logic lab=vdd_pre}
C {devices/lab_pin.sym} -2430 -140 3 0 {name=p12 sig_type=std_logic lab=vdd_pos}
C {devices/lab_pin.sym} -2560 -590 1 0 {name=p15 sig_type=std_logic lab=vdd_syn}
C {devices/lab_pin.sym} -2730 -780 0 0 {name=p18 sig_type=std_logic lab=vdd_delay}
C {devices/lab_pin.sym} -2730 -450 0 0 {name=p19 sig_type=std_logic lab=vdd_sw}
C {devices/lab_pin.sym} -2730 -610 0 0 {name=p20 sig_type=std_logic lab=vdd_tg}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -2730 -370 0 0 {name=x2}
C {devices/lab_pin.sym} -2790 -340 0 0 {name=p22 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} -3970 -1060 2 0 {name=p21 sig_type=std_logic lab=vdd_in}
C {devices/lab_pin.sym} -3200 -620 1 0 {name=p40 sig_type=std_logic lab=vdd_in}
C {devices/gnd.sym} -2980 -970 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -3080 -1000 0 0 {name=p23 sig_type=std_logic lab=vb_pre}
C {devices/isource.sym} -3340 -1010 0 0 {name=I2 value="PWL(0 0 14.9u 0 15u 3u 109.9u 3u 110u 0 114.9u 0 115u 3u)"}
C {devices/gnd.sym} -3340 -960 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -3160 -1110 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -3240 -1110 0 1 {name=M4
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
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Presynaptic_LIF_neuron.sym} -2780 -960 0 0 {name=x3}
C {devices/lab_pin.sym} -3140 -1060 0 0 {name=p25 sig_type=std_logic lab=vc2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -2500 -880 0 0 {name=x21}
C {devices/gnd.sym} -2560 -990 0 0 {name=l15 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/delay/delay.sym} -2550 -1110 0 0 {name=x6}
C {devices/lab_pin.sym} -2620 -1070 1 0 {name=p29 sig_type=std_logic lab=vpres2}
C {devices/lab_pin.sym} -2500 -1070 1 0 {name=p30 sig_type=std_logic lab=vpos2}
C {devices/gnd.sym} -2730 -1180 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -2670 -1220 3 0 {name=p31 sig_type=std_logic lab=vpos2}
C {devices/lab_pin.sym} -2790 -1220 3 0 {name=p32 sig_type=std_logic lab=vpre2}
C {devices/ammeter.sym} -2500 -1000 0 0 {name=Vmeas2 savecurrent=true}
C {sky130_fd_pr/nfet_01v8.sym} -2520 -930 0 0 {name=M5
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
C {devices/gnd.sym} -2490 -930 3 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -2500 -890 2 0 {name=p34 sig_type=std_logic lab=pattern1}
C {devices/lab_pin.sym} -2680 -900 1 0 {name=p35 sig_type=std_logic lab=vpres2}
C {devices/lab_pin.sym} -2790 -890 0 0 {name=p36 sig_type=std_logic lab=uw}
C {devices/lab_pin.sym} -2830 -1060 1 0 {name=p37 sig_type=std_logic lab=vpre2}
C {devices/ammeter.sym} -3310 -1060 1 0 {name=Vmeas3 savecurrent=true}
C {devices/lab_pin.sym} -2790 -940 2 0 {name=p38 sig_type=std_logic lab=ctrl1}
C {devices/gnd.sym} -2730 -840 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -2680 -1070 1 0 {name=p39 sig_type=std_logic lab=vpres2}
C {devices/lab_pin.sym} -2780 -1050 3 0 {name=p41 sig_type=std_logic lab=vpre2}
C {devices/lab_pin.sym} -2790 -1100 2 0 {name=p42 sig_type=std_logic lab=ctrl2}
C {devices/gnd.sym} -2730 -1010 0 0 {name=l19 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/t_gate.sym} -2730 -1060 0 0 {name=x8}
C {devices/lab_pin.sym} -2980 -1150 2 0 {name=p43 sig_type=std_logic lab=vdd_pre}
C {devices/lab_pin.sym} -2560 -1110 1 0 {name=p44 sig_type=std_logic lab=vdd_syn}
C {devices/lab_pin.sym} -2730 -1300 0 0 {name=p45 sig_type=std_logic lab=vdd_delay}
C {devices/lab_pin.sym} -2730 -970 0 0 {name=p47 sig_type=std_logic lab=vdd_sw}
C {devices/lab_pin.sym} -2730 -1130 0 0 {name=p48 sig_type=std_logic lab=vdd_tg}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -2730 -890 0 0 {name=x9}
C {devices/lab_pin.sym} -2790 -860 0 0 {name=p49 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} -3200 -1140 1 0 {name=p50 sig_type=std_logic lab=vdd_in}
