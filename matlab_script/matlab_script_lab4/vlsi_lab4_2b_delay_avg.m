clc, clear, close all
% data = readmatrix('static_cmos_5.txt');
data = readmatrix('static_cmos_4.txt');

size = data(2:2:end, 1);
rising_delay = data(2:2:end, 2);
falling_delay = data(2:2:end, 3);
delay_avg = data(2:2:end, 4);

subplot(2,2,1);
hold on;
plot(size, rising_delay);
grid on;
title('rising delay');
xlabel('pmos size');
ylabel('rising delay');
[min_rising_delay,min_idx1] = min(rising_delay);
plot(size(min_idx1),rising_delay(min_idx1),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;

subplot(2,2,2);
hold on;
plot(size, falling_delay);
grid on;
title('falling delay');
xlabel('pmos size');
ylabel('falling delay');
[min_falling_delay,min_idx2] = min(falling_delay);
plot(size(min_idx2),falling_delay(min_idx2),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;

subplot(2,2,[3,4]);
hold on;
plot(size, delay_avg);
grid on;
title('delay avg');
xlabel('pmos size');
ylabel('delay avg');
[min_delay_avg,min_idx3] = min(delay_avg);
plot(size(min_idx3),delay_avg(min_idx3),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;