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

# Parametros
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
    print("Corregir relacion W4/L4")

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
Datos_Av = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/folded_one_stage_opamp_av.ssv')
Y_Av = Datos_Av[0:1, 1]
Av_final = Y_Av[0]/(1e6*1.5e-9)

# Calculo de GB
Datos_GB = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/folded_one_stage_opamp_gb.ssv')
X_GB = Datos_GB[5:7, 0]
Y_GB = Datos_GB[5:7, 1]
m_GB = (Y_GB[1]-Y_GB[0])/(X_GB[1]-X_GB[0])
b_GB = Y_GB[1]-(m_GB*X_GB[1])
GB_final = (Y_GB[0]-0.11-b_GB)/m_GB

# Calculo de Pdiss
Pdiss=VDD*(It)

# Calculo de SR
Datos_SR = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/folded_one_stage_opamp_sr.ssv')
X = Datos_SR[50023:50027, 0]
Y = Datos_SR[50023:50027, 1]
x_bias1 = np.c_[np.ones(X.shape[0]), X]
# Calculo de la pendiente para el SR -> theta = (X^T * X)^-1 * X^T * y
theta = np.linalg.inv(x_bias1.T @ x_bias1) @ x_bias1.T @ Y