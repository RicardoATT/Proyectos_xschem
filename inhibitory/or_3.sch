v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -700 -150 -680 -150 {
lab=X}
N -700 -70 -680 -70 {
lab=T}
N -640 -120 -640 -100 {
lab=#net1}
N -640 -200 -640 -180 {
lab=#net2}
N -550 30 -540 30 {
lab=X}
N -690 30 -680 30 {
lab=T}
N -640 -40 -640 -0 {
lab=#net3}
N -640 -20 -500 -20 {
lab=#net3}
N -500 -20 -500 -0 {
lab=#net3}
N -500 30 -490 30 {
lab=gnd}
N -490 30 -490 60 {
lab=gnd}
N -500 60 -490 60 {
lab=gnd}
N -640 30 -630 30 {
lab=gnd}
N -630 30 -630 60 {
lab=gnd}
N -640 60 -630 60 {
lab=gnd}
N -630 60 -500 60 {
lab=gnd}
N -640 -70 -630 -70 {
lab=vdd}
N -630 -150 -630 -70 {
lab=vdd}
N -640 -150 -630 -150 {
lab=vdd}
N -630 -180 -630 -150 {
lab=vdd}
N -200 30 -190 30 {
lab=#net4}
N -190 30 -190 60 {
lab=#net4}
N -200 60 -190 60 {
lab=#net4}
N -200 -20 -180 -20 {
lab=out}
N -200 -40 -200 -20 {
lab=out}
N -200 -20 -200 0 {
lab=out}
N -200 -70 -190 -70 {
lab=#net5}
N -190 -100 -190 -70 {
lab=#net5}
N -200 -100 -190 -100 {
lab=#net5}
N -240 -70 -240 -20 {
lab=#net6}
N -240 -20 -240 30 {
lab=#net6}
N -660 60 -640 60 {
lab=gnd}
N -640 -230 -630 -230 {
lab=vdd}
N -630 -260 -630 -230 {
lab=vdd}
N -640 -260 -630 -260 {
lab=vdd}
N -640 -280 -640 -260 {
lab=vdd}
N -630 -230 -630 -180 {
lab=vdd}
N -700 -230 -680 -230 {
lab=U}
N -420 30 -400 30 {
lab=X}
N -490 60 -360 60 {}
N -360 60 -350 60 {}
N -350 30 -350 60 {}
N -360 30 -350 30 {}
N -500 -20 -360 -20 {}
N -360 -20 -360 0 {}
N -360 -20 -240 -20 {}
N -350 60 -200 60 {}
N -200 -280 -200 -100 {}
N -640 -280 -200 -280 {}
C {devices/iopin.sym} -660 60 2 0 {name=p2 lab=gnd}
C {devices/ipin.sym} -700 -70 0 0 {name=p3 lab=T}
C {devices/ipin.sym} -700 -150 0 0 {name=p4 lab=X}
C {devices/opin.sym} -180 -20 0 0 {name=p5 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -660 -150 0 0 {name=M5
L=\{Lp_or\}
W=\{Wp_or\}
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
C {sky130_fd_pr/nfet_01v8.sym} -520 30 0 0 {name=M6
L=\{Ln_or\}
W=\{Wn_or\}
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
C {sky130_fd_pr/pfet_01v8.sym} -660 -70 0 0 {name=M3
L=\{Lp_or\}
W=\{Wp_or\}
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
C {sky130_fd_pr/nfet_01v8.sym} -660 30 0 0 {name=M4
L=\{Ln_or\}
W=\{Wn_or\}
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
C {devices/lab_pin.sym} -550 30 0 0 {name=p8 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} -690 30 0 0 {name=p9 sig_type=std_logic lab=T}
C {devices/iopin.sym} -640 -280 2 0 {name=p10 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -220 30 0 0 {name=M2
L=\{Ln_or\}
W=\{Wn_or\}
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
C {sky130_fd_pr/pfet_01v8.sym} -220 -70 0 0 {name=M1
L=\{Lp_or\}
W=\{Wp_or\}
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
C {sky130_fd_pr/pfet_01v8.sym} -660 -230 0 0 {name=M7
L=\{Lp_or\}
W=\{Wp_or\}
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
C {devices/ipin.sym} -700 -230 0 0 {name=p1 lab=U}
C {sky130_fd_pr/nfet_01v8.sym} -380 30 0 0 {name=M8
L=\{Ln_or\}
W=\{Wn_or\}
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
C {devices/lab_pin.sym} -420 30 0 0 {name=p6 sig_type=std_logic lab=U}
