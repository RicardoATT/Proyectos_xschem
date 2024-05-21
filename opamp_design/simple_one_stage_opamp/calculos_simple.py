from math import sqrt
from math import pi
from math import log10
import numpy as np 

#Datos propuestos:
L0 = 0.15e-6
Cl = 12e-12
Av = 100 
VDD = 1.8
GB = 2*pi*(10e6)
SR = 3
ICMR_max = 1.6   #Vin(max) 
ICMR_min = 0.7   #Vin(min) 

# Transistor canal N
Vthn = 0.769464
Kn = 0.00015137603990044484 
Lambda_n = 0.08896373280684104

# Transistor canal P
Vthp = 0.51
Kp = 0.000057013889055450486
Lambda_p = 0.06896373280684104

# Paso 1
I5=SR*Cl/(1e-6)
print("I5=", I5*1e6,'uA')
Pdiss=VDD*I5
print("Pdiss=", Pdiss)

# Paso 2
gm=GB*Cl
W1_L1=(gm**2)/(Kn*I5) #W1_L1=W1/L
W1=W1_L1*L0
W2=W1

# Paso 3
W3_L3=I5/(Kp*(VDD-ICMR_max-(abs(Vthp))+Vthn)**2)
W3=W3_L3*L0
W4=W3

# Paso 4    
Vgs1=sqrt(I5/(Kn*W1_L1))+Vthn
W5_L5=(2*I5)/(Kn*(ICMR_min-Vgs1)**2)
W5=W5_L5*L0

# Paso 5
A0=(2*gm)/((Lambda_n+Lambda_p)*I5)
A0_db=20*log10(A0)

print("W1",W1*1e6,'um')
print("W2",W2*1e6,'um')
print("W3",W3*1e6,'um')
print("W4",W4*1e6,'um')
print("W5",W5*1e6,'um')

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
print("A_{V} = ",Av," \\frac{V}{V} \\\\")
print("P_{diss} \leq ",1," mW \\\\")
print("GB = ",10e6," MHz \\\\")
print("SR \\geq ",3," \\frac{V}{\\mu s} \\\\")

print("\\\\")
print("\\textbf{Paso 1} \\\\")
print("I_{5} = SR \\times C_{L} = "+str(SR)+"\\times"+str(Cl))
print("I_{5} = ",round(I5*1e6, 6),"\\mu A \\\\")

print("\\\\")
print("\\textbf{Paso 2} \\\\")
print("g_{m} = 2\\pi{} \\times GB \\times C_{L} = 2 \\pi{} \\times"+str(10e6)+"\\times",Cl," \\\\")
print("g_{m} = ",round(gm*1e6, 6)," \\mu S \\\\")
print("\\frac{W_1}{L_1} = \\frac{gm^2}{K'_{N}\\times I_5} = \\frac{"+str(round(gm, 6))+"^2}{"+str(round(Kn, 6))+"\\times"+str(round(I5, 6))+"}\\\\")
print("\\frac{W_1}{L_1} = ",W1_L1," \\\\")
print("W_{1} = \\frac{W_1}{L_1} \\times L_{min} = ",round(W1_L1, 6),"\\times",L0," \\\\")
print("W_{1} = W_{2} = ",round(W1*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 3} \\\\")
print("\\frac{W_3}{L_3} = \\frac{I_5}{K'_{P}\\times \\left[(V_{DD}-ICMR^{+}-|V_{TP}|+V_{TN}\\right]^{2}} = \\frac{",round(I5, 6),"}{",round(Kp, 6),"\\times \\left[",VDD,"-",ICMR_max,"-",round(Vthp, 6),"+",round(Vthn, 6),"\\right]^{2}} \\\\")
print("\\frac{W_3}{L_3} = ",W3_L3," \\\\")
print("W_{3} = \\frac{W_3}{L_3} \\times L_{min} = ",round(W3_L3, 6),"\\times",L0," \\\\")
print("W_{3} = W_{4} = ",round(W3*1e6, 6)," \\mu m \\\\")

print("\\\\")
print("\\textbf{Paso 4} \\\\")
print("v_{GS1} = \\sqrt{\\frac{I_{5}}{K'_{N}\\times\\frac{W_{1}}{L_{1}}}}+V_{TN} = \\sqrt{\\frac{",round(I5, 6),"}{",round(Kn, 6),"\\times",round(W1_L1, 6),"}}+",round(Vthn, 6)," \\\\")
print("v_{GS1} = ",round(Vgs1*1e6, 6)," V \\\\")
print("\\frac{W_{5}}{L_{5}} = \\frac{2\\times I_{5}}{K'_{N}\\times (ICMR^{-}-V_{{GS1}})^{2}} = \\frac{2\\times",round(I5, 6),"}{",round(Kn, 6),"\\times (",ICMR_min,"-",round(Vgs1, 6),")^{2}}"" \\\\")
print("\\frac{W_5}{L_5} = ",W5_L5," \\\\")
print("W_{5} = \\frac{W_5}{L_5} \\times L_{min} = ",round(W5_L5, 6),"\\times",L0," \\\\")
print("W_{5} = W_{6} = ",round(W5*1e6, 6)," \\mu m \\\\")
    
print("\\\\")
print("\\textbf{Paso 5} \\\\")
print("A_{0} = \\frac{2g_{m}}{(\\lambda_{N}+\\lambda_{P})\\times I_{5}} = \\frac{2\\times",round(gm, 6),"}{(",round(Lambda_n, 6),"+",round(Lambda_p, 6),")\\times",round(I5, 6),"} \\\\")
print("A_{0} = ",round(A0, 6)," = ",round(A0_db, 6)," db \\\\")

print(" \\end{array}")
print("\\end{equation}")