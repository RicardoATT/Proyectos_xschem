v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -630 -50 -630 -30 {
lab=GND}
N -630 -80 -620 -80 {
lab=#net1}
N -770 -40 -770 -30 {
lab=Vdd}
N -770 -50 -770 -40 {
lab=Vdd}
N -770 30 -770 50 {
lab=GND}
N -850 -40 -850 -30 {
lab=Vgs}
N -850 -50 -850 -40 {
lab=Vgs}
N -850 30 -850 50 {
lab=GND}
N -690 -80 -670 -80 {
lab=Vgs}
N -630 -210 -630 -190 {
lab=Vdd}
N -630 -130 -630 -110 {
lab=#net1}
N -430 -50 -430 -30 {
lab=GND}
N -430 -80 -420 -80 {
lab=#net2}
N -490 -80 -470 -80 {
lab=Vgs}
N -430 -210 -430 -190 {
lab=Vdd}
N -430 -130 -430 -110 {
lab=#net2}
N -230 -50 -230 -30 {
lab=GND}
N -230 -80 -220 -80 {
lab=#net3}
N -290 -80 -270 -80 {
lab=Vgs}
N -230 -210 -230 -190 {
lab=Vdd}
N -230 -130 -230 -110 {
lab=#net3}
N -630 170 -630 190 {
lab=GND}
N -630 140 -620 140 {
lab=#net4}
N -690 140 -670 140 {
lab=Vgs}
N -630 10 -630 30 {
lab=Vdd}
N -630 90 -630 110 {
lab=#net4}
N -430 170 -430 190 {
lab=GND}
N -430 140 -420 140 {
lab=#net5}
N -490 140 -470 140 {
lab=Vgs}
N -430 10 -430 30 {
lab=Vdd}
N -430 90 -430 110 {
lab=#net5}
N -230 170 -230 190 {
lab=GND}
N -290 140 -270 140 {
lab=Vgs}
N -230 90 -230 110 {
lab=#net6}
N -230 10 -230 30 {
lab=Vdd}
N -420 110 -420 140 {
lab=#net5}
N -430 110 -420 110 {
lab=#net5}
N -230 140 -220 140 {
lab=#net6}
N -220 110 -220 140 {
lab=#net6}
N -230 110 -220 110 {
lab=#net6}
N -220 -110 -220 -80 {
lab=#net3}
N -230 -110 -220 -110 {
lab=#net3}
N -620 110 -620 140 {
lab=#net4}
N -630 110 -620 110 {
lab=#net4}
N -620 -110 -620 -80 {
lab=#net1}
N -630 -110 -620 -110 {
lab=#net1}
N -420 -110 -420 -80 {
lab=#net2}
N -430 -110 -420 -110 {
lab=#net2}
C {devices/ammeter.sym} -630 -160 0 0 {name=Vmeas1 savecurrent=true}
C {devices/gnd.sym} -630 -30 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} -880 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} -900 170 0 0 {name=Vth_Kl_Ks
only_toplevel=false 
value="
.dc V2 0.85 1.8 1m
.control
	run
	plot i(Vmeas1) i(Vmeas2) i(Vmeas3) i(Vmeas4) i(Vmeas5) i(Vmeas6)
	wrdata PFET_vds_id.ssv i(Vmeas1) i(Vmeas2) i(Vmeas3) i(Vmeas4) i(Vmeas5) i(Vmeas6)
.endc
"}
C {devices/lab_pin.sym} -770 -50 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/vsource.sym} -770 0 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -770 50 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -850 -50 0 0 {name=p2 sig_type=std_logic lab=Vgs}
C {devices/vsource.sym} -850 0 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -850 50 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -690 -80 0 0 {name=p3 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -630 -210 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/ammeter.sym} -430 -160 0 0 {name=Vmeas2 savecurrent=true}
C {devices/gnd.sym} -430 -30 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -490 -80 0 0 {name=p5 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -430 -210 0 0 {name=p6 sig_type=std_logic lab=Vdd}
C {devices/ammeter.sym} -230 -160 0 0 {name=Vmeas3 savecurrent=true}
C {devices/gnd.sym} -230 -30 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -290 -80 0 0 {name=p7 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -230 -210 0 0 {name=p8 sig_type=std_logic lab=Vdd}
C {devices/ammeter.sym} -630 60 0 0 {name=Vmeas4 savecurrent=true}
C {devices/gnd.sym} -630 190 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -690 140 0 0 {name=p9 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -630 10 0 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/ammeter.sym} -430 60 0 0 {name=Vmeas5 savecurrent=true}
C {devices/gnd.sym} -430 190 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -490 140 0 0 {name=p11 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -430 10 0 0 {name=p12 sig_type=std_logic lab=Vdd}
C {devices/ammeter.sym} -230 60 0 0 {name=Vmeas6 savecurrent=true}
C {devices/gnd.sym} -230 190 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -290 140 0 0 {name=p13 sig_type=std_logic lab=Vgs}
C {devices/lab_pin.sym} -230 10 0 0 {name=p14 sig_type=std_logic lab=Vdd}
C {sky130_fd_pr/pfet_01v8.sym} -650 -80 0 0 {name=M1
L=0.45
W=1.35
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
C {sky130_fd_pr/pfet_01v8.sym} -450 -80 0 0 {name=M2
L=0.45
W=1.8
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
C {sky130_fd_pr/pfet_01v8.sym} -250 -80 0 0 {name=M3
L=0.45
W=2.25
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
C {sky130_fd_pr/pfet_01v8.sym} -650 140 0 0 {name=M4
L=0.45
W=2.7
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
C {sky130_fd_pr/pfet_01v8.sym} -450 140 0 0 {name=M5
L=0.45
W=3.15
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
C {sky130_fd_pr/pfet_01v8.sym} -250 140 0 0 {name=M6
L=0.45
W=3.6
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
