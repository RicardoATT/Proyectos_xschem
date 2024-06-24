from math import sqrt
from math import pi
from math import log10
import math
import numpy as np 

#Datos propuestos:
AV = 3000 
VDD = 1.8
VSS = 0
GB = 10e6
SR = 10
Vout_max = 1.4      #Vout(max)
Vout_min = 0.3      #Vout(min)
ICMR_max = 1.8      #Vin(max) 
ICMR_min = 0.8      #Vin(min) 
Pd = 1e-3

# Parametros de diseño
L0 = 0.45e-6
Cl = 15e-12
#   Transistor canal N
Vthn = 0.769432
Kn = 0.00015137603990044484 
Lambda_n = 0.08896373280684104
#   Transistor canal P
Vthp = 0.624345
Kp = 0.000057013889055450486
Lambda_p = 0.06896373280684104

# Paso 1
I3=SR*Cl/(1e-6)
I1=I3/2

# Paso 2
I4=1.1*I3
I5=I4

# Paso 3
Vsd4_sat=0.5*(VDD-Vout_max)
W4_L4=(2*I4)/(Kp*(Vsd4_sat**2))
W4=W4_L4*L0
W5=W4

# Paso 4
I6=I4
I7=I4
W6=W4
W7=W4

# Paso 5
I8=I4
Vds8_sat=0.5*(Vout_min-VSS)
W8_L8=(2*I8)/(Kn*(Vds8_sat**2))
W8=W8_L8*L0
W9=W8
W10=W8
W11=W8

# Paso 6
W1_L1=((GB**2)*(Cl**2))/(Kn*I3)
W1=W1_L1*L0
W2=W1

# Paso 7
Vds3_sat=(sqrt(I3/(Kn*W1_L1)))-Vthn
W3_L3=(2*I3)/(Kn*(Vds3_sat**2))
W3=W3_L3*L0

# Paso 8
W4_L4_CM=(2*I4)/(Kp*(VDD-ICMR_max+Vthn)**2)
if(W4_L4>W4_L4_CM):
    print("Relacion W4/L4 bien calculada")
else:
    print("Corregir relación W4/L4")

# Paso 9
It=I4+I5
Pdiss=(VDD-VSS)*(It)
gm4=sqrt(2*I4*Kp*W4_L4)
gm6=sqrt(2*((It-I3)/2)*Kp*W4_L4)
gm8=sqrt(2*((It-I3)/2)*Kn*W8_L8)
gm1=sqrt(2*I1*Kn*W1_L1)
rds4=1/(Lambda_p*I4)
rds6=1/(Lambda_p*((It-I3)/2))
rds8=1/(Lambda_n*((It-I3)/2))
rds1=1/(Lambda_n*I1)
Rout=1/((1/(gm8*rds8*rds8))+(1/(gm6*rds6*(1/(1/rds1)+(1/rds4)))))
A0=gm1*Rout
A0_db=20*log10(A0)

# Calculo de Av
Datos_Av = np.loadtxt('/home/ricardoatt/RATT_repos/Proyectos_xschem/simulations/folded_one_stage_opamp_av.ssv')
Y_Av = Datos_Av[0:1, 1]
Av_final = Y_Av[0]/(1e6*1.5e-9)

# Cálculo de GB
Datos_GB = np.loadtxt('/home/ricardoatt/RATT_repos/Proyectos_xschem/simulations/folded_one_stage_opamp_gb.ssv')
X_GB = Datos_GB[5:7, 0]
Y_GB = Datos_GB[5:7, 1]
m_GB = (Y_GB[1]-Y_GB[0])/(X_GB[1]-X_GB[0])
b_GB = Y_GB[1]-(m_GB*X_GB[1])
GB_final = (Y_GB[0]-0.11-b_GB)/m_GB

# Cálculo de Pdiss
Pdiss=VDD*(It)

# Cálculo de SR
Datos_SR = np.loadtxt('/home/ricardoatt/RATT_repos/Proyectos_xschem/simulations/folded_one_stage_opamp_sr.ssv')
X = Datos_SR[50023:50027, 0]
Y = Datos_SR[50023:50027, 1]
x_bias1 = np.c_[np.ones(X.shape[0]), X]
# Calculo de la pendiente para el SR -> theta = (X^T * X)^-1 * X^T * y
theta = np.linalg.inv(x_bias1.T @ x_bias1) @ x_bias1.T @ Y

# Formato en LaTeX
print("\\begin{equation}")
print(" \\begin{array}{l l}")

