clc, clear, close all
postsim = [5.692e-11, 7.007e-11, 6.245e-11, 1.453e-10, 8.972e-11, 9.468e-11];
cal_coeff = [9.5, 12.5, 36.5, 39.5, 23, 20.625];
RC = 12e-12 / 3;
cal_delay = cal_coeff .* RC;

x = 1:6;
title('comparison of delay time in different input pattern (\tau = 4RC = 4 \cdot 4e-12)', 'FontSize',15);
xlabel('pattern (#number)', 'FontSize',13);
ylabel('total delay d (s)', 'FontSize',13);
ylim([1e-11 30e-11]);
xticks(x); % The tick values are the locations along the x-axis where the tick marks appear.
grid on
hold on

plot(x, postsim, 'LineWidth', 3);
plot(x, cal_delay, 'LineWidth', 3);
str = {'D = 9.5RC','D = 12.5RC','D = 36.5RC','D = 39.5RC','D = 23RC','D = 20.625RC'};
text(x-0.3 , cal_delay + 3e-11, str, 'Color', '#D95319', 'FontSize', 14);

yyaxis right
ylim([0, 100]);
percent_error = 100 * abs(postsim - cal_delay)./cal_delay;
plot(x, percent_error, 'LineWidth', 3);

ylabel('percentage of error(%)', 'FontSize',13);
legend('postsim delay', 'estimated delay', 'postsim delay error', 'FontSize',15);
hold off