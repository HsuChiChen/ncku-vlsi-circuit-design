clc, clear, close all
presim = [6.268e-10, 5.159e-10, 5.538e-10, 3.534e-10];
cal_effort = [39.6, 38.33, 40.28, 22.44];
RC_3 = 12e-12;
cal_delay = cal_effort .* RC_3;

x = 1:4;
title('comparison of delay time in different circuit topology (\tau = 3RC = 3 \cdot 4e-12)', 'FontSize',15);
xlabel('pattern (#number)', 'FontSize',13);
ylabel('total delay d (s)', 'FontSize',13);
ylim([1e-10, 10e-10]);
xticks(x); % The tick values are the locations along the x-axis where the tick marks appear.
grid on
hold on

plot(x, presim, 'LineWidth', 3);
plot(x, cal_delay, 'LineWidth', 3);
str = {'D = 39.66RC','D = 38.33RC','D = 40.58RC','D = 22.44RC'};
text(x , cal_delay + 0.5e-10, str, 'Color', '#D95319', 'FontSize', 14)


postsim = 4.111e-10;
scatter(4, postsim, 70, 'filled');

yyaxis right
ylim([0, 100]);
percent_error = 100 * abs(presim - cal_delay)./cal_delay;
plot(x, percent_error, 'LineWidth', 3);

percent_error_postsim = 100 * abs(postsim - cal_delay(4))./cal_delay(4);
scatter(4, percent_error_postsim, 70, 'filled');

ylabel('percentage of error(%)', 'FontSize',13);
legend('presim delay', 'estimated delay', 'postsim', ...
    'presim  delay error', 'postsim delay error', 'FontSize',15);
hold off