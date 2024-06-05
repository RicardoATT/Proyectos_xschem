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
Vout_max = 1.5      #Vout(max)
Vout_min = 0.3      #Vout(min)
ICMR_max = 1.8      #Vin(max) 
ICMR_min = 0.8      #Vin(min) 
Pd = 1e-3

# Parametros de diseño
L0 = 0.15e-6
Cl = 12e-12
#   Transistor canal N
Vthn = 0.769432
Kn = 0.00015137603990044484 
Lambda_n = 0.08896373280684104
#   Transistor canal P
Vthp = 0.624345
Kp = 0.000057013889055450486
Lambda_p = 0.06896373280684104

# Paso 1
I9=SR*Cl/(1e-6)

# Paso 2
gm=2*pi*GB*Cl
I5=0.5*I9
W1_L1=(gm**2)/(Kn*I5)
W1=W1_L1*L0
W2=W1

# Paso 3
W3=W1
W4=W1

# Paso 4  
I10=12e-6        # I9/10

# Paso 5
I1=0.5*I9
I2=I1
W11_L11=(I10/(4*I1))*W1_L1
W11=W11_L11*L0

# Paso 6
Vds3_sat=sqrt((2*I1)/(Kn*W1_L1))
W7_L7=(2*I1)/(Kp*(VDD-ICMR_max-Vthp-Vds3_sat+Vthn))
W7=W7_L7*L0
W8=W7

# Paso 7
W5=W7
W6=W7

# Paso 8
Vgs1=sqrt(I9/(Kn*W1_L1))+Vthn
W9_L9=(2*I9)/(Kn*(ICMR_min-Vgs1)**2)
W9=W9_L9*L0

# Paso 9
rds2=1/(Lambda_n*I2)
rds6=1/(Lambda_p*I2)
gm4=sqrt(2*Kn*W1_L1*I2)
gm6=sqrt(2*Kp*W7_L7*I2)
Rout=1/((1/(rds2*gm4*rds2))+(1/(rds6*gm6*rds6)))
A0=gm*Rout
A0_db=20*log10(A0)

# Paso 10
Vds8_sat=sqrt((2*I2)/(Kn*W7_L7))
Vds9_sat=sqrt((2*I9)/(Kn*W9_L9))
V0_max=VDD-(2*Vds8_sat)
V0_min=(2*Vds3_sat)+Vds9_sat

print("W1=",round(W1*1e6, 3),"um")
print("W5=",round(W5*1e6, 3),"um")
print("W9=",round(W9*1e6, 3),"um")
print("W11=",round(W11*1e6, 3),"um")
print("Av=",A0)
print(V0_max, V0_min)
print("I1=",I1)
print("I9=",I9)
print("I10=",I10)
print("Rout=",Rout)

