clc, clear, close all
data = readmatrix('min_pdp.txt');

size = data(1:3:end, 1);
rising_delay = data(1:3:end, 2);
falling_delay = data(1:3:end, 3);
delay_avg = data(1:3:end, 4);
power = data(2:3:end, 1);
pdp = data(2:3:end, 2);

subplot(3,2,1);
hold on;
plot(size, rising_delay);
grid on;
title('rising delay');
xlabel('nmos size');
title('rising delay');
[min_rising_delay,min_idx1] = min(rising_delay);
plot(size(min_idx1),rising_delay(min_idx1),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;

subplot(3,2,2);
hold on;
plot(size, falling_delay);
grid on;
title('falling delay');
xlabel('nmos size');
ylabel('rising delay');
[min_falling_delay,min_idx2] = min(falling_delay);
plot(size(min_idx2),falling_delay(min_idx2),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;

subplot(3,2,3);
hold on;
plot(size, delay_avg);
grid on;
title('delay avg');
xlabel('nmos size');
ylabel('delay avg');
[min_delay_avg,min_idx3] = min(delay_avg);
plot(size(min_idx3),delay_avg(min_idx3),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;

subplot(3,2,4);
hold on;
power = power';
power = abs(power);
power = power';
plot(size, power);
grid on;
title('power');
xlabel('nmos size');
ylabel('power');
[min_power,min_idx4] = min(power);
plot(size(min_idx4),power(min_idx4),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;

subplot(3,2,[5, 6]);
hold on;
plot(size, pdp);
grid on;
title('pdp');
xlabel('nmos size');
ylabel('pdp');
[min_pdp,min_idx5] = min(pdp);
plot(size(min_idx5),pdp(min_idx5),'.', 'MarkerSize', 10,'Color', '#7E2F8E');
hold off;