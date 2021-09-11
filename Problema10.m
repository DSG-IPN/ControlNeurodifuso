clear all
close all
clc
x=-2:0.1:10;
membrecia_3(x,1);
function [c]= membrecia_1(dominioX,m,k) %#ok<*FNDEF>
c=rdivide(k,1+(k*(dominioX-m).^(2)))>1;
plot(dominioX, c) 
 title('Funcion de membrecia 1');
        ylim([0 1.05]);
        
       
end

function [c]= membrecia_2(dominioX,m,k) %#ok<*DEFNU>
c=zeros(size(dominioX));
[filas,columnas]=size(c);
for y=1:1:columnas
        if dominioX(1,y)<=m
          c(1,y)=0;
        elseif dominioX(1,y)>m
            c(1,y)=rdivide(k*(dominioX(1,y)-m).^2,1+k*(dominioX(1,y)-m).^2);
        end
end
        plot(dominioX,c)
title('Funcion de membrecia 2');
        ylim([0 1.05]);
        
end

function [c]= membrecia_3(dominioX,m)
 c=zeros(size(dominioX));
[filas,columnas]=size(c);
for y=1:1:columnas
         if dominioX(1,y)~=m
         c(1,y)=0;
         elseif dominioX(1,y)==m
             c(1,y)=1;
         end
         plot(dominioX,c)
title('Funcion de membrecia 3');
        ylim([0 1.05]);
       
end
end