'''
# Calculo de Av
Datos_Av = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/simple_one_stage_opamp_av.ssv')
Y_Av = Datos_Av[0:1, 1]
Av_final = Y_Av[0]/(100e3*1.2e-6)

# Cálculo de GB
Datos_GB = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/simple_one_stage_opamp_gb.ssv')
X_GB = Datos_GB[5:7, 0]
Y_GB = Datos_GB[5:7, 1]
m_GB = (Y_GB[1]-Y_GB[0])/(X_GB[1]-X_GB[0])
b_GB = Y_GB[1]-(m_GB*X_GB[1])
GB_final = (Y_GB[0]-3-b_GB)/m_GB

# Cálculo de Pdiss
Pdiss=VDD*I5

# Cálculo de SR
Datos_SR = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/simple_one_stage_opamp_sr.ssv')
X = Datos_SR[49997:50018, 0]
Y = Datos_SR[49997:50018, 1]
x_bias1 = np.c_[np.ones(X.shape[0]), X]
# Calculo de la pendiente para el SR -> theta = (X^T * X)^-1 * X^T * y
theta = np.linalg.inv(x_bias1.T @ x_bias1) @ x_bias1.T @ Y


# Formato en LaTeX
print("\\begin{equation}")
print(" \\begin{array}{l l}")

print("\\textbf{Parametros conocidos} \\\\")
print("V_{DD} = ",VDD," V \\\\")
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

print("\\\\")
print("\\textbf{Paso 1} \\\\")
print("I_{5} = SR \\times C_{L} = "+str(SR)+"\\times"+str(Cl)+" \\\\")
print("I_{5} = ",round(I5*1e6, 6),"\\mu A \\\\")

print("\\\\")
print("\\textbf{Paso 2} \\\\")
print("g_{m} = 2\\pi{} \\times GB \\times C_{L} = 2 \\pi{} \\times"+str(GB)+"\\times",Cl," \\\\")
print("g_{m} = ",round(gm*1e6, 6)," \\mu S \\\\")
print("\\frac{W_1}{L_1} = \\frac{gm^2}{K'_{N}\\times I_5} = \\frac{"+str(round(gm, 6))+"^2}{"+str(round(Kn, 6))+"\\times"+str(round(I5, 6))+"}\\\\")
print("\\frac{W_1}{L_1} = ",round(W1_L1, 6)," \\\\")
print("W_{1} = \\frac{W_1}{L_1} \\times L_{min} = ",round(W1_L1, 6),"\\times",L0," \\\\")
print("W_{1} = W_{2} = ",round(W1*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 3} \\\\")
print("\\frac{W_3}{L_3} = \\frac{I_5}{K'_{P}\\times \\left[(V_{DD}-ICMR^{+}-|V_{TP}|+V_{TN}\\right]^{2}} = \\frac{",round(I5, 6),"}{",round(Kp, 6),"\\times \\left[",VDD,"-",ICMR_max,"-",round(Vthp, 6),"+",round(Vthn, 6),"\\right]^{2}} \\\\")
print("\\frac{W_3}{L_3} = ",round(W3_L3, 6)," \\\\")
print("W_{3} = \\frac{W_3}{L_3} \\times L_{min} = ",round(W3_L3, 6),"\\times",L0," \\\\")
print("W_{3} = W_{4} = ",round(W3*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 4} \\\\")
print("V_{GS1} = \\sqrt{\\frac{I_{5}}{K'_{N}\\times\\frac{W_{1}}{L_{1}}}}+V_{TN} = \\sqrt{\\frac{",round(I5, 6),"}{",round(Kn, 6),"\\times",round(W1_L1, 6),"}}+",round(Vthn, 6)," \\\\")
print("V_{GS1} = ",round(Vgs1, 6)," V \\\\")
print("\\frac{W_{5}}{L_{5}} = \\frac{2\\times I_{5}}{K'_{N}\\times (ICMR^{-}-V_{{GS1}})^{2}} = \\frac{2\\times",round(I5, 6),"}{",round(Kn, 6),"\\times (",ICMR_min,"-",round(Vgs1, 6),")^{2}}"" \\\\")
print("\\frac{W_5}{L_5} = ",round(W5_L5, 6)," \\\\")
print("W_{5} = \\frac{W_5}{L_5} \\times L_{min} = ",round(W5_L5, 6),"\\times",L0," \\\\")
print("W_{5} = W_{6} = ",round(W5*1e6, 6)," \\mu m \\\\")
    
print("\\\\")
print("\\textbf{Paso 5} \\\\")
print("A_{0} = \\frac{2g_{m}}{(\\lambda_{N}+\\lambda_{P})\\times I_{5}} = \\frac{2\\times",round(gm, 6),"}{(",round(Lambda_n, 6),"+",round(Lambda_p, 6),")\\times",round(I5, 6),"} \\\\")
print("A_{0} = ",round(A0, 6)," = ",round(A0_db, 6)," db \\\\")

print("\\\\")
print("\\textbf{Parámetros calculados} \\\\")
print("W_{1} = W_{2} = W_{3} = W_{4} = ",round(W1*1e6, 6),' \\mu m \\\\')
print("W_{5} = W_{6} = W_{7} = W_{8} = ",round(W5*1e6, 6),' \\mu m \\\\')
print("W_{9} = ",round(W9*1e6, 6),' \\mu m \\\\')
print("W_{11} = ",round(W11*1e6, 6),' \\mu m \\\\')
print("L_{1} - L_{11} = ",round(L0*1e6, 6),' \\mu m \\\\')

print("\\\\")
print("\\textbf{Resultados obtenidos de la simulación} \\\\")
print("A_{V} = \\frac{A_{V}(0)}{R \\times C} = \\frac{",round(Y_Av[0], 6),"}{",100e3,"\\times",12e-9,"} \\\\")
print("A_{V} = ",round(Av_final, 6)," \\\\")
print("P_{diss} = V_{DD} \\times I_{5} = ",1.8,"\\times",round(I5,6)," \\\\")
print("P_{diss} = ",round(Pdiss*1e3, 6)," mW \\\\")
print("GB = ",round(GB_final*1e-3, 6)," KHz \\\\")
print("Slew Rate = ",round(theta[1]*1e-8, 6),"\\frac{V}{\\mu s} \\\\")

print(" \\end{array}")
print("\\end{equation}")
'''