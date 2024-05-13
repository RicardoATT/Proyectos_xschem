from math import sqrt
from math import pi
import numpy as np 

W0=1e-6;
L0=0.15e-6;

#DATOS PROPUESTOS:
Cl=12e-12;
Av=100; 
VDD=1.8;
GB=2*pi*(10e6);
SR=3;
ICMR=1.6; #ICMR = Vin(max) 
ICMR_min=0.7

# TRANSISTOR CANAL N
Vthn=0.769464;
'''
Idn=500e-6;
Vgsn=1.79985;
Vdsn=1.79971;
gmn=0.00053222
Kn=(gmn*2)/(2*Idn*((W0)/(2*L0)))#(Id)/((W/(2*L))((Vgs-Vth)*2))
lambda_n=((Idn/(Kn*((W0)/(2*L0))*(Vgsn-Vthn)*2))-1)/Vdsn;
'''
Kn=0.00015137603990044484 
lambda_n=0.08896373280684104

# TRANSISTOR CANAL P
Vthp=0.51;
'''
Idp=200e-6;
Vgsp=1.79;
Vdsp=1.8;
gmp=0.000238192
Kp=(gmp*2)/(2*Idp*((W0)/(2*L0)))#(Idp)/((Wp/(2*Lp))((Vgsp-Vthp)*2));
lambda_p=abs(((Idp/(Kp*((W0)/(2*L0))*(abs(Vgsp)-Vthp)*2))-1)/Vdsp)
'''
Kp=0.000057013889055450486
lambda_p=0.06896373280684104

# Paso 1
I5=SR*Cl/(1e-6);
print("I5=", I5*1e6,'uA')
Pdiss=VDD*I5;
print("Pdiss=", Pdiss)

# Paso 2
gm=GB*Cl;
W1_L1=(gm**2)/(Kn*I5); #W1_L1=W1/L;
W1=W1_L1*L0;
W2=W1;

# Paso 3
W3_L3=I5/(Kp*(VDD-ICMR-(abs(Vthp))+Vthn)**2);
W3=W3_L3*L0;
W4=W3;

# Paso 4    
Vgs1=sqrt(I5/(Kn*W1_L1))+Vthn;
W5_L5=(2*I5)/(Kn*(ICMR_min-Vgs1)**2);
W5=W5_L5*L0;

print("W1",W1*1e6,'um')
print("W2",W2*1e6,'um')
print("W3",W3*1e6,'um')
print("W4",W4*1e6,'um')
print("W5",W5*1e6,'um')


print(".param W1=",round(W1*1e6,3))
print(".param W3=",round(W3*1e6,3))
print(".param W5=",round(W5*1e6,3))
print(".param W6=",round(W5*1e6,3))