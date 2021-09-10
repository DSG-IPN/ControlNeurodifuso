function problema2(Dominio, rango)

% Create figure
figure1 = figure;
colormap(cool);

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(Dominio,rango,'LineWidth',1.5,...
    'Color',[0.717647058823529 0.274509803921569 1]);
title('Función de membresia')
xlabel('Dominio');
ylabel('Rango');
box(axes1,'on');
hold(axes1,'off');
