v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -930 -1240 -130 -840 {flags=graph
y1=-138308
y2=448673
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"M[Ohms];\\"
\\"M1;x1.be x1.te - i(Vmeas1) /\\"
\\"M2;x2.be x2.te - i(Vmeas2) /\\"
\\"M3;x3.be x3.te - i(Vmeas3) /\\"
\\"M4;x4.be x4.te - i(Vmeas4) /\\""
color="4 8 6 7 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -130 -1240 670 -840 {flags=graph
y1=0.77
y2=2.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 8 6 7 10"
node="\\"Thickness [nm];\\"
\\"T1;n.x1.xr1.n1#ngap\\"
\\"T2;n.x2.xr1.n1#ngap\\"
\\"T3;n.x3.xr1.n1#ngap\\"
\\"T4;n.x4.xr1.n1#ngap\\""}
B 2 -930 -840 -130 -440 {flags=graph
y1=-3.5e-06
y2=9.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 8 6 7 10"
node="\\"Current (A);\\"
\\"i1;0 i(Vmeas1) -\\"
\\"i2;0 i(Vmeas2) -\\"
\\"i3;0 i(Vmeas3) -\\"
\\"i4;0 i(Vmeas4) -\\""}
B 2 -130 -840 670 -440 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 8 6 7 10"
node="\\"Voltage (V);\\"
\\"WL1;WL1\\"
\\"WL2;WL2\\"
\\"BL1;BL1\\"
\\"BL2;BL2\\""}
N -1170 -1240 -1170 -1220 {
lab=WL1}
N -1170 -960 -1170 -940 {
lab=BL1}
N -1170 -820 -1170 -800 {
lab=BL2}
N -1170 -1100 -1170 -1080 {
lab=WL2}
N -1050 -1160 -1050 -1140 {
lab=GND}
N -1050 -1020 -1050 -1000 {
lab=GND}
N -1050 -880 -1050 -860 {
lab=GND}
N -1050 -740 -1050 -720 {
lab=GND}
N -1170 -740 -1140 -740 {
lab=#net1}
N -1140 -800 -1140 -740 {
lab=#net1}
N -1140 -800 -1110 -800 {
lab=#net1}
N -1110 -740 -1080 -740 {
lab=#net2}
N -1080 -800 -1080 -740 {
lab=#net2}
N -1080 -800 -1050 -800 {
lab=#net2}
N -1170 -880 -1140 -880 {
lab=#net3}
N -1140 -940 -1140 -880 {
lab=#net3}
N -1140 -940 -1110 -940 {
lab=#net3}
N -1110 -880 -1080 -880 {
lab=#net4}
N -1080 -940 -1080 -880 {
lab=#net4}
N -1080 -940 -1050 -940 {
lab=#net4}
N -1170 -1020 -1140 -1020 {
lab=#net5}
N -1140 -1080 -1140 -1020 {
lab=#net5}
N -1140 -1080 -1110 -1080 {
lab=#net5}
N -1110 -1020 -1080 -1020 {
lab=#net6}
N -1080 -1080 -1080 -1020 {
lab=#net6}
N -1080 -1080 -1050 -1080 {
lab=#net6}
N -1170 -1160 -1140 -1160 {
lab=#net7}
N -1140 -1220 -1140 -1160 {
lab=#net7}
N -1140 -1220 -1110 -1220 {
lab=#net7}
N -1110 -1160 -1080 -1160 {
lab=#net8}
N -1080 -1220 -1080 -1160 {
lab=#net8}
N -1080 -1220 -1050 -1220 {
lab=#net8}
N -1280 -1150 -1280 -1130 {
lab=GND}
N -1280 -1230 -1280 -1210 {
lab=VDD}
N -1680 -1150 -1680 -1140 {
lab=#net9}
N -1680 -1040 -1680 -1030 {
lab=GND}
N -1620 -1100 -1610 -1100 {
lab=BL1}
N -1750 -1100 -1740 -1100 {
lab=WL1}
N -1680 -890 -1680 -880 {
lab=#net10}
N -1680 -780 -1680 -770 {
lab=GND}
N -1620 -840 -1610 -840 {
lab=BL1}
N -1750 -840 -1740 -840 {
lab=WL2}
N -1440 -1150 -1440 -1140 {
lab=#net11}
N -1440 -1040 -1440 -1030 {
lab=GND}
N -1380 -1100 -1370 -1100 {
lab=BL2}
N -1510 -1100 -1500 -1100 {
lab=WL1}
N -1440 -890 -1440 -880 {
lab=#net12}
N -1440 -780 -1440 -770 {
lab=GND}
N -1380 -840 -1370 -840 {
lab=BL2}
N -1510 -840 -1500 -840 {
lab=WL2}
N -1710 -470 -1710 -450 {
lab=#net13}
N -1710 -390 -1710 -370 {
lab=GND}
N -1610 -470 -1610 -450 {
lab=#net14}
N -1610 -390 -1610 -370 {
lab=GND}
N -1510 -470 -1510 -450 {
lab=#net15}
N -1510 -390 -1510 -370 {
lab=GND}
N -1410 -470 -1410 -450 {
lab=#net16}
N -1410 -390 -1410 -370 {
lab=GND}
N -1620 -1080 -1610 -1080 {
lab=I1}
N -1380 -1080 -1370 -1080 {
lab=I3}
N -1380 -820 -1370 -820 {
lab=I4}
N -1620 -820 -1610 -820 {
lab=I2}
N -1710 -550 -1710 -530 {
lab=I1}
N -1610 -550 -1610 -530 {
lab=I2}
N -1510 -550 -1510 -530 {
lab=I3}
N -1410 -550 -1410 -530 {
lab=I4}
N -1680 -1220 -1680 -1210 {
lab=VDD}
N -1440 -1220 -1440 -1210 {
lab=VDD}
N -1680 -960 -1680 -950 {
lab=VDD}
N -1440 -960 -1440 -950 {
lab=VDD}
N -1680 -1180 -1670 -1180 {
lab=GND}
N -1440 -1180 -1430 -1180 {
lab=GND}
N -1680 -920 -1670 -920 {
lab=GND}
N -1440 -920 -1430 -920 {
lab=GND}
N -1670 -630 -1670 -610 {
lab=GND}
N -1670 -710 -1670 -690 {
lab=SEL1}
N -1590 -630 -1590 -610 {
lab=GND}
N -1590 -710 -1590 -690 {
lab=SEL2}
N -1520 -630 -1520 -610 {
lab=GND}
N -1520 -710 -1520 -690 {
lab=SEL3}
N -1440 -630 -1440 -610 {
lab=GND}
N -1440 -710 -1440 -690 {
lab=SEL4}
N -1730 -1180 -1720 -1180 {
lab=SEL1}
N -1490 -1180 -1480 -1180 {
lab=SEL3}
N -1730 -920 -1720 -920 {
lab=SEL2}
N -1490 -920 -1480 -920 {
lab=SEL2}
C {devices/vsource.sym} -1170 -1190 0 0 {name=V1 value="PULSE(0 1.8 0 5n 5n 500n 1000n 10)"}
C {devices/lab_pin.sym} -1170 -1240 0 0 {name=p9 sig_type=std_logic lab=WL1}
C {devices/vsource.sym} -1170 -910 0 0 {name=V2 value="PULSE(0 1.8 15u 5n 5n 500n 1000n 10)"}
C {devices/lab_pin.sym} -1170 -960 0 0 {name=p11 sig_type=std_logic lab=BL1}
C {devices/vsource.sym} -1170 -770 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} -1170 -820 0 0 {name=p12 sig_type=std_logic lab=BL2}
C {devices/lab_pin.sym} -1750 -1100 0 0 {name=p15 sig_type=std_logic lab=WL1}
C {devices/code_shown.sym} -1210 -420 0 0 {name=NGSPICE
only_toplevel=true
value="
.parameter res=500k
.control
  save all
  tran 1n 30u
  write STDP_2x2_tb.raw
.endc

" }
C {sky130_fd_pr/corner.sym} -1100 -580 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -1160 -660 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_2x2_tb.raw tran"
}
C {devices/code.sym} -1220 -580 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/vsource.sym} -1170 -1050 0 0 {name=V8 value="PULSE(0 1.8 5u 5n 5n 500n 1000n 10)"}
C {devices/lab_pin.sym} -1170 -1100 0 0 {name=p24 sig_type=std_logic lab=WL2}
C {devices/vsource.sym} -1110 -1190 0 0 {name=V9 value=0}
C {devices/vsource.sym} -1110 -1050 0 0 {name=V10 value=0}
C {devices/vsource.sym} -1110 -910 0 0 {name=V11 value=0}
C {devices/vsource.sym} -1110 -770 0 0 {name=V12 value=0}
C {devices/vsource.sym} -1050 -1190 0 0 {name=V13 value=0}
C {devices/gnd.sym} -1050 -1140 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} -1050 -1050 0 0 {name=V14 value=0}
C {devices/gnd.sym} -1050 -1000 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} -1050 -910 0 0 {name=V15 value=0}
C {devices/gnd.sym} -1050 -860 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} -1050 -770 0 0 {name=V16 value=0}
C {devices/gnd.sym} -1050 -720 0 0 {name=l20 lab=GND}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -1620 -920 0 0 {name=x1}
C {devices/gnd.sym} -1680 -1030 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1280 -1180 0 0 {name=V99 value=1.8}
C {devices/gnd.sym} -1280 -1130 0 0 {name=V4 lab=GND}
C {devices/vdd.sym} -1280 -1230 0 0 {name=V5 lab=VDD}
C {devices/vdd.sym} -1680 -1220 0 0 {name=V6 lab=VDD}
C {devices/lab_pin.sym} -1610 -1100 0 1 {name=p1 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} -1750 -840 0 0 {name=p2 sig_type=std_logic lab=WL2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -1620 -660 0 0 {name=x2}
C {devices/gnd.sym} -1680 -770 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1610 -840 0 1 {name=p3 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} -1510 -1100 0 0 {name=p4 sig_type=std_logic lab=WL1}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -1380 -920 0 0 {name=x3}
C {devices/gnd.sym} -1440 -1030 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1370 -1100 0 1 {name=p5 sig_type=std_logic lab=BL2}
C {devices/lab_pin.sym} -1510 -840 0 0 {name=p6 sig_type=std_logic lab=WL2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/synapse/6T1R.sym} -1380 -660 0 0 {name=x4}
C {devices/gnd.sym} -1440 -770 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1370 -840 0 1 {name=p7 sig_type=std_logic lab=BL2}
C {devices/ammeter.sym} -1710 -500 0 0 {name=Vmeas1 savecurrent=true}
C {devices/res.sym} -1710 -420 2 0 {name=R1
value=\{res\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -1710 -370 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} -1610 -500 0 0 {name=Vmeas2 savecurrent=true}
C {devices/res.sym} -1610 -420 2 0 {name=R2
value=\{res\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -1610 -370 0 0 {name=l6 lab=GND}
C {devices/ammeter.sym} -1510 -500 0 0 {name=Vmeas3 savecurrent=true}
C {devices/res.sym} -1510 -420 2 0 {name=R3
value=\{res\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -1510 -370 0 0 {name=l7 lab=GND}
C {devices/ammeter.sym} -1410 -500 0 0 {name=Vmeas4 savecurrent=true}
C {devices/res.sym} -1410 -420 2 0 {name=R4
value=\{res\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -1410 -370 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -1610 -1080 0 1 {name=p8 sig_type=std_logic lab=I1}
C {devices/lab_pin.sym} -1370 -1080 0 1 {name=p10 sig_type=std_logic lab=I3}
C {devices/lab_pin.sym} -1370 -820 0 1 {name=p13 sig_type=std_logic lab=I4}
C {devices/lab_pin.sym} -1610 -820 0 1 {name=p14 sig_type=std_logic lab=I2}
C {devices/lab_pin.sym} -1710 -550 0 1 {name=p16 sig_type=std_logic lab=I1}
C {devices/lab_pin.sym} -1610 -550 0 1 {name=p17 sig_type=std_logic lab=I2}
C {devices/lab_pin.sym} -1510 -550 0 1 {name=p18 sig_type=std_logic lab=I3}
C {devices/lab_pin.sym} -1410 -550 0 1 {name=p19 sig_type=std_logic lab=I4}
C {sky130_fd_pr/nfet_01v8.sym} -1700 -1180 0 0 {name=M1
L=0.15
W=20
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
C {devices/vdd.sym} -1440 -1220 0 0 {name=V7 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -1460 -1180 0 0 {name=M3
L=0.15
W=20
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
C {devices/vdd.sym} -1680 -960 0 0 {name=V17 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -1700 -920 0 0 {name=M2
L=0.15
W=20
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
C {devices/vdd.sym} -1440 -960 0 0 {name=V18 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -1460 -920 0 0 {name=M4
L=0.15
W=20
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
C {devices/gnd.sym} -1670 -1180 3 0 {name=l9 lab=GND}
C {devices/gnd.sym} -1430 -1180 3 0 {name=l10 lab=GND}
C {devices/gnd.sym} -1670 -920 3 0 {name=l11 lab=GND}
C {devices/gnd.sym} -1430 -920 3 0 {name=l12 lab=GND}
C {devices/vsource.sym} -1670 -660 0 0 {name=V19
value="PWL(0 1.8 14.999u 1.8 15u 3)"}
C {devices/gnd.sym} -1670 -610 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -1670 -710 0 0 {name=p20 sig_type=std_logic lab=SEL1}
C {devices/vsource.sym} -1590 -660 0 0 {name=V20
value="PWL(0 0 14.999u 0 15u 1.8)"}
C {devices/gnd.sym} -1590 -610 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -1590 -710 0 0 {name=p21 sig_type=std_logic lab=SEL2}
C {devices/vsource.sym} -1520 -660 0 0 {name=V21
value=0}
C {devices/gnd.sym} -1520 -610 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} -1520 -710 0 0 {name=p22 sig_type=std_logic lab=SEL3}
C {devices/vsource.sym} -1440 -660 0 0 {name=V22
value="PWL(0 1.8)"}
C {devices/gnd.sym} -1440 -610 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -1440 -710 0 0 {name=p23 sig_type=std_logic lab=SEL4}
C {devices/lab_pin.sym} -1730 -1180 0 0 {name=p25 sig_type=std_logic lab=SEL1}
C {devices/lab_pin.sym} -1730 -920 0 0 {name=p26 sig_type=std_logic lab=SEL2}
C {devices/lab_pin.sym} -1490 -1180 0 0 {name=p27 sig_type=std_logic lab=SEL3}
C {devices/lab_pin.sym} -1490 -920 0 0 {name=p28 sig_type=std_logic lab=SEL4}
