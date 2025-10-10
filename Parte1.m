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

B_m = V_H*k1;
H_m = I_X*k2;

figure(1);
subplot(121);
plot(I_X, V_H);
title('V_H \times I_X', 'FontSize', 18);
xlabel('I_X [A]', 'FontSize', 16);
ylabel('V_H [V]', 'FontSize', 16);
grid on

ax = gca;
ax.FontSize = 14;

subplot(122);
plot(H_m, B_m);
title('B_m \times H_m', 'FontSize', 18);
xlabel('H_m [A/m]', 'FontSize', 16);
ylabel('B_m [T]', 'FontSize', 16);
grid on

ax = gca;
ax.FontSize = 14;

display(B_m);
display(H_m);