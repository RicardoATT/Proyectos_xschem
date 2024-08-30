v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1940 -1200 -1140 -800 {flags=graph
y1=-0.061
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Vn_out1 [V];vn_out1\\"
\\"Vpre1 [V];vpre1\\""
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1140 -1200 -340 -800 {flags=graph
y1=5.1e-08
y2=3.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017
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
B 2 -1940 -800 -1140 -400 {flags=graph
y1=-0.34
y2=2.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017
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
B 2 -1140 -800 -340 -400 {flags=graph
y1=2.2
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color="10 12"
node="\\"Thickness1 [nm]; 5 n.x11.xr1.n1#ngap -\\"
\\"Thickness2 [nm]; 5 n.x4.xr1.n1#ngap -\\""}
B 2 -1140 -400 -340 0 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017
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
B 2 -1940 -400 -1140 0 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017
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
N -3400 -1080 -3400 -1060 {
lab=GND}
N -3400 -1160 -3400 -1140 {
lab=vdd_pre}
N -2980 -470 -2980 -450 {
lab=GND}
N -2980 -630 -2980 -610 {
lab=vdd_pre}
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
N -3220 -1080 -3220 -1060 {
lab=GND}
N -3220 -1160 -3220 -1140 {
lab=vdd_delay}
N -2560 -480 -2560 -470 {
lab=GND}
N -2560 -590 -2560 -580 {
lab=vdd_syn1}
N -2730 -670 -2730 -660 {
lab=GND}
N -2500 -520 -2500 -510 {
lab=#net3}
N -2500 -410 -2490 -410 {
lab=GND}
N -2500 -450 -2500 -440 {
lab=#net4}
N -2500 -380 -2500 -370 {
lab=pattern1}
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
lab=vn_out1}
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
lab=vpre1}
N -2790 -400 -2780 -400 {
lab=ctrl1}
N -2730 -500 -2730 -490 {
lab=GND}
N -2780 -540 -2780 -530 {
lab=vn_out1}
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
lab=vb_rpd}
N -3310 -1080 -3310 -1060 {
lab=GND}
N -3310 -1160 -3310 -1140 {
lab=vdd_pos}
N -2960 -1080 -2960 -1060 {
lab=GND}
N -2960 -1160 -2960 -1140 {
lab=vdd_syn2}
N -3110 -1080 -3110 -1060 {
lab=GND}
N -3110 -1160 -3110 -1140 {
lab=vdd_sw}
N -3030 -1080 -3030 -1060 {
lab=GND}
N -3030 -1160 -3030 -1140 {
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
lab=vn_out1}
N -2670 -710 -2670 -700 {
lab=vpos1}
N -2680 -550 -2680 -540 {
lab=vpre1}
N -2620 -550 -2620 -540 {
lab=vpre1}
N -2500 -550 -2500 -540 {
lab=vpos1}
N -2790 -370 -2780 -370 {
lab=uw}
N -2790 -340 -2780 -340 {
lab=vb_rpd}
N -3480 -1080 -3480 -1060 {
lab=GND}
N -3480 -1160 -3480 -1140 {
lab=vdd_in}
N -3080 -500 -3070 -500 {
lab=vb_pre}
N -3070 -590 -3070 -580 {
lab=vlky}
N -3240 -940 -3240 -920 {
lab=GND}
N -3240 -1020 -3240 -1000 {
lab=vlky}
N -2540 -260 -2540 -250 {
lab=vb_pos}
N -2570 -260 -2570 -250 {
lab=inh1}
N -2460 -260 -2460 -250 {
lab=vlky}
N -3080 -940 -3080 -920 {
lab=GND}
N -3080 -1020 -3080 -1000 {
lab=ctrl_pos}
N -3160 -940 -3160 -920 {
lab=GND}
N -3160 -1020 -3160 -1000 {
lab=vinh}
N -2700 -230 -2690 -230 {
lab=inh1}
N -2730 -240 -2730 -230 {
lab=GND}
N -2730 -190 -2730 -180 {
lab=inh_d}
N -2770 -230 -2760 -230 {
lab=vinh}
N -2900 -940 -2900 -920 {
lab=GND}
N -2900 -1020 -2900 -1000 {
lab=inh_d}
N -2550 -410 -2540 -410 {
lab=ctrl_pos}
N -2340 -480 -2340 -470 {
lab=GND}
N -2340 -590 -2340 -580 {
lab=vdd_syn2}
N -2280 -520 -2280 -510 {
lab=#net6}
N -2280 -410 -2270 -410 {
lab=GND}
N -2280 -450 -2280 -440 {
lab=#net7}
N -2280 -380 -2280 -370 {
lab=pattern2}
N -2280 -270 -2280 -260 {
lab=#net8}
N -2280 -340 -2280 -330 {
lab=pattern2}
N -2280 -20 -2280 -10 {
lab=vp2}
N -2350 -160 -2350 -140 {
lab=GND}
N -2210 -160 -2210 -140 {
lab=vdd_pos}
N -2400 -550 -2400 -540 {
lab=vpre1}
N -2280 -550 -2280 -540 {
lab=vpos1}
N -2320 -260 -2320 -250 {
lab=vb_pos}
N -2350 -260 -2350 -250 {
lab=inh2}
N -2240 -260 -2240 -250 {
lab=vlky}
N -2330 -410 -2320 -410 {
lab=ctrl_pos}
N -2700 -80 -2690 -80 {
lab=inh2}
N -2730 -90 -2730 -80 {
lab=GND}
N -2730 -40 -2730 -30 {
lab=inh_d}
N -2770 -80 -2760 -80 {
lab=vinh}
N -2780 -1080 -2780 -1060 {
lab=GND}
N -2780 -1160 -2780 -1140 {
lab=vdd_syn1}
C {devices/vsource.sym} -3400 -1110 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -3400 -1060 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -3400 -1160 2 0 {name=p9 sig_type=std_logic lab=vdd_pre}
C {devices/gnd.sym} -2980 -450 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -3080 -500 0 0 {name=p13 sig_type=std_logic lab=vb_pre}
C {devices/isource.sym} -3340 -490 0 0 {name=I1 value="PWL(0 0 34.9u 0 35u 5u 94.9u 5u 95u 0 99.9u 0 100u 5u 164.9u 5u 165u 0)"}
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
.param Lp_delay=3.5
.param Wp_delay=0.45
.param Ln_delay=3.5
.param Wn_delay=0.45
.param L_pre=0.15
.param W_pre=5
.param L_pos=0.15
.param W_pos=5
.control
  save all
  tran 1n 170u
  write SNN_simpletest.raw
.endc
" }
C {devices/launcher.sym} -2440 -830 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/SNN_simpletest.raw tran"
}
C {devices/lab_pin.sym} -3140 -540 0 0 {name=p10 sig_type=std_logic lab=vc1}
C {devices/vsource.sym} -3220 -1110 0 0 {name=V5 value=1.8}
C {devices/gnd.sym} -3220 -1060 0 0 {name=l29 lab=GND}
C {devices/lab_pin.sym} -3220 -1160 2 0 {name=p16 sig_type=std_logic lab=vdd_delay}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -2500 -360 0 0 {name=x11}
C {devices/gnd.sym} -2560 -470 0 0 {name=l39 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/delay/delay.sym} -2550 -590 0 0 {name=x10}
C {devices/lab_pin.sym} -2620 -550 1 0 {name=p26 sig_type=std_logic lab=vpre1}
C {devices/lab_pin.sym} -2500 -550 1 0 {name=p27 sig_type=std_logic lab=vpos1}
C {devices/gnd.sym} -2730 -660 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} -2670 -700 3 0 {name=p28 sig_type=std_logic lab=vpos1}
C {devices/lab_pin.sym} -2790 -700 3 0 {name=p33 sig_type=std_logic lab=vn_out1}
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
C {devices/lab_pin.sym} -2680 -380 1 0 {name=p24 sig_type=std_logic lab=vpre1}
C {devices/lab_pin.sym} -2790 -370 0 0 {name=p53 sig_type=std_logic lab=uw}
C {devices/lab_pin.sym} -2540 -260 1 0 {name=p59 sig_type=std_logic lab=vb_pos}
C {devices/gnd.sym} -2570 -140 0 0 {name=l63 lab=GND}
C {devices/ammeter.sym} -2500 -300 0 0 {name=Vmeas4 savecurrent=true}
C {devices/lab_pin.sym} -2500 -340 2 0 {name=p60 sig_type=std_logic lab=pattern1}
C {devices/lab_pin.sym} -2500 -10 2 0 {name=p61 sig_type=std_logic lab=vp1}
C {devices/vsource.sym} -3480 -690 0 0 {name=V13 value="PWL(0 1.8 29.9u 1.8 30u 0)"}
C {devices/gnd.sym} -3480 -640 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} -3480 -740 2 0 {name=p65 sig_type=std_logic lab=uw}
C {devices/vsource.sym} -3480 -550 0 0 {name=V14 value="PWL(0 0 34.9u 0 35u 1.8 139.9u 1.8 140u 0)"}
C {devices/gnd.sym} -3480 -500 0 0 {name=l68 lab=GND}
C {devices/lab_pin.sym} -3480 -600 2 0 {name=p66 sig_type=std_logic lab=training}
C {devices/lab_pin.sym} -2830 -540 1 0 {name=p69 sig_type=std_logic lab=vn_out1}
C {devices/vsource.sym} -3480 -410 0 0 {name=V15 value="PWL(0 0 144.9u 0 145u 1.8)"}
C {devices/gnd.sym} -3480 -360 0 0 {name=l69 lab=GND}
C {devices/lab_pin.sym} -3480 -460 2 0 {name=p73 sig_type=std_logic lab=inference}
C {devices/ammeter.sym} -3310 -540 1 0 {name=Vmeas1 savecurrent=true}
C {devices/lab_pin.sym} -2790 -420 2 0 {name=p74 sig_type=std_logic lab=ctrl1}
C {devices/vsource.sym} -3480 -830 0 0 {name=V11 value="PWL(0 1.8 29.9u 1.8 30u 0)"}
C {devices/gnd.sym} -3480 -780 0 0 {name=l72 lab=GND}
C {devices/lab_pin.sym} -3480 -880 2 0 {name=p75 sig_type=std_logic lab=ctrl1}
C {devices/gnd.sym} -2730 -320 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} -2680 -550 1 0 {name=p2 sig_type=std_logic lab=vpre1}
C {devices/lab_pin.sym} -2780 -530 3 0 {name=p5 sig_type=std_logic lab=vn_out1}
C {devices/lab_pin.sym} -2790 -580 2 0 {name=p14 sig_type=std_logic lab=ctrl2}
C {devices/gnd.sym} -2730 -490 0 0 {name=l33 lab=GND}
C {devices/vsource.sym} -3300 -830 0 0 {name=V12 value="PWL(0 0 164.9u 0 165u 1.8)"}
C {devices/gnd.sym} -3300 -780 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} -3300 -880 2 0 {name=p17 sig_type=std_logic lab=ctrl2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/t_gate.sym} -2730 -540 0 0 {name=x7}
C {devices/vsource.sym} -3320 -970 0 0 {name=V10 value=0.5}
C {devices/gnd.sym} -3320 -920 0 0 {name=l75 lab=GND}
C {devices/lab_pin.sym} -3320 -1020 2 0 {name=p82 sig_type=std_logic lab=vb_rpd}
C {devices/vsource.sym} -3310 -1110 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -3310 -1060 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -3310 -1160 2 0 {name=p6 sig_type=std_logic lab=vdd_pos}
C {devices/vsource.sym} -2960 -1110 0 0 {name=V4 value="PWL(0 1.8 94.9 1.8 95u 0)"}
C {devices/gnd.sym} -2960 -1060 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -2780 -1160 2 0 {name=p7 sig_type=std_logic lab=vdd_syn1}
C {devices/vsource.sym} -3110 -1110 0 0 {name=V6 value=1.8}
C {devices/gnd.sym} -3110 -1060 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -3110 -1160 2 0 {name=p1 sig_type=std_logic lab=vdd_sw}
C {devices/vsource.sym} -3030 -1110 0 0 {name=V7 value=1.8}
C {devices/gnd.sym} -3030 -1060 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -3030 -1160 2 0 {name=p3 sig_type=std_logic lab=vdd_tg}
C {devices/vsource.sym} -3480 -970 0 0 {name=V8 value=0.5}
C {devices/gnd.sym} -3480 -920 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -3480 -1020 2 0 {name=p8 sig_type=std_logic lab=vb_pre}
C {devices/vsource.sym} -3400 -970 0 0 {name=V9 value=0.5}
C {devices/gnd.sym} -3400 -920 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -3400 -1020 2 0 {name=p11 sig_type=std_logic lab=vb_pos}
C {devices/lab_pin.sym} -2980 -630 2 0 {name=p4 sig_type=std_logic lab=vdd_pre}
C {devices/lab_pin.sym} -2430 -140 3 0 {name=p12 sig_type=std_logic lab=vdd_pos}
C {devices/lab_pin.sym} -2560 -590 1 0 {name=p15 sig_type=std_logic lab=vdd_syn1}
C {devices/lab_pin.sym} -2730 -780 0 0 {name=p18 sig_type=std_logic lab=vdd_delay}
C {devices/lab_pin.sym} -2730 -450 0 0 {name=p19 sig_type=std_logic lab=vdd_sw}
C {devices/lab_pin.sym} -2730 -610 0 0 {name=p20 sig_type=std_logic lab=vdd_tg}
C {/home/ricardo/RATT_repos/Proyectos_xschem/switch/sw.sym} -2730 -370 0 0 {name=x2}
C {devices/lab_pin.sym} -2790 -340 0 0 {name=p22 sig_type=std_logic lab=vb_rpd}
C {devices/vsource.sym} -3480 -1110 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} -3480 -1060 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -3480 -1160 2 0 {name=p21 sig_type=std_logic lab=vdd_in}
C {devices/lab_pin.sym} -3200 -620 1 0 {name=p23 sig_type=std_logic lab=vdd_in}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Input_Layer_LIF.sym} -2980 -540 0 0 {name=x1}
C {devices/lab_pin.sym} -3070 -590 1 0 {name=p25 sig_type=std_logic lab=vlky}
C {devices/vsource.sym} -3240 -970 0 0 {name=V16 value=0.55}
C {devices/gnd.sym} -3240 -920 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -3240 -1020 2 0 {name=p29 sig_type=std_logic lab=vlky}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Output_Layer_LIF.sym} -2500 -160 1 0 {name=x3}
C {devices/lab_pin.sym} -2570 -260 1 0 {name=p30 sig_type=std_logic lab=inh1}
C {devices/lab_pin.sym} -2460 -260 1 0 {name=p31 sig_type=std_logic lab=vlky}
C {devices/vsource.sym} -3080 -970 0 0 {name=V17 value="PWL(0 0 204.9u 0 205u 1.4)"}
C {devices/gnd.sym} -3080 -920 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} -3080 -1020 2 0 {name=p71 sig_type=std_logic lab=ctrl_pos}
C {devices/vsource.sym} -3160 -970 0 0 {name=V18 value=1.8}
C {devices/gnd.sym} -3160 -920 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} -3160 -1020 2 0 {name=p88 sig_type=std_logic lab=vinh}
C {devices/lab_pin.sym} -2690 -230 2 0 {name=p94 sig_type=std_logic lab=inh1}
C {sky130_fd_pr/nfet_01v8.sym} -2730 -210 3 0 {name=M8
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
C {devices/gnd.sym} -2730 -240 2 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} -2730 -180 2 0 {name=p72 sig_type=std_logic lab=inh_d}
C {devices/lab_pin.sym} -2770 -230 0 0 {name=p85 sig_type=std_logic lab=vinh}
C {devices/lab_pin.sym} -2900 -1020 2 0 {name=p32 sig_type=std_logic lab=inh_d}
C {devices/vsource.sym} -2900 -970 0 0 {name=V19 value="PWL(0 0 204.9u 0 205u 1.8)"}
C {devices/gnd.sym} -2900 -920 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -2550 -410 0 0 {name=p34 sig_type=std_logic lab=ctrl_pos}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -2280 -360 0 0 {name=x4}
C {devices/gnd.sym} -2340 -470 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -2400 -550 1 0 {name=p35 sig_type=std_logic lab=vpre1}
C {devices/lab_pin.sym} -2280 -550 1 0 {name=p36 sig_type=std_logic lab=vpos1}
C {devices/ammeter.sym} -2280 -480 0 0 {name=Vmeas2 savecurrent=true}
C {sky130_fd_pr/nfet_01v8.sym} -2300 -410 0 0 {name=M3
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
C {devices/gnd.sym} -2270 -410 3 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -2280 -370 2 0 {name=p37 sig_type=std_logic lab=pattern2}
C {devices/lab_pin.sym} -2320 -260 1 0 {name=p38 sig_type=std_logic lab=vb_pos}
C {devices/gnd.sym} -2350 -140 0 0 {name=l15 lab=GND}
C {devices/ammeter.sym} -2280 -300 0 0 {name=Vmeas3 savecurrent=true}
C {devices/lab_pin.sym} -2280 -340 2 0 {name=p39 sig_type=std_logic lab=pattern2}
C {devices/lab_pin.sym} -2280 -10 2 0 {name=p40 sig_type=std_logic lab=vp2}
C {devices/lab_pin.sym} -2210 -140 3 0 {name=p41 sig_type=std_logic lab=vdd_pos}
C {devices/lab_pin.sym} -2340 -590 1 0 {name=p42 sig_type=std_logic lab=vdd_syn2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/LIF_neuron/Output_Layer_LIF.sym} -2280 -160 1 0 {name=x5}
C {devices/lab_pin.sym} -2350 -260 1 0 {name=p43 sig_type=std_logic lab=inh2}
C {devices/lab_pin.sym} -2240 -260 1 0 {name=p44 sig_type=std_logic lab=vlky}
C {devices/lab_pin.sym} -2330 -410 0 0 {name=p45 sig_type=std_logic lab=ctrl_pos}
C {devices/lab_pin.sym} -2690 -80 2 0 {name=p47 sig_type=std_logic lab=inh2}
C {sky130_fd_pr/nfet_01v8.sym} -2730 -60 3 0 {name=M4
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
C {devices/gnd.sym} -2730 -90 2 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -2730 -30 2 0 {name=p48 sig_type=std_logic lab=inh_d}
C {devices/lab_pin.sym} -2770 -80 0 0 {name=p49 sig_type=std_logic lab=vinh}
C {devices/vsource.sym} -2780 -1110 0 0 {name=V20 value="PWL(0 1.8 34.9u 1.8 35u 0 99.9 0 100u 1.8)"}
C {devices/gnd.sym} -2780 -1060 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -2960 -1160 2 0 {name=p50 sig_type=std_logic lab=vdd_syn2}
