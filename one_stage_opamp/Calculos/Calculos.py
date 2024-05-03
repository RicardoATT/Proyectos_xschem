from math import sqrt
import numpy as np 
Id=500e-6;
Vth=0.769464;
Vgs=2.99971;
W=1e-6;
L=1.5e-7;
Vds=0.89941;

Kn=(2*Id)/(W/L)((Vgs-Vth)*2);
lambda_n=((Id/(Kn*(W/2*L)(Vgs-Vth)*2))-1)/Vds;


Idp=200e-6;
Vthp=0.624345;
Vgsp=-2.1;
Wp=1e-6;
Lp=1.5e-7;
Vdsp=0.9;

Kp=(2*Idp)/(Wp/Lp)((Vgsp-Vthp)*2);
lambda_p=((Idp/(Kp*(Wp/2*Lp)(Vgsp-Vthp)*2))-1)/Vdsp;



Cl=10e-12;
Av=100; 
VDD=1.8;
GB=1e6;
SR=5;


I5=SR*Cl;
print("I5=", I5)
Pdiss=VDD*I5;
print("Pdiss=", Pdiss)
gm=GB*Cl;
ICMR=2; 
W1_L1=(gm**2)/(Kn*I5); #W1_L1=W1/L;
W1=W1_L1*L;
W2=W1; 
W3_L3=I5/(Kp*(VDD-ICMR-(abs(Vthp))+Vth)**2);
W3=W3_L3/Lp;
W4=W3; 
Vgs1=sqrt(I5/(Kn*W1_L1))+Vth;