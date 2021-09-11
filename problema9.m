function [C] = problema6(dominioX, rangoA, rangoB, typeUnion)
%Función que recibe el conjunto dominio x, el rango A, el rango B, de dos conjunto difusos.
% Un parámetro adicional que indique el tipo de intersección que se quiere hacer:
%Opciones disponibles Mazimo, SumaAlgebraico, SumaAcotada
    
   
        
        
        A=rangoA;
        B=rangoB;
        
        maximo = max(A, B);
        C = maximo;
 
        figure;
        subplot(5,1,1);
        stem(dominioX, A); title('Conjunto difuso A');
        ylim([0 1.05]);
        
                
        subplot(5,1,2); 
        stem(dominioX, B); title('Conjunto difuso B');
        ylim([0 1.05]);
        
        
        subplot(5,1,3); 
        stem(dominioX, maximo); title('Maximo');
        ylim([0 1.05]);
        
        
        sumaalgebraica = (A+B)-(A.*B);
        C = sumaalgebraica;
 
        
        
        subplot(5,1,4); 
        stem(dominioX, sumaalgebraica); title('Suma Algebraico');
        ylim([0 1.05]);
        
        
        
        productoAcotado = min(1, A+B);
        C = productoAcotado;
        
       
        
        subplot(5,1,5); 
        stem(dominioX, productoAcotado); title('Producto Acotado');
        ylim([0 1.05]);
       
        
 
end