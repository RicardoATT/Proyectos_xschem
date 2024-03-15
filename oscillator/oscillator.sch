v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -180 20 -180 {
lab=#net1}
N -230 -180 -190 -180 {
lab=#net2}
N -320 -250 -320 -230 {
lab=#net3}
N -110 -130 -110 -110 {
lab=#net4}
N -110 -50 -110 -30 {
lab=gnd}
N -110 -30 100 -30 {
lab=gnd}
N 100 -130 100 -30 {
lab=gnd}
N -320 -30 -110 -30 {
lab=gnd}
N -320 -130 -320 -30 {
lab=gnd}
N -320 -330 -320 -310 {
lab=vdd}
N -320 -330 -110 -330 {
lab=vdd}
N -110 -330 -110 -230 {
lab=vdd}
N -110 -330 100 -330 {
lab=vdd}
N 100 -330 100 -230 {
lab=vdd}
N -420 -180 -420 -10 {
lab=vinout}
N -420 -180 -400 -180 {
lab=vinout}
N 190 -180 210 -180 {
lab=vinout}
N 210 -180 210 -10 {
lab=vinout}
N -420 -10 210 -10 {
lab=vinout}
N -320 -280 -310 -280 {
lab=vdd}
N -310 -310 -310 -280 {
lab=vdd}
N -320 -310 -310 -310 {
lab=vdd}
N -110 -80 -100 -80 {
lab=gnd}
N -100 -80 -100 -50 {
lab=gnd}
N -110 -50 -100 -50 {
lab=gnd}
N 100 -30 120 -30 {
lab=gnd}
N 100 -330 120 -330 {
lab=vdd}
N -170 -80 -150 -80 {
lab=vbias2}
N -380 -280 -360 -280 {
lab=vbias1}
N -440 -180 -420 -180 {
lab=vinout}
C {/home/ricardo/Escritorio/Proyectos_xschem/inverter/inverter.sym} -280 -160 0 0 {name=x1}
C {/home/ricardo/Escritorio/Proyectos_xschem/inverter/inverter.sym} -70 -160 0 0 {name=x2}
C {/home/ricardo/Escritorio/Proyectos_xschem/inverter/inverter.sym} 140 -160 0 0 {name=x3}
C {sky130_fd_pr/nfet_01v8.sym} -130 -80 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -340 -280 0 0 {name=M2
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
C {devices/iopin.sym} 120 -330 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 120 -30 0 0 {name=p2 lab=gnd}
C {devices/ipin.sym} -170 -80 0 0 {name=p3 lab=vbias2}
C {devices/ipin.sym} -380 -280 0 0 {name=p4 lab=vbias1}
C {devices/iopin.sym} -440 -180 2 0 {name=p5 lab=vinout}
