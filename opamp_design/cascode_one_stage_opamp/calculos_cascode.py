from math import sqrt
from math import pi
import numpy as np 

# Valores conocidos
# NMOS
Id_n=448.869e-6
Vth_n=0.769432
Vgs_n=1.79987
Vds_n=0.89974
vdsat_n=0.362147
# PMOS
Id_p=12e-6
Vth_p=0.624345
Vgs_p=0.9
Vds_p=0.9
vdsat_p=0.0444931
# Parámetros
W=1e-6
L=1.5e-7
Cl=pi*2*10e-12
Av=100
VDD=1.8
GB=1e6
SR=5
ICMR=1.3

# Paso 0: Cálculo preliminar de Kn', Kp' y las lambdas
Kn=(2*Id_n)/((W/L)((Vgs_n-Vth_n)*2))
lambda_n=((Id_n/(Kn*(W/2*L)(Vgs_n-Vth_n)*2))-1)/Vds_n
Kp=(2*Id_p)/((W/L)((Vgs_p-Vth_p)*2))
lambda_p=((Id_p/(Kn*(W/2*L)(Vgs_p-Vth_p)*2))-1)/Vds_p
print("Kn' = ", Kn)
print("Kp' = ", Kp)
print("Lambda(N) = ", lambda_n)
print("Lambda(P) = ", lambda_p)

# Paso 1: Cálculo de I5 y Pdiss
I5=SR*Cl
Pdiss=VDD*I5
print("I5 = ", I5)
print("Pdiss = ", Pdiss)

# Paso 2: Cálculo de gm1, gm2, W1 y W2
gm=GB*Cl
W1_L1=(gm**2)/(Kn*I5)
W1=W1_L1*L
print("W1 = W2 = ", W1)

# Paso 3: Cálculo de W3 y W4
W3_L3=I5/(Kp*(VDD-ICMR-(abs(Vth_p))+Vth_p)**2)
W3=W3_L3*L
print("W3 = W4 = ", W3)

# Paso 4: Cálculo de W5
Vgs1=sqrt((2*I5)/(Kn*W1_L1))+Vth_n
W5_L5=(2*I5)/(Kn*((1-Vgs1)**2))
W5=W5_L5*L
print("W5 = ", W5)

# Paso 5: Cálculo de la ganancia
A0 = (2*gm)/((lambda_n+lambda_p)*I5)
print("A0 = ", A0)