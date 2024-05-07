from math import sqrt
from math import pi
import numpy as np 

# Valores conocidos
Id_n=448.869e-6;
Vth_n=0.769432;
Vgs_n=1.79987;
Vds_n=0.89974;
vdsat_n=0.362147;

Id_p=12e-6;
Vth_p=0.624345;
Vgs_p=0.9;
Vds_p=0.9;
vdsat_p=0.0444931;

W=1e-6;
L=1.5e-7;
Cl=pi*2*10e-12;
Av=100;
VDD=1.8;
GB=1e6;
SR=5;
ICMR=1.3;

Kn=(2*Id_n)/((W/L)((Vgs_n-Vth_n)*2));
lambda_n=((Id_n/(Kn*(W/2*L)(Vgs_n-Vth_n)*2))-1)/Vds_n;

Kp=(2*Id_p)/((W/L)((Vgs_p-Vth_p)*2));
lambda_p=((Id_p/(Kn*(W/2*L)(Vgs_p-Vth_p)*2))-1)/Vds_p;

I5=SR*Cl;
print("I5 = ", I5);
Pdiss=VDD*I5;
print("Pdiss = ", Pdiss);
gm=GB*Cl;
W1_L1=(gm**2)/(Kn*I5);
W1=W1_L1*L;
W2=W1;
print("W1 = W2 = ", W1);
W3_L3=I5/(Kp*(VDD-ICMR-(abs(Vth_p))+Vth_p)**2);
W3=W3_L3*L;
W4=W3;
print("W3 = W4 = ", W3);
Vgs1=sqrt((2*I5)/(Kn*W1_L1))+Vth_n;
W5_L5=(2*I5)/(Kn*((1-Vgs1)**2));