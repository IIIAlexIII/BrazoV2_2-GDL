function imprimirbrazo(objeto,r1,g1,b1);
P0 = objeto(:,1);
P1 = objeto(:,2);
V0x = objeto(:,3);
V0y = objeto(:,4);
V1x = objeto(:,5);
V1y = objeto(:,6);

line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(2) P1(2)], 'color', [r1 g1 b1], 'linewidth',3);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1); 
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);

end
