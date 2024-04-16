v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -230 790 -230 {
lab=Ibias}
N 830 -360 830 -260 {
lab=#net1}
N 710 -230 710 -200 {
lab=Ibias}
N 320 -200 320 -110 {
lab=VSS}
N 320 -110 1060 -110 {
lab=VSS}
N 1060 -200 1060 -110 {
lab=VSS}
N 580 -200 580 -110 {
lab=VSS}
N 320 -360 320 -260 {
lab=#net2}
N 1060 -360 1060 -260 {
lab=#net3}
N 360 -230 410 -230 {
lab=Vsign}
N 410 -440 410 -230 {
lab=Vsign}
N 320 -440 410 -440 {
lab=Vsign}
N 320 -440 320 -420 {
lab=Vsign}
N 270 -230 320 -230 {
lab=VSS}
N 270 -390 320 -390 {
lab=VSS}
N 530 -390 580 -390 {
lab=VSS}
N 530 -230 580 -230 {
lab=VSS}
N 830 -230 920 -230 {
lab=VSS}
N 830 -390 920 -390 {
lab=VSS}
N 1060 -390 1130 -390 {
lab=VSS}
N 1060 -230 1120 -230 {
lab=VSS}
N 410 -230 410 -200 {
lab=Vsign}
N 1020 -230 1020 -190 {
lab=Vsign}
N 370 -390 370 -350 {
lab=VBN}
N 360 -390 370 -390 {
lab=VBN}
N 1020 -390 1020 -350 {
lab=VBN}
N 720 -110 720 -60 {
lab=VSS}
N 790 -390 790 -350 {
lab=Vin_plus}
N 120 -110 320 -110 {
lab=VSS}
N 160 -290 160 -230 {
lab=Ibias}
N 120 -290 160 -290 {
lab=Ibias}
N 120 -290 120 -260 {
lab=Ibias}
N 60 -230 120 -230 {
lab=VSS}
N 320 -480 320 -440 {
lab=Vsign}
N 580 -480 580 -420 {
lab=#net4}
N 360 -510 540 -510 {
lab=VBP}
N 830 -480 830 -420 {
lab=#net5}
N 1060 -480 1060 -420 {
lab=Iout}
N 320 -590 320 -540 {
lab=#net6}
N 580 -590 580 -540 {
lab=#net7}
N 830 -590 830 -540 {
lab=#net8}
N 1060 -590 1060 -540 {
lab=#net9}
N 870 -510 1020 -510 {
lab=VBP}
N 450 -510 450 -480 {
lab=VBP}
N 920 -510 920 -470 {
lab=VBP}
N 360 -620 540 -620 {
lab=#net4}
N 870 -620 1020 -620 {
lab=#net5}
N 510 -460 580 -460 {
lab=#net4}
N 510 -620 510 -460 {
lab=#net4}
N 830 -450 900 -450 {
lab=#net5}
N 900 -620 900 -450 {
lab=#net5}
N 320 -710 320 -650 {
lab=VDD}
N 320 -710 1060 -710 {
lab=VDD}
N 1060 -710 1060 -650 {
lab=VDD}
N 830 -710 830 -650 {
lab=VDD}
N 580 -710 580 -650 {
lab=VDD}
N 790 -620 830 -620 {
lab=VDD}
N 790 -510 830 -510 {
lab=VDD}
N 270 -620 320 -620 {
lab=VDD}
N 270 -510 320 -510 {
lab=VDD}
N 580 -510 620 -510 {
lab=VDD}
N 580 -620 620 -620 {
lab=VDD}
N 1060 -620 1100 -620 {
lab=VDD}
N 1060 -510 1100 -510 {
lab=VDD}
N 690 -760 690 -710 {
lab=VDD}
N 1060 -440 1110 -440 {
lab=Iout}
N 780 -320 830 -320 {
lab=#net1}
N 680 -320 720 -320 {
lab=#net10}
N 830 -200 830 -170 {
lab=VSS}
N 120 -200 120 -170 {
lab=VSS}
N 830 -170 830 -110 {
lab=VSS}
N 580 -360 580 -340 {
lab=#net11}
N 120 -170 120 -110 {
lab=VSS}
N 580 -320 620 -320 {
lab=#net11}
N 580 -340 580 -320 {
lab=#net11}
N 580 -270 580 -260 {
lab=#net11}
N 580 -320 580 -270 {
lab=#net11}
N 620 -390 630 -390 {
lab=Vin_minus}
N 720 -60 720 -40 {
lab=VSS}
N 750 -320 750 -280 {
lab=VSS}
N 650 -320 650 -280 {
lab=VSS}
N 750 -370 750 -360 {
lab=VDD}
N 650 -370 650 -360 {
lab=VDD}
N 120 -350 120 -290 {
lab=Ibias}
C {sky130_fd_pr/nfet_01v8.sym} 600 -390 0 1 {name=M1
L=L1_2
W=W1_2
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
C {sky130_fd_pr/nfet_01v8.sym} 810 -390 0 0 {name=M2
L=L1_2
W=W1_2
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -230 0 1 {name=M3
L=LB_3_4
W=WB_3_4
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
C {sky130_fd_pr/nfet_01v8.sym} 810 -230 0 0 {name=M4
L=LB_3_4
W=WB_3_4
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
C {devices/lab_pin.sym} 710 -200 0 0 {name=p1 sig_type=std_logic lab=Ibias}
C {sky130_fd_pr/nfet_01v8.sym} 340 -230 0 1 {name=M5
L=L5_8
W=W5_8
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -390 0 1 {name=M6
L=L5_8
W=W5_8
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
C {sky130_fd_pr/nfet_01v8.sym} 1040 -390 0 0 {name=M7
L=L5_8
W=W5_8
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
C {sky130_fd_pr/nfet_01v8.sym} 1040 -230 0 0 {name=M8
L=L5_8
W=W5_8
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
C {devices/lab_pin.sym} 410 -200 0 0 {name=p10 sig_type=std_logic lab=Vsign}
C {devices/lab_pin.sym} 1020 -190 0 0 {name=p11 sig_type=std_logic lab=Vsign}
C {sky130_fd_pr/nfet_01v8.sym} 140 -230 0 1 {name=MB
L=LB_3_4
W=WB_3_4
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -510 0 1 {name=M9
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 560 -510 0 0 {name=M10
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 850 -510 0 1 {name=M11
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 1040 -510 0 0 {name=M12
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -620 0 1 {name=M13
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 560 -620 0 0 {name=M14
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 850 -620 0 1 {name=M15
L=L9_16
W=W9_16
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
C {sky130_fd_pr/pfet_01v8.sym} 1040 -620 0 0 {name=M16
L=L9_16
W=W9_16
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
C {devices/iopin.sym} 690 -760 0 0 {name=p28 lab=VDD
}
C {devices/iopin.sym} 720 -40 0 0 {name=p38 lab=VSS
}
C {sky130_fd_pr/nfet_01v8.sym} 650 -340 1 0 {name=Ms1
L=Lms
W=Wms
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
C {sky130_fd_pr/nfet_01v8.sym} 750 -340 1 0 {name=Ms2
L=Lms
W=Wms
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
C {devices/iopin.sym} 370 -350 0 0 {name=p14 lab=VBN}
C {devices/iopin.sym} 450 -480 0 0 {name=p13 lab=VBP}
C {devices/opin.sym} 1110 -440 0 0 {name=p19 lab=Iout}
C {devices/ipin.sym} 790 -350 0 0 {name=p29 lab=Vin_plus}
C {devices/ipin.sym} 630 -390 0 1 {name=p15 lab=Vin_minus}
C {devices/ipin.sym} 120 -350 1 0 {name=p30 lab=Ibias}
C {devices/lab_pin.sym} 270 -620 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -620 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 270 -510 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -510 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 -620 0 1 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 -510 0 1 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 -510 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 -620 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 650 -370 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 750 -370 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 270 -390 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -230 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -230 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -390 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -390 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1130 -390 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1120 -230 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -230 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 750 -280 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -280 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -230 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1020 -350 0 0 {name=p34 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 920 -470 0 1 {name=p12 sig_type=std_logic lab=VBP}
