clc, clear, close all
data = readmatrix('domino_1.txt');

size = data(1:1:end,1);
rising_delay = data(1:1:end,2);

hold on;
plot(size, rising_delay);
grid on;
title('rising delay');
xlabel('nmos size');
ylabel('rising delay');
[min_rising_delay,min_idx1] = min(rising_delay);
plot(size(min_idx1),rising_delay(min_idx1),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;