v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -320 240 -280 {
lab=#net1}
N 180 -90 200 -90 {
lab=Vb}
N 240 -60 240 -40 {
lab=GND}
N 240 -90 250 -90 {
lab=GND}
N 250 -90 250 -60 {
lab=GND}
N 240 -60 250 -60 {
lab=GND}
N 280 -250 300 -250 {
lab=#net2}
N 300 -350 300 -250 {
lab=#net2}
N 280 -350 300 -350 {
lab=#net2}
N 240 -220 240 -120 {
lab=#net3}
N 350 -200 350 -180 {
lab=#net1}
N 350 -120 350 -40 {
lab=GND}
N 240 -40 350 -40 {
lab=GND}
N 450 -170 450 -40 {
lab=GND}
N 350 -40 450 -40 {
lab=GND}
N 450 -200 460 -200 {
lab=GND}
N 460 -200 460 -170 {
lab=GND}
N 450 -170 460 -170 {
lab=GND}
N 450 -260 450 -230 {
lab=Iin}
N 560 -60 560 -40 {
lab=GND}
N 230 -380 240 -380 {
lab=VDD}
N 230 -380 230 -350 {
lab=VDD}
N 230 -350 240 -350 {
lab=VDD}
N 240 -460 240 -380 {
lab=VDD}
N 740 -200 760 -200 {
lab=Iin}
N 740 -410 740 -200 {
lab=Iin}
N 740 -410 760 -410 {
lab=Iin}
N 800 -410 810 -410 {
lab=VDD}
N 810 -440 810 -410 {
lab=VDD}
N 800 -440 810 -440 {
lab=VDD}
N 900 -410 920 -410 {
lab=#net2}
N 900 -410 900 -200 {
lab=#net2}
N 900 -200 920 -200 {
lab=#net2}
N 960 -380 960 -230 {
lab=Vout}
N 960 -410 970 -410 {
lab=VDD}
N 970 -440 970 -410 {
lab=VDD}
N 960 -440 970 -440 {
lab=VDD}
N 960 -460 960 -440 {
lab=VDD}
N 800 -460 800 -440 {
lab=VDD}
N 800 -300 900 -300 {
lab=#net2}
N 880 -150 880 -130 {
lab=#net4}
N 800 -150 880 -150 {
lab=#net4}
N 800 -170 800 -150 {
lab=#net4}
N 880 -150 960 -150 {
lab=#net4}
N 960 -170 960 -150 {
lab=#net4}
N 960 -300 1060 -300 {
lab=Vout}
N 1060 -300 1060 -100 {
lab=Vout}
N 920 -100 1060 -100 {
lab=Vout}
N 1060 -300 1080 -300 {
lab=Vout}
N 800 -200 810 -200 {
lab=GND}
N 960 -200 970 -200 {
lab=GND}
N 870 -100 880 -100 {
lab=GND}
N 870 -100 870 -70 {
lab=GND}
N 870 -70 880 -70 {
lab=GND}
N 880 -70 880 -40 {
lab=GND}
N 810 -200 810 -40 {
lab=GND}
N 970 -200 970 -40 {
lab=GND}
N 880 -40 970 -40 {
lab=GND}
N 230 -250 240 -250 {
lab=GND}
N 230 -250 230 -180 {
lab=GND}
N 230 -180 250 -180 {
lab=GND}
N 250 -180 250 -90 {
lab=GND}
N 450 -260 560 -260 {
lab=Iin}
N 350 -200 410 -200 {
lab=#net1}
N 160 -300 240 -300 {
lab=#net1}
N 160 -300 160 -200 {
lab=#net1}
N 160 -200 350 -200 {
lab=#net1}
N 800 -300 800 -230 {
lab=#net2}
N 560 -260 560 -120 {
lab=Iin}
N 560 -260 740 -260 {
lab=Iin}
N 220 -430 560 -430 {
lab=Iin}
N 560 -430 560 -260 {
lab=Iin}
N 800 -380 800 -300 {
lab=#net2}
N 240 -460 800 -460 {
lab=VDD}
N 800 -460 960 -460 {
lab=VDD}
N 450 -40 560 -40 {
lab=GND}
N 560 -40 810 -40 {
lab=GND}
N 810 -40 880 -40 {
lab=GND}
N 300 -300 800 -300 {
lab=#net2}
N 740 -60 740 -40 {
lab=GND}
N 740 -200 740 -120 {
lab=Iin}
N 680 -90 700 -90 {
lab=Vlky}
N 740 -90 750 -90 {
lab=GND}
N 750 -90 750 -40 {
lab=GND}
N 120 -40 240 -40 {
lab=GND}
N 130 -200 130 -40 {
lab=GND}
N 130 -260 130 -240 {
lab=Vinh}
N 60 -200 100 -200 {
lab=VDD}
N 60 -460 60 -200 {
lab=VDD}
N 60 -460 240 -460 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 220 -90 0 0 {name=M5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 260 -250 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 260 -350 0 1 {name=M3
L=5
W=0.5
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
C {devices/iopin.sym} 120 -40 2 0 {name=p3 lab=GND}
C {devices/ipin.sym} 180 -90 0 0 {name=p5 lab=Vb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 350 -150 0 0 {name=C2 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -200 0 0 {name=M2
L=0.5
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 560 -90 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=10 MF=1 spiceprefix=X}
C {devices/iopin.sym} 60 -460 2 0 {name=p7 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 900 -100 0 1 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -200 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 780 -410 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -200 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} 940 -410 0 0 {name=M8
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
C {devices/opin.sym} 1080 -300 0 0 {name=p8 lab=Vout}
C {devices/ipin.sym} 220 -430 0 0 {name=p1 lab=Iin}
C {sky130_fd_pr/nfet_01v8.sym} 720 -90 0 0 {name=M1
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
C {devices/ipin.sym} 680 -90 1 0 {name=p2 lab=Vlky}
C {devices/ipin.sym} 130 -260 0 0 {name=p6 lab=Vinh}
C {sky130_fd_pr/nfet_01v8.sym} 130 -220 3 1 {name=M11
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
