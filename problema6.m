function [C] = problema6(dominioX, rangoA, rangoB, typeUnion)
%Función que recibe el conjunto dominio x, el rango A, el rango B, de dos conjunto difusos.
% Un parámetro adicional que indique el tipo de intersección que se quiere hacer:
%Opciones disponibles Maximo, SumaAlgebraico, SumaAcotada
    
    if strcmp(typeUnion, 'Maximo')
        A = trimf(dominioX, rangoA);
        B = trimf(dominioX, rangoB);
        
        maximo = max(A, B);
        C = maximo;
 
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
        plot(dominioX, maximo); title('Maximo');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        
    elseif strcmp(typeUnion, 'SumaAlgebraica')
        A = trimf(dominioX, rangoA);
        B = trimf(dominioX, rangoB);
        
        sumaalgebraica = (A+B)-(A.*B);
        C = sumaalgebraica;
 
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
        plot(dominioX, sumaalgebraica); title('Suma Algebraico');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
    elseif strcmp(typeUnion, 'SumaAcotada')
        A = trimf(dominioX, rangoA);
        B = trimf(dominioX, rangoB);
        
        
        productoAcotado = min(1, A+B);
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
