function  [T_i] = Transformation_2D(Node1_i,Node2_i)


V = Node2_i - Node1_i ;
L = norm(V) ;

A = V(1,1)/L;
B = V(1,2)/L;

T_i=[A B 0 0; 0 0 A B] ;