print("\\textbf{Parametros conocidos} \\\\")
print("V_{DD} = ",VDD," V \\\\")
print("V_{SS} = ",VSS," V \\\\")
print("L_{min} = ",round(L0*1e9, 6)," nm \\\\")
print(str(round(ICMR_min, 6))+" V \\leq ICMR \\leq "+str(round(ICMR_max, 6))+" V \\\\")
print("K'_{N} = ",round(Kn*1e6, 6)," \\frac{\\mu A}{V^{2}} \\\\")
print("K'_{P} = ",round(Kp*1e6, 6)," \\frac{\\mu A}{V^{2}} \\\\")
print("V_{TN} = ",round(Vthn, 6)," V \\\\")
print("V_{TP} = ",round(Vthp, 6)," V \\\\")
print("\\lambda_{N} = ",round(Lambda_n, 6)," V^{-1} \\\\")
print("\\lambda_{P} = ",round(Lambda_p, 6)," V^{-1} \\\\")
print("C_{L} = ",round(Cl*1e12, 6)," pF \\\\")

print("\\\\")
print("\\textbf{Características deseadas} \\\\")
print("A_{V} = ",AV," \\frac{V}{V} \\\\")
print("P_{diss} \leq ",Pd*1e3," mW \\\\")
print("GB = ",round(GB/1e6, 6)," MHz \\\\")
print("SR \\geq ",SR," \\frac{V}{\\mu s} \\\\")
print(str(round(Vout_min, 6))+" V \\leq V_{OUT} \\leq "+str(round(Vout_max, 6))+" V \\\\")

print("\\\\")
print("\\textbf{Paso 1} \\\\")
print("I_{3} = SR \\times C_{L} = "+str(SR)+"\\times"+str(Cl)+" \\\\")
print("I_{3} = ",round(I3*1e6, 6),"\\mu A \\\\")
print("I_{1} = \\frac{I_{3}}{2} = \\frac{",round(I3*1e6, 6),"}{2} \\\\")
print("I_{1} = I_{2} = ",round(I1*1e6, 6),"\\mu A \\\\")

print("\\\\")
print("\\textbf{Paso 2} \\\\")
print("I_{4} = 1.1 \\times I_{3} = 1.1 \\times",round(I3*1e6, 6)," \\\\")
print("I_{4} = I_{5} = ",round(I4*1e6, 6),"\\mu A \\\\")

