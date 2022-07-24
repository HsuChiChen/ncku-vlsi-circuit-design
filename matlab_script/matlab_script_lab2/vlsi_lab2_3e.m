clc, clear, close all
% presim  = [5.914e-11, 7.522e-11, 7.062e-11, 1.790e-10, 9.699e-11, 1.125e-10];
postsim = [5.692e-11, 7.007e-11, 6.245e-11, 1.453e-10, 8.972e-11, 9.468e-11];
cal_coeff = [9.5, 12.5, 36.5, 39.5, 23, 20.625];
% RC_presim = presim ./ cal_coeff;
RC_postsim = postsim ./ cal_coeff;
% disp(['RC presim  : ', num2str(RC_presim)]);
disp(['RC postsim : ', num2str(RC_postsim)]);

x = 1:6;
title('\tau = RC in CIC 0.18\mum process', 'FontSize',15);
xlabel('pattern (#number)', 'FontSize', 13);
ylabel('RC estimation value', 'FontSize', 13);
ylim([1e-12 10e-12]);
xticks(x); % The tick values are the locations along the x-axis where the tick marks appear.
grid on
hold on

ideal_RC = 4e-12 + zeros(1, size(x,2));
plot(x, ideal_RC, 'LineWidth', 3);

% plot(x, RC_presim,'LineWidth', 3);
plot(x, RC_postsim, 'LineWidth', 3);

yyaxis right
ylim([0, 100]);
percent_error = 100 * abs(RC_postsim - ideal_RC)./ideal_RC;
plot(x, percent_error, 'LineWidth', 3);
ylabel('percentage of error(%)', 'FontSize',13);
legend('ideal RC', 'RC postsim', 'error', 'FontSize',15);
hold off