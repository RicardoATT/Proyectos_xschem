v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 500 -90 620 {
lab=#net1}
N 150 380 260 380 {
lab=#net2}
N 110 410 110 510 {
lab=#net2}
N 110 320 110 350 {
lab=VDD}
N 110 320 530 320 {
lab=VDD}
N 530 320 530 350 {
lab=VDD}
N 300 320 300 350 {
lab=VDD}
N 110 440 210 440 {
lab=#net2}
N 210 380 210 440 {
lab=#net2}
N 300 410 300 510 {
lab=#net3}
N -50 650 160 650 {
lab=#net1}
N -90 600 -20 600 {
lab=#net1}
N -20 600 -20 650 {
lab=#net1}
N 110 570 110 600 {
lab=#net4}
N 110 600 300 600 {
lab=#net4}
N 300 570 300 600 {
lab=#net4}
N 200 600 200 620 {
lab=#net4}
N -90 680 -90 730 {
lab=VSS}
N -90 730 530 730 {
lab=VSS}
N 530 670 530 730 {
lab=VSS}
N 200 680 200 730 {
lab=VSS}
N 300 500 410 500 {
lab=#net3}
N 380 380 490 380 {
lab=#net3}
N 380 380 380 500 {
lab=#net3}
N 530 410 530 620 {
lab=Vout}
N 210 280 210 320 {
lab=VDD}
N -120 650 -90 650 {
lab=VSS}
N -120 650 -120 710 {
lab=VSS}
N -120 710 -90 710 {
lab=VSS}
N 200 650 235 650 {
lab=VSS}
N 235 650 235 710 {
lab=VSS}
N 200 710 235 710 {
lab=VSS}
N 530 650 575 650 {
lab=VSS}
N 575 650 575 705 {
lab=VSS}
N 530 705 575 705 {
lab=VSS}
N 275 540 300 540 {
lab=VSS}
N 275 540 275 730 {
lab=VSS}
N 110 540 145 540 {
lab=VSS}
N 145 540 145 730 {
lab=VSS}
N 90 380 115 380 {
lab=VDD}
N 90 320 90 380 {
lab=VDD}
N 295 380 335 380 {
lab=VDD}
N 335 320 335 380 {
lab=VDD}
N 530 380 590 380 {
lab=VDD}
N 590 320 590 380 {
lab=VDD}
N 630 460 630 500 {
lab=Vout}
N 490 650 490 695 {
lab=#net1}
N 30 695 490 695 {
lab=#net1}
N 30 650 30 695 {
lab=#net1}
N 470 500 530 500 {
lab=Vout}
N 530 480 630 480 {
lab=Vout}
N 530 320 590 320 {
lab=VDD}
N 90 320 110 320 {
lab=VDD}
N 340 540 340 620 {
lab=V_pos}
N 200 730 200 770 {
lab=VSS}
N 630 560 630 620 {
lab=GND}
N -90 410 -90 440 {
lab=Ibias}
N -110 470 -90 470 {
lab=Ibias}
N -110 430 -110 470 {
lab=Ibias}
N -110 430 -90 430 {
lab=Ibias}
N -90 520 -45 520 {
lab=#net1}
N -45 470 -45 520 {
lab=#net1}
N -50 470 -45 470 {
lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 90 540 0 0 {name=M1
L=L3
W=W3
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
C {sky130_fd_pr/pfet_01v8.sym} 130 380 0 1 {name=M3
L=L1
W=W1
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
C {sky130_fd_pr/nfet_01v8.sym} 320 540 0 1 {name=M2
L=L3
W=W3
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
C {sky130_fd_pr/pfet_01v8.sym} 280 380 0 0 {name=M4
L=L1
W=W1
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
C {sky130_fd_pr/nfet_01v8.sym} 180 650 0 0 {name=M5
L=L4
W=W4
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
C {sky130_fd_pr/pfet_01v8.sym} 510 380 0 0 {name=M6
L=L2
W=W2
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
C {sky130_fd_pr/nfet_01v8.sym} 510 650 0 0 {name=M7
L=L5
W=W5
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
C {sky130_fd_pr/nfet_01v8.sym} -70 650 0 1 {name=M8
L=L4
W=W4
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
C {devices/ipin.sym} -90 410 0 0 {name=p4 lab=Ibias}
C {devices/ipin.sym} 70 540 0 0 {name=p5 lab=V_neg}
C {devices/ipin.sym} 340 620 0 0 {name=p6 lab=V_pos}
C {devices/iopin.sym} 210 280 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 200 770 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 630 460 0 0 {name=p3 lab=Vout}
C {devices/iopin.sym} 630 620 0 0 {name=p7 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -70 470 0 1 {name=M9
L=L6
W=W6
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 440 500 3 0 {name=C1 model=cap_mim_m3_1 W=10 L=1 MF=1 spiceprefix=X}
