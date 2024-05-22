from math import sqrt
from math import pi
from math import log10
import math
import numpy as np 

#Datos propuestos:
L0 = 0.15e-6
Cl = 12e-12
AV = 100 
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

# Calculo de Av
Datos_Av = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/simple_one_stage_opamp_av.ssv')
X_Av = Datos_Av[0:1, 0]
Av_final = X_Av[0]/(100e3*1.2e-8)

# Calculo de GB
Datos_GB = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/simple_one_stage_opamp_gb.ssv')
X_GB = Datos_GB[7:9, 0]
Y_GB = Datos_GB[7:9, 1]
m_GB = (Y_GB[1]-Y_GB[0])/(X_GB[1]-X_GB[0])
b_GB = Y_GB[1]-(m_GB*X_GB[1])
GB_final = (Y_GB[0]-3-b_GB)/m_GB

# Calculo de Pdiss
Pdiss=VDD*I5

# Calculo de SR
Datos_SR = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/simple_one_stage_opamp_sr.ssv')
X = Datos_SR[49997:50113, 0]
Y = Datos_SR[49997:50113, 1]
x_bias1 = np.c_[np.ones(X.shape[0]), X]
# Calculo de la pendiente para el SR -> theta = (X^T * X)^-1 * X^T * y
theta = np.linalg.inv(x_bias1.T @ x_bias1) @ x_bias1.T @ Y

print("W_{1} = W_{2} = ",W1*1e6,' \\mu m \\\\')
print("W_{3} = W_{4} = ",W3*1e6,' \\mu m \\\\')
print("W_{5} = W_{6} = ",W5*1e6,' \\mu m \\\\')
print("L_{1} = L_{2} = L_{3} = L_{4} = L_{5} = L_{6} =",L0*1e6,' \\mu m \\\\')