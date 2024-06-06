from math import sqrt
from math import pi
from math import log10
import math
import numpy as np 

# Datos propuestos:
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

# Parametros
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

# Calculo de GB
Datos_GB = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/cascode_one_stage_opamp_gb.ssv')
X_GB = Datos_GB[5:7, 0]
Y_GB = Datos_GB[5:7, 1]
m_GB = (Y_GB[1]-Y_GB[0])/(X_GB[1]-X_GB[0])
b_GB = Y_GB[1]-(m_GB*X_GB[1])
GB_final = (Y_GB[0]-3-b_GB)/m_GB

# Calculo de Pdiss
Pdiss=VDD*(I9+I10)

# Calculo de SR
Datos_SR = np.loadtxt('/home/ricardo/RATT_repos/Proyectos_xschem/simulations/cascode_one_stage_opamp_sr.ssv')
X = Datos_SR[50010:50018, 0]
Y = Datos_SR[50010:50018, 1]
x_bias1 = np.c_[np.ones(X.shape[0]), X]
# Calculo de la pendiente para el SR -> theta = (X^T * X)^-1 * X^T * y
theta = np.linalg.inv(x_bias1.T @ x_bias1) @ x_bias1.T @ Y