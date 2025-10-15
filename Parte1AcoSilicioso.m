clear
clc

V_H = [
    17.1
    34.4
    53.0
    69.0
    87.9
    103.8
    121.4
    140.1
    157.7
    173.7
    192.6
    209
    220
    225
    242
    260];

I_X = [
    0.04
    0.07
    0.09
    0.10
    0.12
    0.14
    0.15
    0.17
    0.20
    0.22
    0.26
    0.31
    0.36
    0.39
    0.47
    0.58];

k1 = 3.811e-3;
k2 = 4.059e2;

B_m = V_H * k1;
H_m = I_X * k2;

% Filtrar apenas pontos com H_m <= 100 A/m
idx = H_m <= 100;
B = B_m(idx);
H = H_m(idx);

% Plotar B x H
figure;
plot(H, B, 'o-', 'LineWidth', 1.8, 'MarkerSize', 7);
grid on
title('B \times H (H \leq 100 A/m)', 'FontSize', 20);
xlabel('H [A/m]', 'FontSize', 16);
ylabel('B [T]', 'FontSize', 16);
ax = gca; ax.FontSize = 14;

% Exibir vetores filtrados
B
H