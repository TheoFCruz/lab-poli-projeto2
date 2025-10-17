clear
clc

hist_osc = readtable('histerese_osciloscopio_80.csv');
hist_approx = readtable('histerese_approx_80.csv');

k3 = 2.87e2;
k4 = 1.24;

H = hist_approx.Var1 *k3;
B = hist_approx.Var2*k4;

area = trapz(H,B);
display(area);

% Plot VxI
figure(1);
subplot(121)
hold on
scatter(hist_osc.Var2, hist_osc.Var3);
plot(hist_approx.Var1, hist_approx.Var2, 'LineWidth', 2);
grid on

title('v_c \times i_{sx}', 'FontSize', 18)
xlabel('i_{sx} [A]', 'FontSize', 16);
ylabel('v_c [V]','FontSize', 16);
legend('Dados do oscilosópio', 'Curva aproximada', 'FontSize', 14);

ax = gca;
ax.FontSize = 14;

% Plot BxH
subplot(122);
hold on
plot(H,B, 'LineWidth', 2);
grid on

title('B \times H', 'FontSize', 18)
xlabel('B [T]', 'FontSize', 16);
ylabel('H [A/m]', 'FontSize', 16);

ax = gca;
ax.FontSize = 14;
