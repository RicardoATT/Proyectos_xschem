
import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()


from PySpice.Doc.ExampleTools import find_libraries
from PySpice.Probe.Plot import plot
from PySpice.Spice.Library import SpiceLibrary
import matplotlib.pyplot as plt
import numpy as np
from PySpice.Plot.BodeDiagram import bode_diagram
import sympy as sym
import numpy as np

from PySpice.Probe.Plot import plot
from PySpice.Spice.Netlist import Circuit, SubCircuit, SubCircuitFactory
from PySpice.Unit import *

from pathlib import Path
home = str(Path.home())

plt.close('all')

def circuit_bode_ex(w1,w3,w5,CL,GB):
    circuit_1 = Circuit('NMOS Transistor')
    

    
    
    
    
    
    
    # circuit_1.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym")
    #circuit.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym")
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/models/sky130.lib.spice', 'tt')
    circuit_1.lib(home+'/skywater-pdk-libs-sky130_fd_pr/models/custom_sky130_1v8.lib.spice', 'tt')
    #custom_sky130.lib.spice
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.pm3.spice')
    
    
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/models/sky130_fd_pr__cap_mim_m3_1_custom.model.spice')
    # /home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice')
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice')
    # Instanciate circuit elements
    Vc_fuente = circuit_1.V('C', 'vdd', circuit_1.gnd, 0.9@u_V)
    Vss_fuente = circuit_1.V('S', 'vss', circuit_1.gnd, -0.9@u_V)
    # Vbn1 = circuit_1.V('bn1', 'vbn1', circuit_1.gnd, 1.8@u_V)
    Vinn = circuit_1.V('inn', 'vinn', circuit_1.gnd, 0@u_V)
    
    # Vinp = circuit_1.V('inp', 'vinp', circuit_1.gnd, 0@u_V)
    
    v_in=circuit_1.SinusoidalVoltageSource('inp', 'vinp', circuit_1.gnd, amplitude=0.3@u_V,offset=0@u_V, frequency=GB)
    # v_in=circuit_1.SinusoidalVoltageSource('inp', 'vinp', circuit_1.gnd, amplitude=0.9@u_V,offset=0.9@u_V, frequency=1@u_kHz)
    # I_fuente = circuit_1.I('II', 'vdd', circuit_1.gnd, fuente_corr@u_A)
    # V_control_fuente = circuit_1.V('control', 'vg', circuit_1.gnd, first_v@u_V)
    # Vc_fuente.minus.add_current_probe(circuit_1)
    
    # M <name> <drain node> <gate node> <source node> <bulk/substrate node>
    # circuit_1.X('m1', 'sky130_fd_sc_hd__nand2_1','net1', 'net1', 'vdd', 'vdd')
    
    # circuit.X('cell', 'sky130_fd_sc_hd__nand2_1', 'A', 'B', 'VGND', 'VNB', 'VPB', 'VPWR', 'Y')
    
    
    
    # sky130_fd_pr__nfet_01v8                         d     g         s               b
    
    # m1=circuit_1.X('m1', 'sky130_fd_pr__nfet_01v8','vdd', 'vdd', circuit_1.gnd, circuit_1.gnd,l =LL ,w = WW)
    # sky130_fd_pr__nfet_01v8                          d   g     s      b
    m3=circuit_1.X('m3', 'sky130_fd_pr__pfet_01v8','i1', 'i1', 'vdd', 'vdd',l =0.15 ,w = round(w3*(1e6),2))
    m4=circuit_1.X('m4', 'sky130_fd_pr__pfet_01v8','vout', 'i1', 'vdd', 'vdd',l =0.15 ,w = round(w3*(1e6),2))
    # print("w3",w3*(1e6))
    # print("w1",w1*(1e6))
    # print("w5",w5*(1e6))
    
    m1=circuit_1.X('m1', 'sky130_fd_pr__nfet_01v8','i1', 'vinp', 'i5',  'vss',l =0.15 ,w = round(w1*(1e6),2))
    m2=circuit_1.X('m2', 'sky130_fd_pr__nfet_01v8','vout', 'vinn', 'i5',  'vss',l =0.15 ,w = round(w1*(1e6),2))
    # m2=circuit_1.X('m2', 'sky130_fd_pr__nfet_01v8','vout', 'vout', 'i5',  circuit_1.gnd,l =0.15 ,w = w1*(1e6))
    
    m5=circuit_1.X('m5', 'sky130_fd_pr__nfet_01v8','i5', 'vbn1',  'vss','vss',l =0.15 ,w = round(w5*(1e6),2))
    m6=circuit_1.X('m6', 'sky130_fd_pr__nfet_01v8','vbn1', 'vbn1','vss','vss',l =0.15 ,w = round(w5*(1e6),2))
    Ibias = circuit_1.I('bias', 'vdd','vbn1', 48@u_uA)
    
    cap=circuit_1.X('c1','sky130_fd_pr__cap_mim_m3_1','vout',circuit_1.gnd,w=5000,l=1)
    # print(circuit_1)
    # cap=circuit_1.C('c1','vout',circuit_1.gnd,cap*1e12@u_pF)
    # m1.minus.add_current_probe(circuit_1)
    simul = circuit_1.simulator()
    # analy = simul.transient(step_time=0.02e-6, end_time=1e-6)
    
    analy =simul.ac(start_frequency=1@u_Hz, stop_frequency=GB, number_of_points=1000,  variation='dec')
    #analy = simul.dc(VC=slice(inicial_v,final_v,step_v))#.operating_point()#.dc(Vcontrol=slice(0,5,0.1))
    
    figure, (ax2)  = plt.subplots(ncols=1, figsize=(20, 10))
    ax2.semilogx(analy.frequency, 20*np.log10(np.absolute(analy.vout)))
    #-103. == np.round(np.real(20*np.log10((np.array(analy.vout))))) 
    ax2.grid(True)
    ax2.grid(True, which='minor')
    ax2.set_xlabel("Frequency [Hz]")
    ax2.set_ylabel("dB")
    
    return analy


