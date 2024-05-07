v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -540 -230 -460 -230 {
lab=Vnb2}
N -540 -150 -460 -150 {
lab=#net1}
N -580 -200 -580 -180 {
lab=#net2}
N -420 -200 -420 -180 {
lab=#net3}
N -420 -120 -420 -100 {
lab=GND}
N -580 -100 -420 -100 {
lab=GND}
N -580 -120 -580 -100 {
lab=GND}
N -580 -280 -580 -260 {
lab=#net1}
N -580 -280 -500 -280 {
lab=#net1}
N -500 -280 -500 -150 {
lab=#net1}
N -580 -360 -580 -280 {
lab=#net1}
N -420 -360 -420 -260 {
lab=Vout}
N -540 -390 -460 -390 {
lab=Vpb2}
N -800 -420 -800 -400 {
lab=#net4}
N -680 -480 -680 -400 {
lab=#net4}
N -800 -400 -680 -400 {
lab=#net4}
N -580 -600 -580 -420 {
lab=#net5}
N -800 -580 -800 -480 {
lab=#net5}
N -800 -580 -580 -580 {
lab=#net5}
N -680 -560 -680 -540 {
lab=#net6}
N -680 -560 -420 -560 {
lab=#net6}
N -420 -560 -420 -420 {
lab=#net6}
N -740 -400 -740 -180 {
lab=#net4}
N -740 -120 -740 -100 {
lab=GND}
N -740 -100 -580 -100 {
lab=GND}
N -740 -150 -730 -150 {
lab=GND}
N -730 -150 -730 -100 {
lab=GND}
N -590 -150 -580 -150 {
lab=GND}
N -590 -150 -590 -100 {
lab=GND}
N -590 -230 -580 -230 {
lab=GND}
N -590 -230 -590 -150 {
lab=GND}
N -420 -230 -410 -230 {
lab=GND}
N -410 -230 -410 -150 {
lab=GND}
N -420 -150 -410 -150 {
lab=GND}
N -410 -150 -410 -100 {
lab=GND}
N -420 -100 -410 -100 {
lab=GND}
N -860 -450 -840 -450 {
lab=Vinp}
N -740 -510 -720 -510 {
lab=Vinn}
N -420 -600 -420 -560 {
lab=#net6}
N -540 -630 -460 -630 {
lab=Vpb1}
N -580 -760 -580 -660 {
lab=VDD}
N -580 -760 -420 -760 {
lab=VDD}
N -160 -360 -160 -340 {
lab=VDD}
N -160 -280 -160 -260 {
lab=GND}
N -20 -180 -20 -160 {
lab=Vpb1}
N -20 -100 -20 -80 {
lab=GND}
N 50 -180 50 -160 {
lab=Vpb2}
N 50 -100 50 -80 {
lab=GND}
N -160 -180 -160 -160 {
lab=Vnb1}
N -160 -100 -160 -80 {
lab=GND}
N -90 -360 -90 -340 {
lab=Vinp}
N -90 -280 -90 -260 {
lab=GND}
N -20 -360 -20 -340 {
lab=Vinn}
N -20 -280 -20 -260 {
lab=GND}
N -740 -100 -740 -80 {
lab=GND}
N -580 -780 -580 -760 {
lab=VDD}
N -420 -760 -420 -660 {
lab=VDD}
N -420 -280 -280 -280 {
lab=Vout}
N -280 -300 -280 -280 {
lab=Vout}
N -280 -280 -280 -220 {
lab=Vout}
N -280 -160 -280 -100 {
lab=GND}
N -410 -100 -280 -100 {
lab=GND}
N -800 -150 -780 -150 {
lab=Vnb1}
N -90 -180 -90 -160 {
lab=Vnb2}
N -90 -100 -90 -80 {
lab=GND}
N -590 -630 -580 -630 {
lab=VDD}
N -590 -660 -590 -630 {
lab=VDD}
N -590 -660 -580 -660 {
lab=VDD}
N -420 -630 -410 -630 {
lab=VDD}
N -420 -660 -410 -660 {
lab=VDD}
N -410 -660 -410 -630 {
lab=VDD}
N -410 -630 -410 -390 {
lab=VDD}
N -420 -390 -410 -390 {
lab=VDD}
N -590 -390 -580 -390 {
lab=VDD}
N -590 -630 -590 -390 {
lab=VDD}
N -800 -450 -670 -450 {
lab=GND}
N -670 -510 -670 -450 {
lab=GND}
N -680 -510 -670 -510 {
lab=GND}
N -670 -450 -670 -100 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -440 -150 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} -560 -150 0 1 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} -560 -230 0 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} -440 -230 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} -440 -390 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} -560 -390 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} -820 -450 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -700 -510 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -760 -150 0 0 {name=M3
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
C {devices/lab_pin.sym} -860 -450 0 0 {name=p4 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} -740 -510 0 0 {name=p1 sig_type=std_logic lab=Vinn}
C {sky130_fd_pr/pfet_01v8.sym} -560 -630 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -440 -630 0 0 {name=M5
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
C {devices/lab_pin.sym} -500 -630 1 0 {name=p2 sig_type=std_logic lab=Vpb1}
C {devices/vsource.sym} -160 -310 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} -160 -360 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -160 -260 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -20 -130 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -20 -80 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -20 -180 1 0 {name=p3 sig_type=std_logic lab=Vpb1}
C {devices/vsource.sym} 50 -130 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 50 -80 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 50 -180 1 0 {name=p8 sig_type=std_logic lab=Vpb2}
C {devices/vsource.sym} -160 -130 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} -740 -80 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -160 -180 1 0 {name=p9 sig_type=std_logic lab=Vnb1}
C {devices/vsource.sym} -90 -310 0 0 {name=V5 value=1.8}
C {devices/gnd.sym} -90 -260 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -90 -360 1 0 {name=p10 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} -20 -310 0 0 {name=V6 value=1.8}
C {devices/gnd.sym} -20 -260 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -20 -360 1 0 {name=p11 sig_type=std_logic lab=Vinn}
C {devices/gnd.sym} -160 -80 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -580 -780 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} -280 -190 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -280 -300 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -500 -390 1 0 {name=p6 sig_type=std_logic lab=Vpb2}
C {devices/lab_pin.sym} -480 -230 1 0 {name=p7 sig_type=std_logic lab=Vnb2}
C {devices/lab_pin.sym} -800 -150 0 0 {name=p12 sig_type=std_logic lab=Vnb1}
C {devices/vsource.sym} -90 -130 0 0 {name=V7 value=1.8}
C {devices/lab_pin.sym} -90 -180 1 0 {name=p13 sig_type=std_logic lab=Vnb2}
C {devices/gnd.sym} -90 -80 0 0 {name=l10 lab=GND}
