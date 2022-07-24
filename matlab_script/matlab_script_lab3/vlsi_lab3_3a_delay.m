clc, clear, close all
N = 1:10;
delay = (N + 1).*(200/3).^( 1./(N+1) ) + 2 + N .*1;
plot(N, delay, '-o','LineWidth', 3, 'Color', '#7E2F8E');

ylim([0,30]);
grid on;
title('path delay of N stage buffer', 'FontSize',15);
xlabel('N numbers of stage buffer (#number)', 'FontSize',13);
ylabel('path delay', 'FontSize',13);