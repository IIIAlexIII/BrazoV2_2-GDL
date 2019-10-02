close all
clear all
clc             

prompt = 'Introduzca el valor de longitud del primer eslabón:     '; 
L1 = input(prompt);

prompt = 'Introduzca el valor de longitud del segundo eslabón:    '; 
L2 = input(prompt);

prompt = 'Introduzca el valor en grados de la primer rotación:    '; 
Theta1 = input(prompt);

prompt = 'Introduzca el valor en grados de la segunda rotación:   '; 
Theta2 = input(prompt);

Angulo1 = gradoaradianes(Theta1);
Angulo2 = gradoaradianes(Theta2);

P0= [0 0 0]';

if Theta1 >= 0   
    VectorA1=0:0.01:Angulo1; 
else
    VectorA1=0:-0.01:Angulo1;
end

if Theta2 >= 0   
    VectorA2=0:0.01:Angulo2; 
else
    VectorA2=0:-0.01:Angulo2;
end

for a=1:length(VectorA1)
    
    clf
        
    imprimirejescoordenados();
    
    MRz1 = [cos(VectorA1(a)) -sin(VectorA1(a)) 0 0;sin(VectorA1(a)) cos(VectorA1(a)) 0 0; 0 0 1 0;0 0 0 1];
    MTx1 = [1 0 0 L1;0 1 0 0;0 0 1 0;0 0 0 1];
    MTf1 = MRz1*MTx1;
    P1  = MTf1(1:3,4);
    
    MRz2 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
    MTx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
    MTf2 = MRz2*MTx2;
    T1 = MTf1*MTf2;
    P2 = T1(1:3,4);
      
    V0x = MRz1(1:3,1);
    V0y = MRz1(1:3,2);

    V1x = P1+MTf1(1:3,1);
    V1y = P1+MTf1(1:3,2);
    
    V2x = P2+T1(1:3,1);
    V2y = P2+T1(1:3,2);
        
    brazo = [P0 P1 V0x V0y V1x V1y];
    imprimirbrazo(brazo,0.8,0.6,0.8);
    
    brazo2 = [P1 P2 V2x V2y];
    imprimirbrazo2(brazo2,0.6,0.2,0.8);
           
    pause(0.01)
end    

for b=1:length(VectorA2)
    
    clf
        
    imprimirejescoordenados();
    
    MRz2 = [cos(VectorA2(b)) -sin(VectorA2(b)) 0 0;sin(VectorA2(b)) cos(VectorA2(b)) 0 0; 0 0 1 0;0 0 0 1];
    MTx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
    MTf2 = MRz2*MTx2;
    T1 = MTf1*MTf2;
    P2 = T1(1:3,4);
    
    V0x = MRz1(1:3,1);
    V0y = MRz1(1:3,2);

    V1x = P1+MTf1(1:3,1);
    V1y = P1+MTf1(1:3,2);
    
    V2x = P2+T1(1:3,1);
    V2y = P2+T1(1:3,2);
        
    brazo = [P0 P1 V0x V0y V1x V1y];
    imprimirbrazo(brazo,0.8,0.6,0.8);
    
    brazo2 = [P1 P2 V2x V2y];
    imprimirbrazo2(brazo2,0.6,0.2,0.8);
             
    pause(0.01)
end