v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -560 -180 -560 -160 {
lab=#net1}
N -100 -240 -100 -220 {
lab=VDD}
N -100 -160 -100 -140 {
lab=GND}
N -30 -60 -30 -40 {
lab=Vbp1}
N -30 20 -30 40 {
lab=GND}
N -500 -370 -280 -370 {
lab=#net2}
N -520 -370 -500 -370 {
lab=#net2}
N -560 -160 -400 -160 {
lab=#net1}
N -400 -160 -240 -160 {
lab=#net1}
N -240 -180 -240 -160 {
lab=#net1}
N -420 -180 -420 -160 {
lab=#net1}
N -480 -210 -460 -210 {
lab=#net2}
N -400 -160 -400 -60 {
lab=#net1}
N -560 -500 -560 -400 {
lab=#net3}
N -240 -500 -240 -400 {
lab=Vout}
N -240 -660 -240 -560 {
lab=#net4}
N -560 -660 -560 -560 {
lab=#net5}
N -480 -370 -480 -210 {
lab=#net2}
N -560 -340 -560 -240 {
lab=#net6}
N -240 -340 -240 -240 {
lab=#net7}
N -420 -370 -420 -240 {
lab=#net2}
N -560 -800 -560 -720 {
lab=#net8}
N -560 -800 -420 -800 {
lab=#net8}
N -420 -800 -420 -780 {
lab=#net8}
N -420 -800 -240 -800 {
lab=#net8}
N -240 -800 -240 -720 {
lab=#net8}
N -420 -720 -420 -370 {
lab=#net2}
N -520 -690 -280 -690 {
lab=#net3}
N -560 -480 -500 -480 {
lab=#net3}
N -500 -690 -500 -480 {
lab=#net3}
N -520 -530 -280 -530 {
lab=Vbp2}
N -570 -530 -560 -530 {
lab=#net8}
N -570 -690 -570 -530 {
lab=#net8}
N -570 -690 -560 -690 {
lab=#net8}
N -570 -720 -570 -690 {
lab=#net8}
N -570 -720 -560 -720 {
lab=#net8}
N -240 -530 -230 -530 {
lab=#net8}
N -230 -690 -230 -530 {
lab=#net8}
N -240 -690 -230 -690 {
lab=#net8}
N -230 -720 -230 -690 {
lab=#net8}
N -240 -720 -230 -720 {
lab=#net8}
N -250 -210 -240 -210 {
lab=GND}
N -240 -370 -230 -370 {
lab=GND}
N -230 -370 -230 -250 {
lab=GND}
N -250 -250 -230 -250 {
lab=GND}
N -250 -250 -250 -210 {
lab=GND}
N -560 -210 -550 -210 {
lab=GND}
N -550 -250 -550 -210 {
lab=GND}
N -570 -250 -550 -250 {
lab=GND}
N -570 -370 -570 -250 {
lab=GND}
N -570 -370 -560 -370 {
lab=GND}
N -400 0 -400 40 {
lab=GND}
N -550 20 -400 20 {
lab=GND}
N -550 -210 -550 20 {
lab=GND}
N -400 20 -250 20 {
lab=GND}
N -250 -210 -250 20 {
lab=GND}
N -400 -30 -390 -30 {
lab=GND}
N -390 -30 -390 20 {
lab=GND}
N -420 -750 -410 -750 {
lab=#net8}
N -410 -780 -410 -750 {
lab=#net8}
N -420 -780 -410 -780 {
lab=#net8}
N -420 -210 -390 -210 {
lab=GND}
N -390 -210 -390 -30 {
lab=GND}
N -240 -480 -100 -480 {
lab=Vout}
N -100 -420 -100 -400 {
lab=GND}
N -100 -500 -100 -480 {
lab=Vout}
N -200 -210 -180 -210 {
lab=Vinn}
N -620 -210 -600 -210 {
lab=Vinp}
N -460 -30 -440 -30 {
lab=Vbn1}
N -480 -750 -460 -750 {
lab=Vbp1}
N 40 -60 40 -40 {
lab=Vbp2}
N 40 20 40 40 {
lab=GND}
N -100 -60 -100 -40 {
lab=Vbn1}
N -100 20 -100 40 {
lab=GND}
N -30 -240 -30 -220 {
lab=Vinp}
N -30 -160 -30 -140 {
lab=GND}
N 40 -240 40 -220 {
lab=Vbp2}
N 40 -160 40 -140 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -580 -210 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -220 -210 0 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -420 -30 0 0 {name=M9
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
C {devices/vsource.sym} -100 -190 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -100 -240 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -100 -140 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} -100 -450 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/vsource.sym} -30 -10 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -30 40 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -30 -60 1 0 {name=p1 sig_type=std_logic lab=Vbp1}
C {devices/lab_pin.sym} -460 -30 0 0 {name=p2 sig_type=std_logic lab=Vbn1}
C {sky130_fd_pr/nfet_01v8.sym} -440 -210 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} -540 -370 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -260 -370 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -260 -530 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -540 -530 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -540 -690 0 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} -260 -690 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} -440 -750 0 0 {name=M10
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
C {devices/gnd.sym} -400 40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -100 -400 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -100 -500 2 0 {name=p3 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -620 -210 0 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} -180 -210 2 0 {name=p5 sig_type=std_logic lab=Vinn}
C {devices/lab_pin.sym} -480 -750 0 0 {name=p6 sig_type=std_logic lab=Vbp1}
C {devices/lab_pin.sym} -460 -530 1 0 {name=p7 sig_type=std_logic lab=Vbp2}
C {devices/vsource.sym} 40 -10 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 40 40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 40 -60 1 0 {name=p8 sig_type=std_logic lab=Vbp2}
C {devices/vsource.sym} -100 -10 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} -100 40 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -100 -60 1 0 {name=p9 sig_type=std_logic lab=Vbn1}
C {devices/vsource.sym} -30 -190 0 0 {name=V5 value=1.8}
C {devices/gnd.sym} -30 -140 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -30 -240 1 0 {name=p10 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} 40 -190 0 0 {name=V6 value=1.8}
C {devices/gnd.sym} 40 -140 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 40 -240 1 0 {name=p11 sig_type=std_logic lab=Vinn}
