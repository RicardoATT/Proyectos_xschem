v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -700 -150 -680 -150 {
lab=a}
N -700 -70 -680 -70 {
lab=b}
N -640 -120 -640 -100 {
lab=#net1}
N -640 -200 -640 -180 {
lab=vdd}
N -550 30 -540 30 {
lab=b}
N -690 30 -680 30 {
lab=a}
N -640 -40 -640 -0 {
lab=#net2}
N -640 -20 -500 -20 {
lab=#net2}
N -500 -20 -500 -0 {
lab=#net2}
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
N -640 -180 -630 -180 {
lab=vdd}
N -340 30 -330 30 {
lab=gnd}
N -330 30 -330 60 {
lab=gnd}
N -340 60 -330 60 {
lab=gnd}
N -490 60 -340 60 {
lab=gnd}
N -340 -20 -320 -20 {
lab=out}
N -340 -40 -340 -20 {
lab=out}
N -340 -20 -340 -0 {
lab=out}
N -340 -70 -330 -70 {
lab=vdd}
N -330 -100 -330 -70 {
lab=vdd}
N -340 -100 -330 -100 {
lab=vdd}
N -380 -70 -380 -20 {
lab=#net2}
N -380 -20 -380 30 {
lab=#net2}
N -500 -20 -380 -20 {
lab=#net2}
N -640 -200 -340 -200 {
lab=vdd}
N -340 -200 -340 -100 {
lab=vdd}
N -660 60 -640 60 {
lab=gnd}
C {devices/iopin.sym} -660 60 2 0 {name=p2 lab=gnd}
C {devices/ipin.sym} -700 -150 0 0 {name=p3 lab=a}
C {devices/ipin.sym} -700 -70 0 0 {name=p4 lab=b}
C {devices/opin.sym} -320 -20 0 0 {name=p5 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -660 -150 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -520 30 0 0 {name=M2
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
C {devices/lab_pin.sym} -550 30 0 0 {name=p8 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} -690 30 0 0 {name=p9 sig_type=std_logic lab=a}
C {devices/iopin.sym} -640 -200 2 0 {name=p10 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -360 30 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -360 -70 0 0 {name=M6
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
