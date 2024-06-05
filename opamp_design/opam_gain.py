from math import sqrt
from math import pi
from math import log10
import math
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
# tabla_nmos=np.load('nmos_data.npy')
# tabla_pmos=np.load('pmos_data.npy')
from PySpice.Probe.Plot import plot
from PySpice.Spice.Netlist import Circuit, SubCircuit, SubCircuitFactory
from PySpice.Unit import *

from pathlib import Path
home = str(Path.home())

plt.close('all')

def circuit_dc(W1, W5, W9, W11,Cl,GB,I10):
    circuit_1 = Circuit('NMOS Transistor')
    

    
    
    
    
    
    
    # circuit_1.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym")
    #circuit.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym")
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/models/sky130.lib.spice', 'tt')
    circuit_1.lib(home+'/skywater-pdk-libs-sky130_fd_pr/models/custom_sky130_1v8.lib.spice', 'tt')
    #custom_sky130.lib.spice
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.pm3.spice')
    
    
    circuit_1.include(home+'/skywater-pdk-libs-sky130_fd_pr/models/sky130_fd_pr__cap_mim_m3_1_custom.model.spice')
    # /home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice')
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice')
    # Instanciate circuit elements
    Vc_fuente = circuit_1.V('C', 'vdd', circuit_1.gnd, 0.9@u_V)
    Vss_fuente = circuit_1.V('S', 'vss', circuit_1.gnd, -0.9@u_V)
    # Vbn1 = circuit_1.V('bn1', 'vbn1', circuit_1.gnd, 1.8@u_V)
    Vinn = circuit_1.V('inn', 'vinn', circuit_1.gnd, 0@u_V)
    
    Vinp = circuit_1.V('inp', 'vinp', circuit_1.gnd, 0@u_V)
    
    # v_in=circuit_1.SinusoidalVoltageSource('inp', 'vinp', circuit_1.gnd, amplitude=0.3@u_V,offset=0@u_V, frequency=GB)
    # v_in=circuit_1.SinusoidalVoltageSource('inp', 'vinp', circuit_1.gnd, amplitude=0.9@u_V,offset=0.9@u_V, frequency=1@u_kHz)
    # I_fuente = circuit_1.I('II', 'vdd', circuit_1.gnd, fuente_corr@u_A)
    # V_control_fuente = circuit_1.V('control', 'vg', circuit_1.gnd, first_v@u_V)
    # Vc_fuente.minus.add_current_probe(circuit_1)
    
    # M <name> <drain node> <gate node> <source node> <bulk/substrate node>
    # circuit_1.X('m1', 'sky130_fd_sc_hd__nand2_1','net1', 'net1', 'vdd', 'vdd')
    
    # circuit.X('cell', 'sky130_fd_sc_hd__nand2_1', 'A', 'B', 'VGND', 'VNB', 'VPB', 'VPWR', 'Y')
    
    
    
    # sky130_fd_pr__nfet_01v8                         d     g         s               b
    
    m10=circuit_1.X('m10', 'sky130_fd_pr__pfet_01v8','g34', 'bp1', 'vdd', 'vdd',l =0.45 ,w = 1.5)
    m7=circuit_1.X('m7', 'sky130_fd_pr__pfet_01v8','i75', 'i1', 'vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m8=circuit_1.X('m8', 'sky130_fd_pr__pfet_01v8','i86', 'i1', 'vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m5=circuit_1.X('m5', 'sky130_fd_pr__pfet_01v8','i1', 'bp2', 'i75', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m6=circuit_1.X('m6', 'sky130_fd_pr__pfet_01v8','vout', 'bp2', 'i86', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    
                                                    # d   g     s      b    
    m3=circuit_1.X('m3', 'sky130_fd_pr__nfet_01v8','i1', 'g34','i31', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m4=circuit_1.X('m4', 'sky130_fd_pr__nfet_01v8','vout','g34','im2', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m1=circuit_1.X('m1', 'sky130_fd_pr__nfet_01v8','i31','vinp','im9', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m2=circuit_1.X('m2', 'sky130_fd_pr__nfet_01v8','im2','vinn','im9', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m11=circuit_1.X('m11', 'sky130_fd_pr__nfet_01v8','g34','g34','im9', 'vss',l =0.45 ,w =round(W1*1e6,3))
    
    Vsource = circuit_1.V('source', 'im9', 'im9_2', 0@u_V)
    
    m9=circuit_1.X('m9', 'sky130_fd_pr__nfet_01v8','im9_2','bn1','vss', 'vss',l =0.45 ,w = round(W9*1e6,3))
    
    
    m10b=circuit_1.X('m10b', 'sky130_fd_pr__pfet_01v8','bp1','bp1','vdd', 'vdd',l =0.45 ,w = 1.5)
    Ibias10 = circuit_1.I('bp1', 'bp1','vss', I10)
    
    m6b=circuit_1.X('m6b', 'sky130_fd_pr__pfet_01v8','bp2','bp2','vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    Ibias6 = circuit_1.I('bp2', 'bp2','vss', 1.2e-05)
    
    
    m9b=circuit_1.X('m9b', 'sky130_fd_pr__nfet_01v8','bn1','bn1','vss', 'vss',l =0.45 ,w = round(W9*1e6,3))
    Ibias9 = circuit_1.I('bn1', 'vdd','bn1', 2.4e-05)
    
    cap=circuit_1.X('c1','sky130_fd_pr__cap_mim_m3_1','vout',circuit_1.gnd,w=5000,l=1)
    # print(circuit_1)
    # cap=circuit_1.C('c1','vout',circuit_1.gnd,cap*1e12@u_pF)
    # m1.minus.add_current_probe(circuit_1)
    simul = circuit_1.simulator()
    # analy = simul.transient(step_time=0.02e-6, end_time=1e-6)
    
    # analy =simul.ac(start_frequency=1@u_Hz, stop_frequency=GB, number_of_points=1000,  variation='dec')
    analy = simul.dc(VC=slice(-0.9,0.9,0.01))#.operating_point()#.dc(Vcontrol=slice(0,5,0.1))
    corr_i=[]
    corr_i_2=[]
    for node in analy.branches.values():
        # print(node)
        if str(node)=='vs':
            
            corr_i=(1.8*np.abs(np.array(node)))
        if str(node)=='vsource':
            corr_i_2=(1.8*np.abs(np.array(node)))
    
    figure, (ax2)  = plt.subplots(ncols=1)
    # ax2.semilogx(analy.frequency, 20*np.log10(np.absolute(analy.vout)))
    #-103. == np.round(np.real(20*np.log10((np.array(analy.vout))))) 
    ax2.plot(corr_i)
    ax2.grid(True)
    ax2.grid(True, which='minor')
    ax2.set_xlabel("dc [V]")
    ax2.set_ylabel("Corriente [A]")
    plt.savefig('analisis_watts_power_dc.png', bbox_inches='tight')
    figure, (ax1)  = plt.subplots(ncols=1)
    # ax2.semilogx(analy.frequency, 20*np.log10(np.absolute(analy.vout)))
    #-103. == np.round(np.real(20*np.log10((np.array(analy.vout))))) 
    ax1.plot(corr_i_2)
    ax1.grid(True)
    ax1.grid(True, which='minor')
    ax1.set_xlabel("dc [V]")
    ax1.set_ylabel("Corriente I5 [A]")
    plt.savefig('I5_corriente_vsource.png', bbox_inches='tight')
    
    
    
    return analy,np.max(corr_i)*1e6,(np.max(corr_i_2)/12e-12)*1e-6

def circuit_bode_ex(W1, W5, W9, W11,Cl,GB,I10):
    circuit_1 = Circuit('NMOS Transistor')
    

    
    
    
    
    
    
    # circuit_1.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym")
    #circuit.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym")
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/models/sky130.lib.spice', 'tt')
    circuit_1.lib(home+'/skywater-pdk-libs-sky130_fd_pr/models/custom_sky130_1v8.lib.spice', 'tt')
    #custom_sky130.lib.spice
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.pm3.spice')
    
    
    circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/models/sky130_fd_pr__cap_mim_m3_1_custom.model.spice')
    # /home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice')
    # circuit_1.include('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice')
    # Instanciate circuit elements
    Vc_fuente = circuit_1.V('C', 'vdd', circuit_1.gnd, 0.9@u_V)
    Vss_fuente = circuit_1.V('S', 'vss', circuit_1.gnd, -0.9@u_V)
    # Vbn1 = circuit_1.V('bn1', 'vbn1', circuit_1.gnd, 1.@u_V)
    
    
    # Vinn = circuit_1.V('inn', 'vinn', circuit_1.gnd, 0@u_V)
    
    # Vinp = circuit_1.V('inp', 'vinp', circuit_1.gnd, 0@u_V)
    
    v_in=circuit_1.SinusoidalVoltageSource('inp', 'vinp', circuit_1.gnd, amplitude=0.9@u_V,offset=0@u_V, frequency=GB)
    # v_in=circuit_1.SinusoidalVoltageSource('inp', 'vinp', circuit_1.gnd, amplitude=0.9@u_V,offset=0.9@u_V, frequency=1@u_kHz)
    # I_fuente = circuit_1.I('II', 'vdd', circuit_1.gnd, fuente_corr@u_A)
    # V_control_fuente = circuit_1.V('control', 'vg', circuit_1.gnd, first_v@u_V)
    # Vc_fuente.minus.add_current_probe(circuit_1)
    
    # M <name> <drain node> <gate node> <source node> <bulk/substrate node>
    # circuit_1.X('m1', 'sky130_fd_sc_hd__nand2_1','net1', 'net1', 'vdd', 'vdd')
    
    # circuit.X('cell', 'sky130_fd_sc_hd__nand2_1', 'A', 'B', 'VGND', 'VNB', 'VPB', 'VPWR', 'Y')
    
    
    
    # sky130_fd_pr__nfet_01v8                         d     g         s               b
    
    # m1=circuit_1.X('m1', 'sky130_fd_pr__nfet_01v8','vdd', 'vdd', circuit_1.gnd, circuit_1.gnd,l =LL ,w = WW)
    # sky130_fd_pr__nfet_01v8        
    #W1, W5, W9, W11

                                                          # d   g     s      b
    m10=circuit_1.X('m10', 'sky130_fd_pr__pfet_01v8','g34', 'bp1', 'vdd', 'vdd',l =0.45 ,w = 1.5)
    m7=circuit_1.X('m7', 'sky130_fd_pr__pfet_01v8','i75', 'i1', 'vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m8=circuit_1.X('m8', 'sky130_fd_pr__pfet_01v8','i86', 'i1', 'vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m5=circuit_1.X('m5', 'sky130_fd_pr__pfet_01v8','i1', 'bp2', 'i75', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m6=circuit_1.X('m6', 'sky130_fd_pr__pfet_01v8','vout', 'bp2', 'i86', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    
                                                    # d   g     s      b    
    m3=circuit_1.X('m3', 'sky130_fd_pr__nfet_01v8','i1', 'g34','i31', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m4=circuit_1.X('m4', 'sky130_fd_pr__nfet_01v8','vout','g34','im2', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m1=circuit_1.X('m1', 'sky130_fd_pr__nfet_01v8','i31','vinp','im9', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m2=circuit_1.X('m2', 'sky130_fd_pr__nfet_01v8','im2','vinn','im9', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m11=circuit_1.X('m11', 'sky130_fd_pr__nfet_01v8','g34','g34','im9', 'vss',l =0.45 ,w =round(W1*1e6,3))
    
    m9=circuit_1.X('m9', 'sky130_fd_pr__nfet_01v8','im9','bn1','vss', 'vss',l =0.45 ,w = round(W9*1e6,3))
    
    
    m10b=circuit_1.X('m10b', 'sky130_fd_pr__pfet_01v8','bp1','bp1','vdd', 'vdd',l =0.45 ,w = 1.5)
    Ibias10 = circuit_1.I('bp1', 'bp1','vss', I10)
    
    m6b=circuit_1.X('m6b', 'sky130_fd_pr__pfet_01v8','bp2','bp2','vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    Ibias6 = circuit_1.I('bp2', 'bp2','vss', 1.2e-05)
    
    
    m9b=circuit_1.X('m9b', 'sky130_fd_pr__nfet_01v8','bn1','bn1','vss', 'vss',l =0.45 ,w = round(W9*1e6,3))
    Ibias9 = circuit_1.I('bn1', 'vdd','bn1', 2.4e-05)
    
    
    R=circuit_1.R('r1','vout','vinn',1e12)
    C=circuit_1.C('c1','vinn',circuit_1.gnd,1e-9)
    # cap=circuit_1.X('c1','sky130_fd_pr__cap_mim_m3_1','vout',circuit_1.gnd,w=5000,l=1)
    C=circuit_1.C('cL','vout',circuit_1.gnd,1e-10)
    RL=circuit_1.R('rL','vout',circuit_1.gnd,1e6)
    # print(circuit_1)
    # cap=circuit_1.C('c1','vout',circuit_1.gnd,cap*1e12@u_pF)
    # m1.minus.add_current_probe(circuit_1)
    simul = circuit_1.simulator()
    # analy = simul.transient(step_time=0.02e-6, end_time=1e-6)
    
    analy =simul.ac(start_frequency=1@u_Hz, stop_frequency=GB, number_of_points=1000,  variation='dec')
    #analy = simul.dc(VC=slice(inicial_v,final_v,step_v))#.operating_point()#.dc(Vcontrol=slice(0,5,0.1))
    
    figure, (ax2)  = plt.subplots(ncols=1)
    ax2.semilogx(analy.frequency, 20*np.log10(np.absolute(analy.vout)))
    #-103. == np.round(np.real(20*np.log10((np.array(analy.vout))))) 
    ax2.grid(True)
    ax2.grid(True, which='minor')
    ax2.set_xlabel("Frequency [Hz]")
    ax2.set_ylabel("dB")
    plt.savefig('diagrama_bode.png', bbox_inches='tight')
    return 20*np.log10(np.absolute(analy.vout))

def circuit_bode_GB(W1, W5, W9, W11,Cl,GB,I10):
    circuit_1 = Circuit('NMOS Transistor')
    

    
    
    
    
    
    
    # circuit_1.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym")
    #circuit.include("/home/ral298/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym")
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/models/sky130.lib.spice', 'tt')
    circuit_1.lib(home+'/skywater-pdk-libs-sky130_fd_pr/models/custom_sky130_1v8.lib.spice', 'tt')
    #custom_sky130.lib.spice
    # circuit_1.lib('/home/ral298/skywater-pdk-libs-sky130_fd_pr/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.pm3.spice')
    
    
    circuit_1.include(home+'/skywater-pdk-libs-sky130_fd_pr/models/sky130_fd_pr__cap_mim_m3_1_custom.model.spice')
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
    

                                                          # d   g     s      b
    m10=circuit_1.X('m10', 'sky130_fd_pr__pfet_01v8','g34', 'bp1', 'vdd', 'vdd',l =0.45 ,w = 1.5)
    m7=circuit_1.X('m7', 'sky130_fd_pr__pfet_01v8','i75', 'i1', 'vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m8=circuit_1.X('m8', 'sky130_fd_pr__pfet_01v8','i86', 'i1', 'vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m5=circuit_1.X('m5', 'sky130_fd_pr__pfet_01v8','i1', 'bp2', 'i75', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    m6=circuit_1.X('m6', 'sky130_fd_pr__pfet_01v8','vout', 'bp2', 'i86', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    
                                                    # d   g     s      b    
    m3=circuit_1.X('m3', 'sky130_fd_pr__nfet_01v8','i1', 'g34','i31', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m4=circuit_1.X('m4', 'sky130_fd_pr__nfet_01v8','vout','g34','im2', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m1=circuit_1.X('m1', 'sky130_fd_pr__nfet_01v8','i31','vinp','im9', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m2=circuit_1.X('m2', 'sky130_fd_pr__nfet_01v8','im2','vinn','im9', 'vss',l =0.45 ,w = round(W1*1e6,3))
    m11=circuit_1.X('m11', 'sky130_fd_pr__nfet_01v8','g34','g34','im9', 'vss',l =0.45 ,w =round(W1*1e6,3))
    
    m9=circuit_1.X('m9', 'sky130_fd_pr__nfet_01v8','im9','bn1','vss', 'vss',l =0.45 ,w = round(W9*1e6,3))
    
    
    m10b=circuit_1.X('m10b', 'sky130_fd_pr__pfet_01v8','bp1','bp1','vdd', 'vdd',l =0.45 ,w = 1.5)
    Ibias10 = circuit_1.I('bp1', 'bp1','vss',I10)
    
    m6b=circuit_1.X('m6b', 'sky130_fd_pr__pfet_01v8','bp2','bp2','vdd', 'vdd',l =0.45 ,w = round(W5*1e6,3))
    Ibias6 = circuit_1.I('bp2', 'bp2','vss', 1.2e-05)
    
    
    m9b=circuit_1.X('m9b', 'sky130_fd_pr__nfet_01v8','bn1','bn1','vss', 'vss',l =0.45 ,w = round(W9*1e6,3))
    Ibias9 = circuit_1.I('bn1', 'vdd','bn1', 2.4e-05)
    
    
    
    cap=circuit_1.X('c1','sky130_fd_pr__cap_mim_m3_1','vout',circuit_1.gnd,w=5000,l=1)
    # print(circuit_1)
    # cap=circuit_1.C('c1','vout',circuit_1.gnd,cap*1e12@u_pF)
    # m1.minus.add_current_probe(circuit_1)
    simul = circuit_1.simulator()
    # analy = simul.transient(step_time=0.02e-6, end_time=1e-6)
    
    analy =simul.ac(start_frequency=1@u_Hz, stop_frequency=GB, number_of_points=1000,  variation='dec')
    #analy = simul.dc(VC=slice(inicial_v,final_v,step_v))#.operating_point()#.dc(Vcontrol=slice(0,5,0.1))
    
    figure, (ax2)  = plt.subplots(ncols=1)
    ax2.semilogx(analy.frequency, 20*np.log10(np.absolute(analy.vout)))
    #-103. == np.round(np.real(20*np.log10((np.array(analy.vout))))) 
    ax2.grid(True)
    ax2.grid(True, which='minor')
    ax2.set_xlabel("Frequency [Hz]")
    ax2.set_ylabel("dB")
    plt.savefig('GB.png', bbox_inches='tight')
    return 20*np.log10(np.absolute(analy.vout)),analy.frequency



def calculos_latex(Kn=0.00018143138538940045,Kp=5.9547447112103225e-05,Vthn=0.4757440736093547,Vthp=0.992624250824044,Lambda_n=0.07378031636474496,Lambda_p=0.014571800611007529,SR=2,Cl=12e-12,GB=4e6,ICMR_max=1.8,ICMR_min=0.77):
    #Datos propuestos:
    AV = 3000 
    VDD = 1.8
    VSS = 0
    # GB = 10e6
    # SR = 10
    Vout_max = 1.5      #Vout(max)
    Vout_min = 0.3      #Vout(min)
    # ICMR_max = 1.8      #Vin(max) 
    # ICMR_min = 0.8      #Vin(min) 
    Pd = 1e-3
    
    # Parametros de diseño
    L0 = 0.45e-6
    # Cl = 10e-12
    #   Transistor canal N
    # Vthn = 0.769432
    # Kn = 0.00015137603990044484 
    # Lambda_n = 0.08896373280684104
    #   Transistor canal P
    # Vthp = 0.624345
    # Kp = 0.000057013889055450486
    # Lambda_p = 0.06896373280684104
    
    # Paso 1
    
    print("\\begin{table}[H]\n\t\\centering\n\t\\begin{tabular}{|c|c|}")
    print("\t\\hline\n")
    print("\t\tkn:&",Kn," \\\\kp:&",Kp," \\\\vtn:&",Vthn," \\\\vtp:&",Vthp,"\\\\$\\lambda{}_p$:&",Lambda_n," \\\\$\\lambda{}_p$:&",Lambda_p," \\\\cl:&",Cl," \\\\I5:&",SR,'\\\\')
    print("\t\\hline\n")
    print("\t\\end{tabular}\n\t\\caption{Los valores usados de sky130 para realisar los calculos}\n\t\\label{tab:valous_use_sky130}\n\\end{table}")
    print("\\clearpage")
    print("\\begin{align*}")
    
    I9=SR*Cl/(1e-6)
    print("I_9=SR\\times{}C_L&="+str(SR)+"\\times{}"+str(Cl)+"\\pi{}\\\\")
    print("I_9&="+str(I9)+'\\\\')
    # print("I_9")
    # print("I9:",I9)
    # Paso 2
    gm=2*pi*GB*Cl
    print("g_m=2G_BC_L\\pi{}&="+"2*"+str(GB)+"*"+str(Cl)+"*"+"\\pi{}\\\\")
    print("g_m&="+str(gm)+'\\\\')
    I5=0.5*I9
    W1_L1=(gm**2)/(Kn*I5)
    print("\\frac{W_1}{L_1}=\\frac{W_2}{L_2}=\\frac{W_3}{L_3}=\\frac{W_4}{L_4}&=\\frac{gm^2}{k_nI_5}=\\frac{"+str(round(gm,5))+"^2}{"+str(round(Kn,5))+"*"+str(round(I5,5))+"}\\\\")
    print("\\text{Relación $w/l$ transistor 1 y 2}&:",W1_L1,'\\\\')
    W1=W1_L1*L0
    W1=W1_L1*L0
    print("\\text{w de transistor 1, 2, 3 y 4}&:",round(W1*1e6,3),'\\text{ }um\\\\')
    W2=W1
    # print("W1,W2",W1,W2)
    # Paso 3
    W3=W1
    W4=W1
    # print("W3,W4",W3,W4)
    # Paso 4  
    I10=0.000010        # I9/20 
    print("I_10&="+str(I10)+'\\\\')
    # print("I10",I10)
    # Paso 5
    I1=0.5*I9
    print("I_1=0.5\\times{}I_9\\\\")
    print("I_1=I_2&="+str(I1)+'\\\\')
    # print("I2:",I1)
    I2=I1
    W11_L11=(I10/(4*I1))*W1_L1
    print("\\frac{W_1}{L_1}=\\frac{I_{10}}{4I_1}\\frac{W_1}{L_1}=\\frac{"+str(round(I10,5))+"}{"+str(round(4*I1,5))+"}*"+str(round(W1_L1,3))+"\\\\")
    print("\\text{Relación $w/l$ transistor 11 }&:",W11_L11,'\\\\')
    W11=W11_L11*L0
    print("\\text{w de transistor 11}&:",round(W11*1e6,3),'\\text{ }um\\\\')
    # print("W11",W11)
    # Paso 6
    Vds3_sat=sqrt((2*I1)/(Kn*W1_L1))
    print("Vds_3(sat)=\\sqrt{\\frac{2\\times{}I_1}{K_n\\frac{W_1}{L_1}}}&=\\sqrt{\\frac{2\\times{}"+str(round(I1,7))+"}{"+str(round(Kn,7))+"\\times{}"+str(W1_L1)+"}}\\\\")
    print("Vds_3(sat)&="+str(Vds3_sat)+"\\\\")
    W7_L7=(2*I1)/((Kp*(VDD-ICMR_max-Vthp-Vds3_sat+Vthn)**2))
    print("\\frac{W_7}{L_7}=\\frac{2\\times{}I_1}{kp*(vdd-icmr-abs(vtp)+abs(vtn))^2}&=\\frac{2\\times{}"+str(round(I1,5))+"}{"+str(round(Kp,5))+"*("+str(round(VDD-ICMR_max-Vds3_sat-abs(Vthp)+abs(Vthn),3))+")^2}",'\\\\')
    print("\\frac{W_7}{L_7}=\\frac{W_8}{L_8}&=\\frac{W_5}{L_5}=\\frac{W_6}{L_6}=",W7_L7,"\\\\")
    # print("VDD-ICMR_max-Vthp-Vds3_sat+Vthn",VDD,ICMR_max,Vthp,Vds3_sat,Vthn)
    
    W7=W7_L7*L0
    W8=W7
    # print("W7,W8",W7,W8)
    # Paso 7
    W5=W7
    W6=W7
    print("\\text{w de transistor 5, 6, 7 y 8}&:",round(W7*1e6,3),'\\text{ }um\\\\')
    # Paso 8
    Vgs1=sqrt(I9/(Kn*W1_L1))+Vthn
    print("Vgs_1=\\sqrt{\\frac{\\times{}I_9}{K_n\\frac{W_1}{L_1}}}&=\\sqrt{\\frac{"+str(round(I9,7))+"}{"+str(round(Kn,7))+"\\times{}"+str(W1_L1)+"}}\\\\")
    print("Vgs_1&="+str(Vgs1)+"\\\\")
    W9_L9=(2*I9)/(Kn*(ICMR_min-Vgs1)**2)
    print("\\frac{W_9}{L_9}=\\frac{2\\times{}I_9}{kn*(icmr_{min}-Vgs_1)^2}&=\\frac{2\\times{}"+str(round(I9,5))+"}{"+str(round(Kn,5))+"*"+str(round(ICMR_min-Vgs1,3))+"^2}",'\\\\')
    print("\\frac{W_9}{L_9}=",W9_L9,"\\\\")
    
    W9=W9_L9*L0
    print("\\text{w de transistor 9}&:",round(W9*1e6,3),'\\text{ }um\\\\')
    # Paso 9
    print("rds_2&=\\frac{1}{\\lambda{}_nI2}=\\frac{1}{"+str(round(Lambda_n*I2,7))+"}\\\\")
    rds2=1/(Lambda_n*I2)
    print("rds_2&=",round(rds2,3),"\\\\")
    print("rds_6&=\\frac{1}{\\lambda{}_pI2}=\\frac{1}{"+str(round(Lambda_p*I2,7))+"}\\\\")
    rds6=1/(Lambda_p*I2)
    print("rds_6&=",round(rds6,3),"\\\\")
    gm4=sqrt(2*Kn*W1_L1*I2)
    print("gm_4&=\\sqrt{2\\times{}K_n\\frac{W_1}{L_1}I_2}\\\\")
    print("gm_4&="+str(round(gm4,6))+"\\\\")
    gm6=sqrt(2*Kp*W7_L7*I2)
    print("gm_6&=\\sqrt{2\\times{}K_p\\frac{W_7}{L_7}I_2}\\\\")
    print("gm_6&="+str(round(gm6,6))+"\\\\")
    Rout=1/((1/(rds2*gm4*rds2))+(1/(rds6*gm6*rds6)))
    print("R_{out}&=\\frac{1}{\\frac{1}{rds_2\\times{}gm_4\\times{}rds_2}+\\frac{1}{rds_6\\times{}gm_6\\times{}rds_6}}\\\\")
    print("R_{out}&=\\frac{1}{\\frac{1}{"+str(round(rds2,4))+"\\times{}"+str(round(gm4,4))+"\\times{}"+str(round(rds2,4))+"}+\\frac{1}{"+str(round(rds6,4))+"\\times{}"+str(round(gm6,7))+"\\times{}"+str(round(rds6,4))+"}}\\\\")
    print("R_{out}&="+str(round(Rout,4))+"\\\\")
    A0=gm*Rout
    print("\\end{align*}")
    print("\\begin{align*}")
    print("A_0&=gm*R_{out}\\\\")
    print("A_0&="+str(round(gm,4))+"*"+str(round(Rout,4))+"\\\\")
    A0_db=20*log10(A0)
    print("A_0&="+str(round(A0_db,5))+"\\\\")
    # Paso 10
    
    print("Vds_8(sat)&=\\sqrt{\\frac{2I_2}{K_n\\frac{W_7}{L_7}}}\\\\")
    print("Vds_8(sat)&=\\sqrt{\\frac{2"+str(round(I2,5))+"}{"+str(round(Kn,5))+"\\times{}"+str(round(W7_L7,5))+"}}\\\\")
    Vds8_sat=sqrt((2*I2)/(Kn*W7_L7))
    print("Vds_8(sat)&="+str(round(Vds8_sat,4))+"\\\\")
    Vds9_sat=sqrt((2*I9)/(Kn*W9_L9))
    print("Vds_9(sat)&=\\sqrt{\\frac{2I_9}{K_n\\frac{W_9}{L_9}}}\\\\")
    print("Vds_9(sat)&=\\sqrt{\\frac{2"+str(round(I9,5))+"}{"+str(round(Kn,5))+"\\times{}"+str(round(W9_L9,5))+"}}\\\\")
    print("Vds_8(sat)&="+str(round(Vds9_sat,4))+"\\\\")
    V0_max=VDD-(2*Vds8_sat)
    V0_min=(2*Vds3_sat)+Vds9_sat
    print("\\end{align*}")
    
    return W1, W5, W9, W11,Cl,GB,I10
W1, W5, W9, W11,Cl,GB,I10=calculos_latex()
# print("W1, W5, W9,1 W11",W1, W5, W9, W11)
db=circuit_bode_ex(W1, W5, W9, W11,Cl,GB,I10)
_,pdis,sr=circuit_dc(W1, W5, W9, W11,Cl,GB,I10)

print("\\begin{table}[H]\n\t\\centering\n\t\\begin{tabular}{|c|c|}")
print("\t\\hline\n")
print("$P_{diss}$:&",pdis,'uW\\\\')
print("$SR$:&",sr,'V/uS\\\\')

gain= db[0]/(10e6*1e-10)

print("gain:&",gain,'\\\\')


dat,fre=circuit_bode_GB(W1, W5, W9, W11,Cl,GB,I10)

for i in range(dat.shape[0]):
    if (dat[i]<=dat[0]-3):
        print("GB:&",fre[i],'\\\\')
        break
print("\t\\hline\n")    
print("\t\\end{tabular}\\\n\t\\caption{Valores obtenidos haciendo uso de simulaciones usando \\textbf{XSCHEM}}\n\t\\label{tab:exp_labs}\n\\end{table}")


print("\\begin{figure}[H]")
print("\t\\centering")
print("\t\\includegraphics[scale=0.6]{Tareas/tarea2_opam/analisis_watts_power_dc.png}")
print("\t\\caption{Grafica de uso de la corriente en el circuito electrónico para calcular el consumo de watts.}")
print("\t\\label{fig:watts}")
print("\\end{figure}")


print("\\begin{figure}[H]")
print("\t\\centering")
print("\t\\includegraphics[scale=0.6]{Tareas/tarea2_opam/I5_corriente_vsource.png}")
print("\t\\caption{Grafica de uso de la corriente en el transistor M5 para calcular el Slew rate.}")
print("\t\\label{fig:vsource_I5}")
print("\\end{figure}")

print("\\begin{figure}[H]")
print("\t\\centering")
print("\t\\includegraphics[scale=0.6]{Tareas/tarea2_opam/diagrama_bode.png}")
print("\t\\caption{Diagrama de bode obtenido para el calculo de la ganancia del circuito.}")
print("\t\\label{fig:dia_bode_gain}")
print("\\end{figure}")


print("\\begin{figure}[H]")
print("\t\\centering")
print("\t\\includegraphics[scale=0.6]{Tareas/tarea2_opam/GB.png}")
print("\t\\caption{Diagrama de bode obtenido para el calculo de la GB.}")
print("\t\\label{fig:GB}")
print("\\end{figure}")


#diagrama_bode.png
#analisis_watts_power_dc.png
#I5_corriente_vsource.png
#GB.png
