%last example
clc;
clear ;
close all ;
dH1=-55000;
dH2=-71500;
CpA=200;
CpB=200;
CpC=200;
Ti=283;

UA=40000;
Ta=57+273;

to=1;
Ca0=0.3;
FA0=3;
G_T = zeros(1,1000-Ti+1);
R_T = zeros(1,1000-Ti+1);
Ts = zeros(1,1000-Ti+1);
for T=Ti:1:1000 
    k1=3.03*exp((9900/1.987)*(1/300-1/T)); 
    k2=4.58*exp((27000/1.987)*(1/500-1/T));
    Ts(1,T - Ti +1) = T;
    G=(-dH1*k1*to)/(1+k1*to)+(-dH2*k1*(to^2)*k2)/((1+k1*to)*(1+k2*to));
    R=((UA/FA0)+CpA)*T-((UA/FA0)*Ta+CpA*Ti);
    G_T(1,T-Ti+1) = G;
    R_T(1,T-Ti+1) = R;
end
plot(Ts , G_T , 'b' ,Ts ,  R_T , 'r')
