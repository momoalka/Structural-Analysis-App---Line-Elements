function [E] = ConstitutiveMatrix(E_i,nu_i,type_i)

if type_i == 1
    
    %Plain Strain Condition
    [E] = (E_i/((1+nu_i)*(1-2*nu_i)))*[1-nu_i nu_i 0; nu_i 1 0; 0 0 0.5*(1-2*nu_i)];
    
    
elseif type_i == 2
    
    
    %Plain Stress Condition
    [E] = (E_i/(1-(nu_i^2)))*[1 nu_i 0; nu_i 1 0; 0 0 (1-nu_i)/2];
    
end
