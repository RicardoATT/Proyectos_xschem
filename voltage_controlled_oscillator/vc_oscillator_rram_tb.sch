v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -60 20 -60 {
lab=#net1}
N 80 -60 120 -60 {
lab=#net2}
C {/home/ricardo/RATT-repo/Proyectos-RATT/Proyectos-xschem/vc_oscillator/vc_oscillator.sym} -80 -60 0 0 {name=x1}
C {/home/ricardo/RATT-repo/Proyectos-RATT/Proyectos-xschem/vc_oscillator/vc_oscillator.sym} 270 -60 0 0 {name=x2}
C {sky130_fd_pr/rram_v0.sym} 50 -60 3 0 {name=R1
model=rram_v0
spiceprefix=X
}
