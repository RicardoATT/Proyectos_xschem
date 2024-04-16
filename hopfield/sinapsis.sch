v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 690 -10 690 {
lab=#net1}
N 280 260 400 260 {
lab=#net2}
N -10 400 -10 690 {
lab=#net1}
N -10 400 30 400 {
lab=#net1}
N 30 260 30 400 {
lab=#net1}
N 30 400 30 560 {
lab=#net1}
N 30 260 120 260 {
lab=#net1}
N 30 560 120 560 {
lab=#net1}
N 280 560 710 560 {
lab=#net3}
N 570 260 690 260 {
lab=#net4}
N 690 260 690 290 {
lab=#net4}
N 690 290 710 290 {
lab=#net4}
N 460 600 710 600 {
lab=Vin_SW}
N 460 450 460 600 {
lab=Vin_SW}
N 460 450 550 450 {
lab=Vin_SW}
N 700 330 710 330 {
lab=#net5}
N 700 330 700 400 {
lab=#net5}
N 720 450 740 450 {
lab=#net5}
N 740 400 740 450 {
lab=#net5}
N 700 400 740 400 {
lab=#net5}
N 200 120 200 210 {
lab=VDD}
N 200 120 790 120 {
lab=VDD}
N 790 120 790 240 {
lab=VDD}
N 480 120 480 210 {
lab=VDD}
N 480 60 480 120 {
lab=VDD}
N 200 510 320 510 {
lab=VDD}
N 320 120 320 510 {
lab=VDD}
N 790 510 920 510 {
lab=VDD}
N 920 120 920 510 {
lab=VDD}
N 780 120 920 120 {
lab=VDD}
N -190 690 -120 690 {
lab=Vin}
N -10 690 -10 800 {
lab=#net1}
N 200 610 200 740 {
lab=GND}
N 200 740 790 740 {
lab=GND}
N 790 610 790 740 {
lab=GND}
N 630 500 630 740 {
lab=GND}
N 480 310 480 740 {
lab=GND}
N 790 340 790 450 {
lab=GND}
N 790 450 880 450 {
lab=GND}
N 880 450 880 740 {
lab=GND}
N 780 740 880 740 {
lab=GND}
N 200 310 360 310 {
lab=GND}
N 360 310 360 740 {
lab=GND}
N -10 860 -10 910 {
lab=GND}
N -10 910 200 910 {
lab=GND}
N 200 730 200 910 {
lab=GND}
N 480 740 480 820 {
lab=GND}
N 870 560 1120 560 {
lab=Vout}
N 450 530 460 530 {
lab=Vin_SW}
N 630 120 630 400 {
lab=VDD}
N 870 290 1100 290 {
lab=Vout}
N 1100 290 1100 560 {
lab=Vout}
C {devices/res.sym} -90 690 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/inverter.sym} 520 280 0 0 {name=x3}
C {sky130_fd_pr/rram_v0.sym} -10 830 0 0 {name=R3
model=rram_v0
spiceprefix=X
}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/transmission_gate.sym} 340 340 0 0 {name=x4}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/transmission_gate.sym} 340 640 0 0 {name=x5}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/switch_cto.sym} 830 370 0 0 {name=x1}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/switch_cto.sym} 830 640 0 0 {name=x2}
C {/home/ricardo/RATT_repos/Proyectos_xschem/hopfield/inverter.sym} 670 470 0 0 {name=x7}
C {devices/iopin.sym} 480 60 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 450 530 0 0 {name=p4 lab=Vin_SW}
C {devices/ipin.sym} -190 690 0 0 {name=p1 lab=Vin}
C {devices/iopin.sym} 480 820 0 0 {name=p5 lab=GND}
C {devices/opin.sym} 1120 560 0 0 {name=p7 lab=Vout}
