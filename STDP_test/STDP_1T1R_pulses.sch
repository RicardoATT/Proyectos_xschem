v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 680 -480 1480 -80 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="6 7 4"
node="\\"BL[V];BL\\"
\\"SL[V];SL\\"
\\"WL[V];WL\\""
linewidth_mult=4}
B 2 680 -80 1480 320 {flags=graph
y1=22000
y2=2.6e+06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Memristance [Ohms];te be - i(Vread) / \\""
linewidth_mult=4}
B 2 680 -880 1480 -480 {flags=graph
y1=-8e-05
y2=6.5e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0




color=6
node="\\"Current Memristor[A]; i(vread)\\"	"
linewidth_mult=4}
N 400 -350 540 -350 {
lab=be}
N 600 -150 620 -150 {
lab=te}
N 290 -230 470 -230 {
lab=WL}
N 460 -150 460 -130 {
lab=GND}
N 460 -150 480 -150 {
lab=GND}
N 60 -290 60 -270 {
lab=#net1}
N 60 -210 60 -190 {
lab=#net2}
N 290 -230 290 -100 {
lab=WL}
N 540 150 540 170 {
lab=GND}
N 540 70 540 90 {
lab=#net3}
N 540 -10 540 10 {
lab=#net4}
N 540 -110 540 -70 {
lab=SL}
N 60 -350 340 -350 {
lab=BL}
N 60 -130 60 160 {
lab=GND}
N 60 160 540 160 {
lab=GND}
N 290 -40 290 160 {
lab=GND}
C {devices/code_shown.sym} 100 200 0 0 {name=NGSPICE
only_toplevel=true
value="
*.save @m.xm1.msky130_fd_pr__nfet_01v8[id]
.control
  * Modify according to your specific location
  save all
  tran 1n 60u
  write STDP_1T1R_pulses.raw
.endc

" }
C {sky130_fd_pr/corner.sym} 240 -540 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 290 -70 0 0 {name=Vwl value="PWL(0 2 10u 3 10u 3)"
}
C {devices/vsource.sym} 60 -320 0 0 {name=Vbl1 value="PULSE(0 1.8 0 5n 5n 500n 1000n 5)"}
C {devices/gnd.sym} 540 170 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 220 -650 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/STDP_1T1R_pulses.raw tran"
}
C {devices/lab_pin.sym} 290 -230 1 0 {name=wl sig_type=std_logic lab=WL}
C {devices/lab_pin.sym} 470 -350 1 0 {name=be sig_type=std_logic lab=be}
C {devices/lab_pin.sym} 300 -350 1 0 {name=p1 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 540 -90 2 0 {name=wl1 sig_type=std_logic lab=SL}
C {devices/vsource.sym} 370 -350 1 0 {name=Vread value=1e-5}
C {devices/code.sym} 120 -540 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/lab_pin.sym} 620 -150 2 0 {name=be1 sig_type=std_logic lab=te}
C {devices/vsource.sym} 540 -40 0 1 {name=Vsl1 value="PULSE(0 1.8 10.5u 5n 5n 500n 1000n 10)"}
C {/home/ricardo/RATT-repo/Proyectos_RATT/Proyectos_xschem/1T1R/1T1R.sym} 850 -80 0 0 {name=x1}
C {devices/gnd.sym} 460 -130 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 60 -240 0 0 {name=Vbl2 value="PULSE(0 1.8 10u 5n 5n 500n 1000n 10)"}
C {devices/vsource.sym} 60 -160 0 0 {name=Vbl3 value="PULSE(0 1.8 35u 5n 5n 1000n 3000n 5)"}
C {devices/vsource.sym} 540 40 0 1 {name=Vsl2 value="PULSE(0 1.8 25u 5n 5n 1500n 3000n 2)"}
C {devices/vsource.sym} 540 120 0 1 {name=Vsl3 value="PULSE(0 1.8 55u 5n 5n 50n 100n 50)"}
