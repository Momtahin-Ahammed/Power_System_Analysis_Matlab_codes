%MOMTAHIN AHAMMED (19-40698-1)
close all;
clear all;
clc;
H=6;
f=50;
P= 1; 
V =1 +0*i;
Pf=0.95;
S=P/Pf
Q=sqrt(S^2-P^2)
S=P+i*Q
I=((conj(S))/(conj(V)))
% of X13,X12,X23,Xd,Xtr
Z=(((.20*i*(.10*i+.20*i))/(.20*i+.10*i+.20*i)))
%calculating Xtotal
Xtotal=(0.3*i+0.10*i+(Z))
E=I*Xtotal+V
delta_o=angle(E)
delta_max=pi-delta_o
p_m=1;
%finding Pmax
p_max=abs(E)/abs(Xtotal)
%calculating critical angle
cos_delta_c=(((p_m*(delta_max-delta_o)/p_max)+cos(delta_max)))
delta_c=acos(cos_delta_c)
%calculating critical time 
tc=sqrt((4*H*(delta_c-delta_o))/(2*pi*f*p_m))
%for plotting
delta=0:pi/30:pi;
pe=(p_max*sin(delta));plot(delta,pe);yline(p_m)