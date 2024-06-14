v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 310 -390 310 -350 {
lab=Vd}
N 250 -160 270 -160 {
lab=Vb1}
N 310 -130 310 -110 {
lab=GND}
N 310 -160 320 -160 {
lab=GND}
N 320 -160 320 -130 {
lab=GND}
N 310 -130 320 -130 {
lab=GND}
N 350 -320 370 -320 {
lab=Va}
N 370 -420 370 -320 {
lab=Va}
N 350 -420 370 -420 {
lab=Va}
N 310 -290 310 -190 {
lab=Ve}
N 420 -270 420 -250 {
lab=Vd}
N 420 -190 420 -110 {
lab=GND}
N 310 -110 420 -110 {
lab=GND}
N 520 -240 520 -110 {
lab=GND}
N 420 -110 520 -110 {
lab=GND}
N 520 -270 530 -270 {
lab=GND}
N 530 -270 530 -240 {
lab=GND}
N 520 -240 530 -240 {
lab=GND}
N 520 -330 520 -300 {
lab=Iin}
N 630 -130 630 -110 {
lab=GND}
N 300 -450 310 -450 {
lab=VDD}
N 300 -450 300 -420 {
lab=VDD}
N 300 -420 310 -420 {
lab=VDD}
N 310 -530 310 -450 {
lab=VDD}
N 810 -270 830 -270 {
lab=Iin}
N 810 -480 810 -270 {
lab=Iin}
N 810 -480 830 -480 {
lab=Iin}
N 870 -480 880 -480 {
lab=VDD}
N 880 -510 880 -480 {
lab=VDD}
N 870 -510 880 -510 {
lab=VDD}
N 970 -480 990 -480 {
lab=Va}
N 970 -480 970 -270 {
lab=Va}
N 970 -270 990 -270 {
lab=Va}
N 1030 -450 1030 -300 {
lab=Vout}
N 1030 -480 1040 -480 {
lab=VDD}
N 1040 -510 1040 -480 {
lab=VDD}
N 1030 -510 1040 -510 {
lab=VDD}
N 1030 -530 1030 -510 {
lab=VDD}
N 870 -530 870 -510 {
lab=VDD}
N 870 -370 970 -370 {
lab=Va}
N 950 -220 950 -200 {
lab=Vc}
N 870 -220 950 -220 {
lab=Vc}
N 870 -240 870 -220 {
lab=Vc}
N 950 -220 1030 -220 {
lab=Vc}
N 1030 -240 1030 -220 {
lab=Vc}
N 1030 -370 1130 -370 {
lab=Vout}
N 1130 -370 1130 -170 {
lab=Vout}
N 990 -170 1130 -170 {
lab=Vout}
N 1130 -370 1150 -370 {
lab=Vout}
N 870 -270 880 -270 {
lab=GND}
N 1030 -270 1040 -270 {
lab=GND}
N 940 -170 950 -170 {
lab=GND}
N 940 -170 940 -140 {
lab=GND}
N 940 -140 950 -140 {
lab=GND}
N 950 -140 950 -110 {
lab=GND}
N 880 -270 880 -110 {
lab=GND}
N 1040 -270 1040 -110 {
lab=GND}
N 950 -110 1040 -110 {
lab=GND}
N 300 -320 310 -320 {
lab=GND}
N 300 -320 300 -250 {
lab=GND}
N 300 -250 320 -250 {
lab=GND}
N 320 -250 320 -160 {
lab=GND}
N 520 -330 630 -330 {
lab=Iin}
N 420 -270 480 -270 {
lab=Vd}
N 230 -370 310 -370 {
lab=Vd}
N 230 -370 230 -270 {
lab=Vd}
N 230 -270 420 -270 {
lab=Vd}
N 870 -370 870 -300 {
lab=Va}
N 630 -330 630 -190 {
lab=Iin}
N 630 -330 810 -330 {
lab=Iin}
N 630 -500 630 -330 {
lab=Iin}
N 870 -450 870 -370 {
lab=Va}
N 310 -530 870 -530 {
lab=VDD}
N 870 -530 1030 -530 {
lab=VDD}
N 520 -110 630 -110 {
lab=GND}
N 630 -110 880 -110 {
lab=GND}
N 880 -110 950 -110 {
lab=GND}
N 370 -370 870 -370 {
lab=Va}
N 420 -290 420 -270 {
lab=Vd}
N 920 -390 920 -370 {
lab=Va}
N 950 -240 950 -220 {
lab=Vc}
C {sky130_fd_pr/nfet_01v8.sym} 290 -160 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 330 -320 0 1 {name=M7
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -420 0 1 {name=M6
L=1
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
C {devices/iopin.sym} 310 -110 2 0 {name=p3 lab=GND}
C {devices/ipin.sym} 250 -160 0 0 {name=p5 lab=Vb1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 420 -220 0 0 {name=Cr model=cap_mim_m3_1 W=10 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 500 -270 0 0 {name=M9
L=10
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 -160 0 0 {name=Cm model=cap_mim_m3_1 W=151 L=1 MF=50 spiceprefix=X}
C {devices/iopin.sym} 310 -530 2 0 {name=p7 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 970 -170 0 1 {name=M5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 850 -270 0 0 {name=M3
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} 850 -480 0 0 {name=M1
L=1
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
C {sky130_fd_pr/nfet_01v8.sym} 1010 -270 0 0 {name=M4
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1010 -480 0 0 {name=M2
L=1
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
C {devices/opin.sym} 1150 -370 0 0 {name=p8 lab=Vout}
C {devices/lab_pin.sym} 420 -290 2 0 {name=p4 sig_type=std_logic lab=Vd}
C {devices/ipin.sym} 630 -500 0 0 {name=p1 lab=Iin}
C {devices/lab_pin.sym} 920 -390 2 0 {name=p2 sig_type=std_logic lab=Va}
C {devices/lab_pin.sym} 950 -240 2 0 {name=p6 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 310 -210 2 1 {name=p9 sig_type=std_logic lab=Ve}
