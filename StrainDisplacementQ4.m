function [B_i,a_i,b_i] = StrainDisplacementQ4(Node1_i,Node2_i,Node3_i,Node4_i)

syms x y ;

a_i = (Node3_i(1) - Node1_i(1))/2;
b_i = (Node4_i(2) - Node2_i(2))/2;
 
B_i = [ y/25 - 1/10, 0, - y/25 - 1/10, 0, y/25 + 1/10, 0, 1/10 - y/25, 0;
    0, x/25 - 1/10, 0, 1/10 - x/25, 0, x/25 + 1/10, 0, - x/25 - 1/10;
    x/25 - 1/10, y/25 - 1/10, 1/10 - x/25, - y/25 - 1/10, x/25 + 1/10, y/25 + 1/10, - x/25 - 1/10, 1/10 - y/25];

 