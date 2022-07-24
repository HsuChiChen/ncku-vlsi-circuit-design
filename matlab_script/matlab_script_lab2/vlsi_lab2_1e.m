clc, clear, close all
h = [1, 2, 3, 4, 5, 6, 7];
delay_time = [32.1417e-12, 48.7925e-12, 65.6431e-12, ...
    82.0736e-12, 98.7970e-12, 115.2076e-12, 132.1027e-12];
fit = polyfit(h, delay_time, 1);

xfit = h(1):0.1:h(end);
yfit = fit(1) * xfit + fit(2);
coff = corrcoef(h, delay_time);

xideal = h(1):0.1:h(end);
yideal = (1 * xideal + 1) * 16e-12;

grid on;
hold on;
plot(xfit, yfit, 'LineWidth', 3, 'Color', '#4DBEEE');
plot(xideal, yideal, 'LineWidth', 3, 'Color', '#7E2F8E');
scatter(h, delay_time, 70, 'filled');
hold off;

title('linear delay model of inverter (\tau = 4RC)', 'FontSize',15);
xlabel('electrical effort h (#number)', 'FontSize',13);
ylabel('total delay d (s)', 'FontSize',13);
reg_txt = ['f = gh + p = ', num2str(fit(1)), ' * h + ', num2str(fit(2)), ', r = ', num2str(coff(1, 2))]; 
text(2.5, 5e-11, reg_txt,'Color', '#4DBEEE', 'FontSize',17);
text(2.5, 4e-11, 'f = gh + p = 1.6000e-11 * h + 1.6000e-11', 'Color', '#7E2F8E', 'FontSize',17)
legend('linear regression', 'ideal vlaue', 'delay time', 'FontSize',15);