function [C] = problema8(dominioX, rangoA,rangoB)
%Función que recibe el conjunto dominio x, el rango A, el rango B, de dos conjunto difusos.
% Un parámetro adicional que indique el tipo de intersección que se quiere hacer:
%Opciones disponibles Míninimo, ProductoAlgebraico, ProductoAcotado
    
        
    
        
        A=rangoA;
        B=rangoB;
        minimo=min(A,B);
        c=minimo;
        figure;
        subplot(5,1,1);
        stem(dominioX, A); title('Conjunto difuso A');
        ylim([0 1.05]);
       
                
        subplot(5,1,2); 
        stem(dominioX, B); title('Conjunto difuso B');
        ylim([0 1.05]);
        
        subplot(5,1,3); 
        stem(dominioX, minimo); title('Minimo');
        ylim([0 1.05]);
        
        productoAlgebraico = A.*B;
        C = productoAlgebraico;
        subplot(5,1,4); 
        stem(dominioX, productoAlgebraico); title('Producto Algebraico');
        ylim([0 1.05]);
        
        
        V = 0.*dominioX;
        X = 1+(0.*dominioX);
        D = A+B-X;
        productoAcotado = max(V, D);
        C = productoAcotado;
        
        subplot(5,1,5); 
        stem(dominioX, productoAcotado); title('Producto Acotado');
        ylim([0 1.05]);
        
        
        
        
    
        
    
