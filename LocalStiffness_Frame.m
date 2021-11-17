function [k_i] = LocalStiffness_Frame(E_i,A_i,L_i,Iz_i)

Q = (E_i*A_i)/(L_i);
W = (12*E_i*Iz_i)/(L_i^3);
C = (6*E_i*Iz_i)/(L_i^2);
R = (4*E_i*Iz_i)/(L_i);
N = (2*E_i*Iz_i)/(L_i);

k_i =[Q 0 0 -Q 0 0;0 W C 0 -W C;0 C R 0 -C N;  -Q 0 0 Q 0 0;0 -W -C 0 W -C;0 C N 0 -C R];