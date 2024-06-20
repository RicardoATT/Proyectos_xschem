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
print("V_{DS3}(sat) = 0.5 \\times \\left[ V_{OUT}(min) - V_{SS} \\right] = 0.5 \\times \\left[ ",Vout_min," - ",VSS," \\right] \\\\")
print("V_{DS3}(sat) = ",round(Vds3_sat, 6)," V \\\\")
print("\\frac{W_3}{L_3} = \\frac{\\left( GB^2 \\times C_{L}^2 \\right)}{K'_{N} \\times I_{3}} = \\frac{\\left( ",GB,"^2 \\times ",Cl,"^2 \\right)}{",round(Kn, 6)," \\times ",round(I3, 6),"} \\\\")
print("\\frac{W_3}{L_3} = ",round(W1_L1, 6)," \\\\")
print("W_{3} = \\frac{W_3}{L_3} \\times L_{min} = ",round(W3_L3, 6),"\\times",L0," \\\\")
print("W_{3}  = ",round(W3*1e6, 6)," \\mu m \\\\")

'''
# Paso 6
W1_L1=((GB**2)*(Cl**2))/(Kn*I3)
W1=W1_L1*L0
W2=W1

# Paso 7
Vds3_sat=(sqrt(I3/(Kn*W1_L1)))-Vthn
W3_L3=(2*I3)/(Kn*(Vds3_sat**2))
W3=W3_L3*L0
'''


print("I1=",I1*1e6)
print("I3=",I3*1e6)
print("I4=",I4*1e6)
print(".param W1=",round(W1*1e6,3))
print(".param W3=",round(W3*1e6,3))
print(".param W4=",round(W4*1e6,3))
print(".param W8=",round(W8*1e6,3))
print(".param L0=",round(L0*1e6,3))