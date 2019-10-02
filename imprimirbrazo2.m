function imprimirbrazo2(objeto,r2,g2,b2);
P1 = objeto(:,1);
P2 = objeto(:,2);
V2x = objeto(:,3);
V2y = objeto(:,4);

line ([P1(1) P2(1)],[P1(2) P2(2)],[P1(2) P2(2)], 'color', [r2 g2 b2], 'linewidth',3);

line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
end