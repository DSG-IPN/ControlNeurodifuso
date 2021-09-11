function [] = problema10b(a,k)
x = -1:0.1:10;
y=[];
[f,c]=size(x);
for i=1:c
    if x(i)<=a
        y(i)=0;
    elseif x(i)>a
        y(i)=(k*(x(i)-a)^2)./(1+k*(x(i)-a)^2);
    end
end
plot(x,y);
end


