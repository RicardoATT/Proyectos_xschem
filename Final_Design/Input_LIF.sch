v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -280 240 -240 {
lab=#net1}
N 180 -50 200 -50 {
lab=Vb}
N 240 -20 240 -0 {
lab=GND}
N 240 -50 250 -50 {
lab=GND}
N 250 -50 250 -20 {
lab=GND}
N 240 -20 250 -20 {
lab=GND}
N 280 -210 300 -210 {
lab=#net2}
N 300 -310 300 -210 {
lab=#net2}
N 280 -310 300 -310 {
lab=#net2}
N 240 -180 240 -80 {
lab=#net3}
N 350 -160 350 -140 {
lab=#net1}
N 350 -80 350 -0 {
lab=GND}
N 240 -0 350 -0 {
lab=GND}
N 450 -130 450 0 {
lab=GND}
N 350 0 450 0 {
lab=GND}
N 450 -160 460 -160 {
lab=GND}
N 460 -160 460 -130 {
lab=GND}
N 450 -130 460 -130 {
lab=GND}
N 450 -220 450 -190 {
lab=Iin}
N 560 -20 560 0 {
lab=GND}
N 230 -340 240 -340 {
lab=VDD}
N 230 -340 230 -310 {
lab=VDD}
N 230 -310 240 -310 {
lab=VDD}
N 240 -420 240 -340 {
lab=VDD}
N 740 -160 760 -160 {
lab=Iin}
N 740 -370 740 -160 {
lab=Iin}
N 740 -370 760 -370 {
lab=Iin}
N 800 -370 810 -370 {
lab=VDD}
N 810 -400 810 -370 {
lab=VDD}
N 800 -400 810 -400 {
lab=VDD}
N 900 -370 920 -370 {
lab=#net2}
N 900 -370 900 -160 {
lab=#net2}
N 900 -160 920 -160 {
lab=#net2}
N 960 -340 960 -190 {
lab=Vout}
N 960 -370 970 -370 {
lab=VDD}
N 970 -400 970 -370 {
lab=VDD}
N 960 -400 970 -400 {
lab=VDD}
N 960 -420 960 -400 {
lab=VDD}
N 800 -420 800 -400 {
lab=VDD}
N 800 -260 900 -260 {
lab=#net2}
N 880 -110 880 -90 {
lab=#net4}
N 800 -110 880 -110 {
lab=#net4}
N 800 -130 800 -110 {
lab=#net4}
N 880 -110 960 -110 {
lab=#net4}
N 960 -130 960 -110 {
lab=#net4}
N 960 -260 1060 -260 {
lab=Vout}
N 1060 -260 1060 -60 {
lab=Vout}
N 920 -60 1060 -60 {
lab=Vout}
N 1060 -260 1080 -260 {
lab=Vout}
N 800 -160 810 -160 {
lab=GND}
N 960 -160 970 -160 {
lab=GND}
N 870 -60 880 -60 {
lab=GND}
N 870 -60 870 -30 {
lab=GND}
N 870 -30 880 -30 {
lab=GND}
N 880 -30 880 0 {
lab=GND}
N 810 -160 810 -0 {
lab=GND}
N 970 -160 970 0 {
lab=GND}
N 880 0 970 0 {
lab=GND}
N 230 -210 240 -210 {
lab=GND}
N 230 -210 230 -140 {
lab=GND}
N 230 -140 250 -140 {
lab=GND}
N 250 -140 250 -50 {
lab=GND}
N 450 -220 560 -220 {
lab=Iin}
N 350 -160 410 -160 {
lab=#net1}
N 160 -260 240 -260 {
lab=#net1}
N 160 -260 160 -160 {
lab=#net1}
N 160 -160 350 -160 {
lab=#net1}
N 800 -260 800 -190 {
lab=#net2}
N 560 -220 560 -80 {
lab=Iin}
N 560 -220 740 -220 {
lab=Iin}
N 220 -390 560 -390 {
lab=Iin}
N 560 -390 560 -220 {
lab=Iin}
N 800 -340 800 -260 {
lab=#net2}
N 240 -420 800 -420 {
lab=VDD}
N 800 -420 960 -420 {
lab=VDD}
N 450 -0 560 -0 {
lab=GND}
N 560 -0 810 0 {
lab=GND}
N 810 0 880 -0 {
lab=GND}
N 300 -260 800 -260 {
lab=#net2}
N 740 -20 740 -0 {
lab=GND}
N 740 -160 740 -80 {
lab=Iin}
N 680 -50 700 -50 {
lab=Vlky}
N 740 -50 750 -50 {
lab=GND}
N 750 -50 750 0 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 220 -50 0 0 {name=M5
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 260 -210 0 1 {name=M4
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet_01v8.sym} 260 -310 0 1 {name=M3
L=20
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
C {devices/iopin.sym} 240 0 2 0 {name=p3 lab=GND}
C {devices/ipin.sym} 180 -50 0 0 {name=p5 lab=Vb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 350 -110 0 0 {name=C2 model=cap_mim_m3_1 W=10 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -160 0 0 {name=M2
L=20
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 560 -50 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {devices/iopin.sym} 240 -420 2 0 {name=p7 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 900 -60 0 1 {name=M10
L=0.15
W=1.5
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -160 0 0 {name=M7
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet_01v8.sym} 780 -370 0 0 {name=M6
L=0.15
W=1.5
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -160 0 0 {name=M9
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet_01v8.sym} 940 -370 0 0 {name=M8
L=0.15
W=5
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
C {devices/opin.sym} 1080 -260 0 0 {name=p8 lab=Vout}
C {devices/ipin.sym} 220 -390 0 0 {name=p1 lab=Iin}
C {sky130_fd_pr/nfet_01v8.sym} 720 -50 0 0 {name=M1
L=0.15
W=1.5
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
C {devices/ipin.sym} 680 -50 1 0 {name=p2 lab=Vlky}