print("\\\\")
print("\\textbf{Paso 3} \\\\")
print("V_{SD4}(sat) = 0.5 \\times \\left[ V_{DD} - V_{OUT}(max) \\right] = 0.5 \\times \\left[ ",VDD," - ",Vout_max," \\right] \\\\")
print("V_{SD4} = V_{SD5} = ",round(Vsd4_sat, 6)," V \\\\")
print("\\frac{W_4}{L_4} = \\frac{2\\times I_{4}}{K'_{P}\\times V_{SD4}(sat)^2} = \\frac{2\\times",round(I4, 6),"}{",round(Kp, 6),"\\times (",round(Vsd4_sat, 6),")^2} \\\\")
print("\\frac{W_4}{L_4} = ",round(W4_L4, 6)," \\\\")
print("W_{4} = \\frac{W_4}{L_4} \\times L_{min} = ",round(W4_L4, 6),"\\times",L0," \\\\")
print("W_{4} = W_{5} = ",round(W4*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 4} \\\\")
print("\\text{Se asume que} I_{7} = I_{6} = I_{4} = ",round(I4*1e6, 6),"\\mu A \\\\")
print("\\text{Por lo tanto} \\frac{W_7}{L_7} = \\frac{W_6}{L_6} = \\frac{W_4}{L_4} = ",round(W4_L4, 6)," \\\\")
print("W_{7} = W_{6} = W_{4} = ",round(W4*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 5} \\\\")
print("\\text{Se asume que} I_{8} = I_{4} = ",round(I4*1e6, 6),"\\mu A \\\\")
print("V_{DS8}(sat) = 0.5 \\times \\left[ V_{OUT}(min) - V_{SS} \\right] = 0.5 \\times \\left[ ",Vout_min," - ",VSS," \\right] \\\\")
print("V_{DS8}(sat) = ",round(Vds8_sat, 6)," V \\\\")
print("\\frac{W_8}{L_8} = \\frac{2\\times I_{8}}{K'_{N}\\times V_{DS8}(sat)^2} = \\frac{2\\times",round(I8, 6),"}{",round(Kn, 6),"\\times (",round(Vds8_sat, 6),")^2} \\\\")
print("\\frac{W_8}{L_8} = ",round(W8_L8, 6)," \\\\")
print("W_{8} = \\frac{W_8}{L_8} \\times L_{min} = ",round(W8_L8, 6),"\\times",L0," \\\\")
print("W_{8} = W_{9} = W_{10} = W_{11} = ",round(W8*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 6} \\\\")
print("\\frac{W_1}{L_1} = \\frac{\\left( GB^2 \\times C_{L}^2 \\right)}{K'_{N} \\times I_{3}} = \\frac{\\left( ",GB,"^2 \\times ",Cl,"^2 \\right)}{",round(Kn, 6)," \\times ",round(I3, 6),"} \\\\")
print("\\frac{W_1}{L_1} = ",round(W1_L1, 6)," \\\\")
print("W_{1} = \\frac{W_1}{L_1} \\times L_{min} = ",round(W1_L1, 6),"\\times",L0," \\\\")
print("W_{1} = W_{2} = ",round(W1*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 7} \\\\")
print("V_{DS3}(sat) = \\sqrt{\\frac{I_{3}}{K'_{N} \\times \\frac{W_1}{L_1}}} - V_{TN} = \\sqrt{\\frac{",I3,"}{",Kn," \\times ",round(W1_L1, 6),"}} - ",Vthn," \\\\")
print("V_{DS3}(sat) = ",round(Vds3_sat, 6)," V \\\\")
print("\\frac{W_3}{L_3} = \\frac{2\\times I_{3}}{K'_{N} \\times V_{DS3}(sat)^2} = \\frac{2\\times",round(I3, 6),"}{",round(Kn, 6),"\\times (",round(Vds3_sat, 6),")^2} \\\\")
print("\\frac{W_3}{L_3} = ",round(W3_L3, 6)," \\\\")
print("W_{3} = \\frac{W_3}{L_3} \\times L_{min} = ",round(W3_L3, 6),"\\times",L0," \\\\")
print("W_{3}  = ",round(W3*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 8} \\\\")
print("\\frac{W_4}{L_4}_{spec} = \\frac{2\\times I_{4}}{K'_{P} \\times \\left( V_{DD} - ICMR^{+} + V_{TN} \\right) ^2} = \\frac{2 \\times ",round(I4, 6),"}{",round(Kp, 6)," \\times \\left( ",VDD," - ",ICMR_max," + ",round(Vthn, 6)," \\right) ^2} \\\\")
print("\\frac{W_4}{L_4}_{spec} = ",round(W4_L4_CM, 6)," \\\\")
print("\\text{Se observa que} \\frac{W_4}{L_4} \\geq \\frac{W_4}{L_4}_{spec} \\text{por lo que la relación} \\frac{W_4}{L_4} \\text{esta bien calculada} \\\\")

print("\\\\")
print("\\textbf{Paso 9} \\\\")
print("I_{T} = I_{4} + I_{5} = ",round(I4, 6),"+",round(I5, 6)," \\\\")
print("I_{T} = ",round(It*1e6, 6)," \\mu A \\\\")
print("P_{diss} = (V_{DD} - V_{SS}) \\times I_{T} = (",VDD,"-",VSS,") \\times ",round(It, 6)," \\\\")
print("P_{diss} = ",round(Pdiss*1e3, 6)," mW \\\\")
print("g_{m1} = \\sqrt{2 \\times I_{1} \\times K'_{N} \\times \\frac{W_1}{L_1}} = \\sqrt{2 \\times ",I1," \\times ",round(Kn, 6)," \\times ",round(W1_L1, 6),"} \\\\")
print("g_{m1} = ",round(gm1*1e6, 6)," \\mu S \\\\")
print("g_{m4} = \\sqrt{2 \\times I_{4} \\times K'_{P} \\times \\frac{W_4}{L_4}} = \\sqrt{2 \\times ",I4," \\times ",round(Kp, 6)," \\times ",round(W4_L4, 6),"} \\\\")
print("g_{m4} = ",round(gm4*1e6, 6)," \\mu S \\\\")
print("g_{m6} = \\sqrt{2 \\times \\left( \\frac{I_{T} - I_{3}}{2} \\right) \\times K'_{P} \\times \\frac{W_4}{L_4}} = \\sqrt{2 \\times \\left( \\frac{",round(It, 6)," - ",round(I3, 6),"}{2} \\right) \\times ",round(Kp, 6)," \\times ",round(W4_L4, 6),"} \\\\")
print("g_{m6} = ",round(gm6*1e6, 6)," \\mu S \\\\")
print("g_{m8} = \\sqrt{2 \\times \\left( \\frac{I_{T} - I_{3}}{2} \\right) \\times K'_{N} \\times \\frac{W_8}{L_8}} = \\sqrt{2 \\times \\left( \\frac{",round(It, 6)," - ",round(I3, 6),"}{2} \\right) \\times ",round(Kn, 6)," \\times ",round(W8_L8, 6),"} \\\\")
print("g_{m8} = ",round(gm8*1e6, 6)," \\mu S \\\\")
print("r_{ds1} = \\frac{1}{\\lambda_{N} \\times I_{1}} = \\frac{1}{",round(Lambda_n, 6)," \\times ",round(I1, 6),"} \\\\")
print("r_{ds1} = ",round(rds1*1e-3, 6)," K \\Omega \\\\")
print("r_{ds4} = \\frac{1}{\\lambda_{P} \\times I_{4}} = \\frac{1}{",round(Lambda_p, 6)," \\times ",round(I4, 6),"} \\\\")
print("r_{ds4} = ",round(rds4*1e-3, 6)," K \\Omega \\\\")
print("r_{ds6} = \\frac{1}{\\lambda_{P} \\times \\left( \\frac{I_{T} - I_{3}}{2} \\right)} = \\frac{1}{",round(Lambda_p, 6)," \\times \\left( \\frac{",round(It, 6)," - ",round(I3, 6),"}{2} \\right)} \\\\")
print("r_{ds6} = ",round(rds6*1e-3, 6)," K \\Omega \\\\")
print("r_{ds8} = \\frac{1}{\\lambda_{N} \\times \\left( \\frac{I_{T} - I_{3}}{2} \\right)} = \\frac{1}{",round(Lambda_n, 6)," \\times \\left( \\frac{",round(It, 6)," - ",round(I3, 6),"}{2} \\right)} \\\\")
print("r_{ds8} = ",round(rds8*1e-3, 6)," K \\Omega \\\\")
print("R_{OUT} = \\left( g_{m8} \\times r_{ds8}^{2} \\right) || \\left[ g_{m6} \\times r_{ds6} \\times \\left( r_{ds1} || r_{ds4} \\right) \\right] \\\\")
print("R_{OUT} = \\left( ",round(gm8, 6)," \\times ",round(rds8, 6),"^{2} \\right) || \\left[ ",round(gm6, 6)," \\times ",round(rds6, 6)," \\times \\left( ",round(rds1, 6)," || ",round(rds4, 6)," \\right) \\right] \\\\")
print("R_{OUT} = ",round(Rout*1e-6, 6)," M \\Omega \\\\")
print("A_{0} = g_{m1} \\times R_{OUT} = ",round(gm1, 6)," \\times ",round(Rout, 6)," \\\\")
print("A_{0} = ",round(A0, 6)," = ",round(A0_db, 6)," db \\\\")

print("\\\\")
print("\\textbf{Parámetros calculados} \\\\")
print("W_{1} = W_{2} = ",round(W1*1e6, 6),' \\mu m \\\\')
print("W_{3} = ",round(W3*1e6, 6),' \\mu m \\\\')
print("W_{4} = W_{5} = W_{6} = W_{7} = ",round(W4*1e6, 6),' \\mu m \\\\')
print("W_{8} = W_{9} = W_{10} = W_{11} = ",round(W8*1e6, 6),' \\mu m \\\\')
print("L_{1} - L_{11} = ",round(L0*1e6, 6),' \\mu m \\\\')

print("\\\\")
print("\\textbf{Resultados obtenidos de la simulación} \\\\")
print("A_{V} = \\frac{A_{V}(0)}{R \\times C} = \\frac{",round(Y_Av[0], 6),"}{",100e3,"\\times",12e-9,"} \\\\")
print("A_{V} = ",round(Av_final, 6)," \\\\")
print("P_{diss} = V_{DD} \\times (I_{9}+I_{10}) = ",1.8,"\\times (",round(I4,6)," + ",round(I5,6),") \\\\")
print("P_{diss} = ",round(Pdiss*1e3, 6)," mW \\\\")
print("GB = ",round(GB_final*1e-3, 6)," KHz \\\\")
print("Slew Rate = ",round(theta[1]*1e-8, 6),"\\frac{V}{\\mu s} \\\\")

print(" \\end{array}")
print("\\end{equation}")

print("I1=",I1*1e6)
print("I3=",I3*1e6)
print("I4=",I4*1e6)
print(".param W1=",round(W1*1e6,3))
print(".param W3=",round(W3*1e6,3))
print(".param W4=",round(W4*1e6,3))
print(".param W8=",round(W8*1e6,3))
print(".param L0=",round(L0*1e6,3))