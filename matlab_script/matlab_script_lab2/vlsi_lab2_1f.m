clc, clear, close all
h = [1, 2, 3, 4, 5, 6, 7];
delay_time = [146.5228e-12, 182.5917e-12, 218.4642e-12, ...
    254.4837e-12, 289.3432e-12, 325.2950e-12, 360.3082e-12];
fit = polyfit(h, delay_time, 1);

xfit = h(1):0.1:h(end);
yfit = fit(1) * xfit + fit(2);
coff = corrcoef(h, delay_time);

xideal = h(1):0.1:h(end);
yideal = (2.5 * xideal + 3) * 16e-12;

grid on;
hold on;
plot(xfit, yfit, 'LineWidth', 3, 'Color', '#4DBEEE');
plot(xideal, yideal, 'LineWidth', 3, 'Color', '#7E2F8E');
scatter(h, delay_time, 70, 'filled');
hold off;

title('linear delay model of 3-input NOR gate (\tau = 4RC)', 'FontSize',15);
xlabel('electrical effort h (#number)', 'FontSize',13);
ylabel('total delay d (s)', 'FontSize',13);
reg_txt = ['f = gh + p = ', num2str(fit(1)), ' * h + ', num2str(fit(2)), ', r = ', num2str(coff(1, 2))]; 
text(3, 1.2e-10, reg_txt,'Color', '#4DBEEE', 'FontSize',17);
text(3, 1e-10, 'f = gh + p = 4.000e-11 * h + 4.8000e-11', 'Color', '#7E2F8E', 'FontSize',17)
legend('linear regression', 'ideal vlaue', 'delay time', 'FontSize',15);