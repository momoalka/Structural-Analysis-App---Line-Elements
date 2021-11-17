function [k_i] = LocalStiffness_Truss(E_i,A_i,L_i)

W = (E_i*A_i)/(L_i);

k_i =[W -W;-W W];
