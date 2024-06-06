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
W10_L10=50
W10=W10_L10*L0

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

# Calculo de Av
Datos_Av = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/cascode_one_stage_opamp_av.ssv')
Y_Av = Datos_Av[0:1, 1]
Av_final = Y_Av[0]/(100e3*1.2e-8)

# Cálculo de GB
Datos_GB = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/cascode_one_stage_opamp_gb.ssv')
X_GB = Datos_GB[5:7, 0]
Y_GB = Datos_GB[5:7, 1]
m_GB = (Y_GB[1]-Y_GB[0])/(X_GB[1]-X_GB[0])
b_GB = Y_GB[1]-(m_GB*X_GB[1])
GB_final = (Y_GB[0]-3-b_GB)/m_GB

# Cálculo de Pdiss
Pdiss=VDD*(I9+I10)

# Cálculo de SR
Datos_SR = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/cascode_one_stage_opamp_sr.ssv')
X = Datos_SR[50010:50018, 0]
Y = Datos_SR[50010:50018, 1]
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
print("I_{9} = SR \\times C_{L} = "+str(SR)+"\\times"+str(Cl)+" \\\\")
print("I_{9} = ",round(I9*1e6, 6),"\\mu A \\\\")

print("\\\\")
print("\\textbf{Paso 2} \\\\")
print("g_{m} = g_{m1} = g_{m2} = 2\\pi{} \\times GB \\times C_{L} = 2 \\pi{} \\times"+str(GB)+"\\times",Cl," \\\\")
print("g_{m} = ",round(gm*1e6, 6)," \\mu S \\\\")
print("I_{5} = \\frac{I_{9}}{2} = \\frac{",round(I9, 6),"}{2} \\\\")
print("I_{5} = ",round(I5*1e6, 6),"\\mu A \\\\")
print("\\frac{W_1}{L_1} = \\frac{gm^2}{K'_{N}\\times I_5} = \\frac{"+str(round(gm, 6))+"^2}{"+str(round(Kn, 6))+"\\times"+str(round(I5, 6))+"}\\\\")
print("\\frac{W_1}{L_1} = ",round(W1_L1, 6)," \\\\")
print("W_{1} = \\frac{W_1}{L_1} \\times L_{min} = ",round(W1_L1, 6),"\\times",L0," \\\\")
print("W_{1} = W_{2} = ",round(W1*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 3} \\\\")
print("W_{4} = W_{3} = W_{1} = ",round(W1*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 4} \\\\")
print("\\text{Se escoge a} I_{10} = ",round(I10*1e6, 6)," \\mu A \\\\")
print("\\text{Se escoge a} \\frac{W_{10}}{L_{10}} = ",50," \\\\")
print("W_{10} = \\frac{W_10}{L_10} \\times L_{min} = ",round(W10_L10, 6),"\\times",L0," \\\\")
print("W_{10} = ",round(W10*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 5} \\\\")
print("I_{1} = I_{2} = \\frac{I_{9}}{2} = \\frac{",round(I9, 6),"}{2} \\\\")
print("I_{1} = ",round(I1*1e6, 6),"\\mu A \\\\")
print("\\frac{W_{11}}{L_{11}} = \\frac{I_{10}}{4\\times I_{1}}\\times \\frac{W_1}{L_1}= \\frac{",round(I10, 6),"}{4\\times",round(I1, 6),"}\\times",round(W1_L1, 6)," \\\\")
print("\\frac{W_{11}}{L_{11}} = ",round(W11_L11, 6)," \\\\")
print("W_{11} = \\frac{W_{11}}{L_{11}} \\times L_{min} = ",round(W11_L11, 6),"\\times",L0," \\\\")
print("W_{11} = ",round(W11*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 6} \\\\")
print("V_{DS3}(sat) = \\sqrt{\\frac{2\\times I_{1}}{K'_{N}\\times\\frac{W_{1}}{L_{1}}}} = \\sqrt{\\frac{2\\times",round(I1, 6),"}{",round(Kn, 6),"\\times",round(W1_L1, 6),"}} \\\\")
print("V_{DS3}(sat) = ",round(Vds3_sat, 6)," V \\\\")
print("\\frac{W_7}{L_7} = \\frac{2\\times I_{1}}{K'_{P}\\times (V_{DD}-ICMR^{+}-|V_{TP}|-V_{DS3}(sat)+V_{TN})^{2}} = \\frac{2\\times",round(I1, 6),"}{",round(Kp, 6),"\\times (",VDD,"-",ICMR_max,"-",round(Vthp, 6),"-",round(Vds3_sat, 6),"+",round(Vthn, 6),")^{2}}"" \\\\")
print("\\frac{W_7}{L_7} = ",round(W7_L7, 6)," \\\\")
print("W_{7} = \\frac{W_7}{L_7} \\times L_{min} = ",round(W7_L7, 6),"\\times",L0," \\\\")
print("W_{7} = W_{8} = ",round(W7*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 7} \\\\")
print("W_{5} = W_{6} = W_{7} = ",round(W7*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 8} \\\\")
print("V_{GS1} = \\sqrt{\\frac{I_{9}}{K'_{N}\\times\\frac{W_{1}}{L_{1}}}}+V_{TN} = \\sqrt{\\frac{",round(I9, 6),"}{",round(Kn, 6),"\\times",round(W1_L1, 6),"}}+",round(Vthn, 6)," \\\\")
print("V_{GS1} = ",round(Vgs1, 6)," V \\\\")
print("\\frac{W_9}{L_9} = \\frac{2\\times I_{9}}{K'_{N}\\times (ICMR^{-}-V_{{GS1}})^{2}} = \\frac{2\\times",round(I9, 6),"}{",round(Kn, 6),"\\times (",ICMR_min,"-",round(Vgs1, 6),")^{2}}"" \\\\")
print("\\frac{W_9}{L_9} = ",round(W9_L9, 6)," \\\\")
print("W_{9} = \\frac{W_9}{L_9} \\times L_{min} = ",round(W9_L9, 6),"\\times",L0," \\\\")
print("W_{9} = ",round(W9*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 9} \\\\")
print("r_{ds2} = r_{ds4} = \\frac{1}{\\lambda_{N}\\times I_{2}} = \\frac{1}{",round(Lambda_n, 6),"\\times",round(I2, 6),"} \\\\")
print("r_{ds2} = ",round(rds2*1e-3, 6)," K\\Omega \\\\")
print("r_{ds6} = r_{ds8} = \\frac{1}{\\lambda_{P}\\times I_{2}} = \\frac{1}{",round(Lambda_p, 6),"\\times",round(I2, 6),"} \\\\")
print("r_{ds6} = ",round(rds6*1e-3, 6)," K\\Omega \\\\")
print("g_{m4} = \\sqrt{2\\times K'_{N}\\times \\frac{W_4}{L_4}\\times I_{2}} = \\sqrt{2\\times",round(Kn, 6),"\\times",round(W1_L1, 6),"\\times",round(I2, 6),"} \\\\")
print("g_{m4} = ",round(gm4*1e6, 6)," \\mu S \\\\")
print("g_{m6} = \\sqrt{2\\times K'_{P}\\times \\frac{W_6}{L_6}\\times I_{2}} = \\sqrt{2\\times",round(Kp, 6),"\\times",round(W7_L7, 6),"\\times",round(I2, 6),"} \\\\")
print("g_{m6} = ",round(gm6*1e6, 6)," \\mu S \\\\")
print("R_{OUT} \\approx (r_{ds2}\\times g_{m4}\\times r_{ds4})||(r_{ds6}\\times g_{m6}\\times r_{ds8}) \\approx (",round(rds2, 6),"\\times",round(gm4, 6),"\\times",round(rds2, 6),")||(",round(rds6, 6),"\\times",round(gm6, 6),"\\times",round(rds6, 6),") \\\\")
print("R_{OUT} \\approx (",round(rds2, 6),"\\times",round(gm4, 6),"\\times",round(rds2, 6),")||(",round(rds6, 6),"\\times",round(gm6, 6),"\\times",round(rds6, 6),") \\\\")
print("R_{OUT} \\approx ",round(Rout*1e-6, 6)," M\\Omega \\\\")
print("A_{0} = g_{m}\\times R_{OUT} = ",round(gm, 6),"\\times",round(Rout, 6)," \\\\")
print("A_{0} = ",round(A0, 6)," = ",round(A0_db, 6)," db \\\\")

print("\\\\")
print("\\textbf{Paso 10} \\\\")
print("V_{DS8}(sat) = \\sqrt{\\frac{2\\times I_{2}}{K'_{N}\\times\\frac{W_{8}}{L_{8}}}} = \\sqrt{\\frac{2\\times",round(I2, 6),"}{",round(Kn, 6),"\\times",round(W7_L7, 6),"}} \\\\")
print("V_{DS8}(sat) = ",round(Vds8_sat, 6)," V \\\\")
print("V_{DS9}(sat) = \\sqrt{\\frac{2\\times I_{9}}{K'_{N}\\times\\frac{W_{9}}{L_{9}}}} = \\sqrt{\\frac{2\\times",round(I9, 6),"}{",round(Kn, 6),"\\times",round(W9_L9, 6),"}} \\\\")
print("V_{DS9}(sat) = ",round(Vds9_sat, 6)," V \\\\")
print("V_{OUT}(max) = V_{DD} - 2\\times V_{DS8}(sat) = ",round(VDD, 6),"- 2\\times ",round(Vds8_sat, 6)," \\\\")
print("V_{OUT}(max) = ",round(V0_max, 6)," V \\\\")
print("V_{OUT}(min) = 2\\times V_{DS3}(sat) + V_{DS9}(sat) = 2\\times ",round(Vds3_sat, 6)," + ",round(Vds9_sat, 6)," \\\\")
print("V_{OUT}(min) = ",round(V0_min, 6)," V \\\\")

print("\\\\")
print("\\textbf{Parámetros calculados} \\\\")
print("W_{1} = W_{2} = W_{3} = W_{4} = ",round(W1*1e6, 6),' \\mu m \\\\')
print("W_{5} = W_{6} = W_{7} = W_{8} = ",round(W5*1e6, 6),' \\mu m \\\\')
print("W_{9} = ",round(W9*1e6, 6),' \\mu m \\\\')
print("W_{10} = ",round(W10*1e6, 6),' \\mu m \\\\')
print("W_{11} = ",round(W11*1e6, 6),' \\mu m \\\\')
print("L_{1} - L_{11} = ",round(L0*1e6, 6),' \\mu m \\\\')

print("\\\\")
print("\\textbf{Resultados obtenidos de la simulación} \\\\")
print("A_{V} = \\frac{A_{V}(0)}{R \\times C} = \\frac{",round(Y_Av[0], 6),"}{",100e3,"\\times",12e-9,"} \\\\")
print("A_{V} = ",round(Av_final, 6)," \\\\")
print("P_{diss} = V_{DD} \\times (I_{9}+I_{10}) = ",1.8,"\\times (",round(I9,6)," + ",round(I10,6),") \\\\")
print("P_{diss} = ",round(Pdiss*1e3, 6)," mW \\\\")
print("GB = ",round(GB_final*1e-3, 6)," KHz \\\\")
print("Slew Rate = ",round(theta[1]*1e-8, 6),"\\frac{V}{\\mu s} \\\\")

print(" \\end{array}")
print("\\end{equation}")