clc, clear, close all
h = 1:7;
vy = (4.*h + 5) ./ (4.*h + 15);
delta_v = (1 - vy) *1.8;
plot(h, delta_v, 'b-o','LineWidth', 3,'MarkerFaceColor','b');

grid on;
title('charge charing noise of output capacitance','FontSize',15);
ylim([0,1.8]);
xlabel('electrial effort $h = \frac{C_{out}}{C_{in}}$','interpreter','latex', 'FontSize',15);
ylabel('$\Delta V = V_{DD} - V_Y$(V)','interpreter','latex', 'FontSize',15);