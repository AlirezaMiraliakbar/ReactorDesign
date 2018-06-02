# ReactorDesign
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
T=283;
k1=3.03*exp((9900/1.987)*(1/300-1/T));
k2=4.58*exp((27000/1.987)*(1/500-1/T));
UA=40000;
Ta=57+273;

to=1;
Ca0=0.3;
FA0=3;

for T=Ti:1:1000
     k1=3.03*exp((9900/1.987)*(1/300-1/T));
     k2=4.58*exp((27000/1.987)*(1/500-1/T));
     
    G=(dH1*k1*to)/(1+k1*to)+(dH2*k1*k2)/((1+k1)*(1+k2));
    R=((UA/FA0)+CpA)*T+((UA/FA0)*Ta+CpA*Ti);
 
end

%Ye jori  R,G ro bar hasbe T plot kon noghate taghatoeshonam peida kon.
