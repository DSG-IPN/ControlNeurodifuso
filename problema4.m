function [C] = problema4(dominioX, rangoA,typeComplement)
%Función que recibe el conjunto dominio x y el rango A de un conjunto difuso. 
%Un parámetro adicional que indique el tipo de complemento que se quiere hacer (estándar, Sugeno, Yager).
%Opciones disponibles Estandar, Sugeno, Yager
    
    if strcmp(typeComplement, 'Estandar')
        
        C = trimf(dominioX, rangoA);
 
        figure;
        subplot(2,1,1);
        plot(dominioX, C); title('Conjunto difuso');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        standard = 1-C;
        
        subplot(2,1,2); 
        plot(dominioX, standard); title('Complemento Estándar');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
    elseif strcmp(typeComplement, 'Sugeno')
        C = trimf(dominioX, rangoA);
 
        figure;
        subplot(2,1,1);
        plot(dominioX, C); title('Conjunto difuso');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        s = 2.5;
        
        sugeno = (1-C)./(1+(s.*C));
       
        subplot(2,1,2); 
        plot(dominioX, sugeno); title('Complemento Sugeno');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
    elseif strcmp(typeComplement, 'Yager')
        C = trimf(dominioX, rangoA);
 
        figure;
        subplot(2,1,1);
        plot(dominioX, C); title('Conjunto difuso');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
        W = 2.5;
        yager = (1-C).^(C.*W);
        
        subplot(2,1,2); 
        plot(dominioX, yager); title('Complemento Yager');
        ylim([0 1.05]);
        xlim([-3 2.5]);
        
    else
        fprintf("Opciones disponibles: \n-Estandar \n-Sugeno \n-Yager")
    end
 
end
