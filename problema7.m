function [C] = problema7(dominioX, rangoA)
%Función que recibe el conjunto dominio x y el rango A de un conjunto difuso. 
%Un parámetro adicional que indique el tipo de complemento que se quiere hacer (estándar, Sugeno, Yager).
%Opciones disponibles Estandar, Sugeno, Yager
    
        
    
        
        C=rangoA;
 
        figure;
        subplot(4,1,1);
        stem(dominioX, C); title('Conjunto difuso');
        ylim([0 1.05]);
      
        
        standard = 1-C;
        
        subplot(4,1,2); 
        stem(dominioX, standard); title('Complemento Estándar');
        ylim([0 1.05]);
       
        
    
        
 
        
        
        s = 2.5;
        
        sugeno = (1-C)./(1+(s.*C));
       
        subplot(4,1,3); 
        stem(dominioX, sugeno); title('Complemento Sugeno');
        ylim([0 1.05]);
        
        
   
 
        
        
        W = 2.5;
        yager = (1-C).^(C.*W);
        
        subplot(4,1,4); 
        stem(dominioX, yager); title('Complemento Yager');
        ylim([0 1.05]);
        
        
    
        
    
 
end