def calculos_latex(kn=0.00018143138538940045,kp=5.9547447112103225e-05,vtn=0.4757440736093547,vtp=0.992624250824044,alpan=0.07378031636474496,alpap=0.014571800611007529,SR=2,CL=12e-12,GB=4e6,icmr=1.37,icmr_min=0.77):
    
    
    I5=SR*CL/1e-6
    vdd=1.8 
    Pdiss=vdd*I5
    L1=0.150e-6
    print("\\begin{align*}")
    print("kn:&",kn," \\\\kp:&",kp," \\\\vtn:&",vtn," \\\\vtp:&",vtp,"\\\\alpan:&",alpan," \\\\alpap:&",alpap," \\\\cl:&",CL," \\\\I5:&",I5,'\\\\')

    gm=2*GB*CL*np.pi
    print("g_m=2G_BC_L\\pi{}&="+"2*"+str(GB)+"*"+str(CL)+"*"+"\\pi{}\\\\")
    print("g_m&="+str(gm)+'\\\\')
    W1_L1=gm**2/(kn*I5)
    
    
    print("\\frac{W_1}{L_1}=\\frac{gm^2}{k_nI_5}&=\\frac{"+str(round(gm,5))+"^2}{"+str(round(kn,5))+"*"+str(round(I5,5))+"}\\\\")
    print("\\text{Relación $w/l$ transistor 1 y 2}&:",W1_L1,'\\\\')
    W1=W1_L1*L1
    print("\\text{w de transistor 1 y 2}&:",round(W1*1e6,3),'\\text{ }um\\\\')
    w3_l3=I5/(kp*(vdd-icmr-abs(vtp)+abs(vtn))**2)
    print("\\frac{W_3}{L_3}=\\frac{I_5}{kp*(vdd-icmr-abs(vtp)+abs(vtn))^2}&=\\frac{"+str(round(I5,5))+"}{"+str(round(kp,5))+"*"+str(round(vdd-icmr-abs(vtp)+abs(vtn),3))+"^2}",'\\\\')
    print("\\text{Relación $w/l$ transistor 3 y 4}&:",w3_l3,'\\\\')
    w3=w3_l3*L1
    print("\\text{w transistor 3}&:",round(w3*1e6,3),'\\text{ }um\\\\')
    
    
    vgs=np.sqrt(I5/(kn*W1_L1))+vtn
    print("v_{gs1}=\\sqrt{\\frac{I_5}{k_n\\frac{W_1}{L_1}}}+v_{tn}&=\\sqrt{\\frac{"+str(round(I5,5))+"}{"+str(round(kn,5))+"*"+str(round(W1_L1,5))+"}}+"+str(round(vtn,3)),'\\\\')
    print("v_{gs1}&=",vgs,'\\\\')
    
    w5_l5=2*I5/(kn*(icmr_min-vgs)**2)
    print("\\frac{W_5}{L_5}&=\\frac{2I_5}{k_n(icmr^-v_{gs1})^2}",'\\\\')
    print("\\text{Relación w/l transistor 5}&:",w5_l5,'\\\\')
    
    w5=w5_l5*L1
    
    print("\\text{w transistor 5}&:",round(w5*1e6,3),'\\text{ }um\\\\')
    
    A0=2*gm/((alpan+alpap)*I5)
    
    print("A_0=2\\frac{gm}{(\\lambda{}_n+\\lambda{}_p)I_5}&=2*\\frac{"+str(round(gm,5))+"}{("+str(round(alpan,3))+"+"+str(round(alpap,3))+")*"+str(round(I5,5))+"}",'\\\\')
    
    print("\\text{Amplificacion}&:",A0,'\\\\')
    print("\\end{align*}")
    return (W1,w3,w5,CL,GB)
w1,w3,w5,CL,GB=calculos_latex()

circuit_bode_ex(w1,w3,w5,CL,GB)

