function [] = problema10c(m)
x = -1:0.1:10;
y=[];
[f,c]=size(x);
for i=1:c
    if x(i)==m
        y(i)=1;
    else
        y(i)=0;
    end
end
plot(x,y);
end
