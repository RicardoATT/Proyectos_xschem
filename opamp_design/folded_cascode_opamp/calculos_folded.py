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
SR = 5
Vout_max = 1.5      #Vout(max)
Vout_min = 0.3      #Vout(min)
ICMR_max = 1.8      #Vin(max) 
ICMR_min = 0.8      #Vin(min) 
Pd = 1e-3

# Parametros de diseño
L0 = 0.45e-6
Cl = 18e-12
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
I4=1.5*I3
I5=I4

# Paso 3
Vsd4_sat=0.5*(VDD-Vout_max)
W4_L4=(2*I4)/(Kp*(Vsd4_sat**2))
W4=W4_L4*L0
W5=W4

# Paso 4
Vsd6_sat=0.5*(VDD-Vout_max)
I6=I4
I7=I4
W6_L6=(2*I6)/(Kp*(Vsd6_sat**2))
W6=W6_L6*L0
W7=W6

# Paso 5
Vds8_sat=0.5*(Vout_min-VSS)
I8=I6
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
W3_L3=(2*I3)/(Kn*(ICMR_min-Vds3_sat)**2)
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
gm6=sqrt(2*((It-I3)/2)*Kp*W6_L6)
gm8=sqrt(2*((It-I3)/2)*Kn*W8_L8)
gm1=sqrt(2*I1*Kn*W1_L1)
rds4=1/(Lambda_p*I4)
rds6=1/(Lambda_p*((It-I3)/2))
rds8=1/(Lambda_n*((It-I3)/2))
rds1=1/(Lambda_n*I1)
Rout=1/((1/(gm8*rds8*rds8))+(1/(gm6*rds6*(1/(1/rds1)+(1/rds4)))))
A0=gm1*Rout
A0_db=20*log10(A0)

print("W1 = ",W1)
print("W2 = ",W2)
print("W3 = ",W3)
print("W4 = ",W4)
print("W5 = ",W5)
print("W6 = ",W6)
print("W7 = ",W7)
print("W8 = ",W8)
print("W9 = ",W9)
print("W10 = ",W10)
print("W11 = ",W11)
print("Lmin = ",L0)
print("Pdiss = ",round(Pdiss*1e3,4))
print("Rout = ",round(Rout,4))
print("Av = ",round(A0,4))
