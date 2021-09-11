function [] = problema10a(k,m)
figure
x = -1:0.1:10;
y=1./(1+k.*(x-m).^2);
plot(x,y);
end

