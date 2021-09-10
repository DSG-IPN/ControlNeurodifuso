function [C] = problema5(dominioX, rangoA, rangoB, typeComplement)
%Función que recibe el conjunto dominio x, el rango A, el rango B, de dos conjunto difusos.
% Un parámetro adicional que indique el tipo de intersección que se quiere hacer:
%Opciones disponibles Míninimo, ProductoAlgebraico, ProductoAcotado
    
    if strcmp(typeComplement, 'Minimo')
        A = trimf(dominioX, rangoA);
        B = trimf(dominioX, rangoB);
        
        minimo = min(A, B);
        C = minimo;
 
        figure;
        subplot(3,1,1);
        plot(dominioX, A); title('Conjunto difuso A');
        ylim([0 1.05]);
        xlim([-3 2.5]);
                
        subplot(3,1,2); 
        plot(dominioX, B); title('Conjunto difuso B');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        subplot(3,1,3); 
        plot(dominioX, minimo); title('Minimo');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        
    elseif strcmp(typeComplement, 'ProductoAlgebraico')
        A = trimf(dominioX, rangoA);
        B = trimf(dominioX, rangoB);
        
        productoAlgebraico = A.*B;
        C = productoAlgebraico;
 
        figure;
        subplot(3,1,1);
        plot(dominioX, A); title('Conjunto difuso A');
        ylim([0 1.05]);
        xlim([-3 2.5]);
                
        subplot(3,1,2); 
        plot(dominioX, B); title('Conjunto difuso B');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        subplot(3,1,3); 
        plot(dominioX, productoAlgebraico); title('Producto Algebraico');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
    elseif strcmp(typeComplement, 'ProductoAcotado')
        A = trimf(dominioX, rangoA);
        B = trimf(dominioX, rangoB);
        
        V = 0.*dominioX;
        X = 1+(0.*dominioX);
        D = A+B-X;
        productoAcotado = max(V, D);
        C = productoAcotado;
        
        figure;
        subplot(3,1,1);
        plot(dominioX, A); title('Conjunto difuso A');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        subplot(3,1,2); 
        plot(dominioX, B); title('Conjunto difuso B');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        subplot(3,1,3); 
        plot(dominioX, productoAcotado); title('Producto Acotado');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
    else
        fprintf("Opciones disponibles: \n-Minimo \n-ProductoAlgebraico \n-ProductoAcotado")
    end
 
end
