v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -780 170 -780 190 {
lab=GND}
N -780 90 -780 110 {
lab=VDD}
N -1270 -370 -1270 -290 {
lab=VDD}
N -1500 -200 -1500 -180 {
lab=GND}
N -1220 -220 -1220 -180 {
lab=GND}
N -1130 -280 -1070 -280 {
lab=Vout}
N -1070 -300 -1070 -280 {
lab=Vout}
N -980 -280 -920 -280 {
lab=GND}
N -920 -280 -920 -120 {
lab=GND}
N -1070 -280 -1040 -280 {
lab=Vout}
N -1220 -370 -1220 -350 {
lab=VDD}
N -1500 -280 -1270 -280 {
lab=Vin}
N -1500 -280 -1500 -260 {
lab=Vin}
N -1500 -300 -1500 -280 {
lab=Vin}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/sinapsis.sym} -950 -130 0 0 {name=x1}
C {devices/vsource.sym} -780 140 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vdd.sym} -780 90 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} -780 190 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} -1270 -370 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -1500 -230 0 0 {name=Vbl value="PWL(0 0 10u 0 15u 1.8 20u 0)"}
C {devices/gnd.sym} -1500 -180 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -1220 -180 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1070 -300 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} -1330 -70 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
  save all
  tran 1n 20u
  
  plot v(Vout) v(Vin)
.endc

" }
C {sky130_fd_pr/corner.sym} -1230 130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -1350 130 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.inc $::SKYWATER_MODELS/rram_v0.spice
"
spice_ignore=false}
C {devices/res.sym} -1010 -280 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -920 -120 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -1220 -370 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} -1500 -300 0 0 {name=p2 sig_type=std_logic lab=Vin}
