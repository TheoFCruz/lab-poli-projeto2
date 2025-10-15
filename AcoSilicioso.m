clear; clc;

V_H = [17.1;34.4;53.0;69.0;87.9;103.8;121.4;140.1;157.7;173.7;192.6;209;220;225;242;260];
I_X = [0.04;0.07;0.09;0.10;0.12;0.14;0.15;0.17;0.20;0.22;0.26;0.31;0.36;0.39;0.47;0.58];

k1 = 3.811e-3;
k2 = 4.059e2;

B_m = V_H * k1;
H_m = I_X * k2;

figure;
ax = axes;
img = imread('AcoSilicioso.jpg');

% inverte a imagem verticalmente (corrige sem mexer nos eixos)
img = flipud(img);

% mostra a imagem mapeada para os eixos físicos
imagesc(ax, [0 450], [0 1.4], img);

% mantém o eixo Y normal (gráfico certo)
set(ax, 'YDir', 'normal');

hold(ax, 'on');
plot(ax, H_m, B_m, 'r', 'LineWidth', 2);

xlabel('H [A/m]');
ylabel('B [T]');
title('Curva sobre imagem de referência');
grid on;
