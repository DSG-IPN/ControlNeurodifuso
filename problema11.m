function [] = problema11()
x = 0:0.1:10;
y = trimf(x,[2 4 6]);
yc=1-y;
subplot(2,2,1)
plot(x,y);
title('Conjunto A');
subplot(2,2,2)
plot(x,yc);
title('Complemento de conjunto A');
union=max(y,yc);
inter=min(y,yc);
subplot(2,2,3)
plot(x,union);
title('A\cupÄ~=Ω  union');
ylim([-0.05 1.05]);
subplot(2,2,4)
plot(x,inter);
title('A\capÄ~=0 interseccion');
ylim([-0.05 1.05]);
end
