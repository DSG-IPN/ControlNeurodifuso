function [] = problema12()
x=0:0.1:10;
A=trimf(x,[1 3 5]);
B=trimf(x,[1 5 10]);
C=trimf(x,[6 8 10]);
subplot(4,2,[1,2])
plot(x,A);
hold on;
plot(x,B);
plot(x,C);
title('conjuntos A B C en universo');
hold off;
primera= max(A,min(B,C));
primera2= min(max(A,B),max(A,C));
segunda=1-min(A,B);
segunda2=max(1-A,1-B);
tercera=1-max(A,B);
tercera2=min(1-A,1-B);
subplot(4,2,3)
plot(x,primera);
title('A\cup(B\capC)');
subplot(4,2,4)
plot(x,primera2);
title('(A\cupB)\cap(A\cupC)');

subplot(4,2,5)
plot(x,segunda);
title('complemento(A\capB)');
subplot(4,2,6)
plot(x,segunda2);
title('comA\cupcomB');

subplot(4,2,7)
plot(x,tercera);
title('complemento(A\cupB)');
subplot(4,2,8)
plot(x,tercera2);
title('comA\capcomB');

end