clc, clear, close all
cin = 1:0.001:50;
% cin = 19:0.0001:22;

delay = 4/3*cin./10 + 500./cin + 3;
% plot(cin, delay, '-o','LineWidth', 3, 'Color', '#7E2F8E');
hold on;
plot(cin, delay,'LineWidth',3);
% ylim([28, 33]);

title('$\min C_{in}$ for 1 inverter','interpreter','latex', 'FontSize',15);
xlabel('$C_{in}(fF)$','interpreter','latex', 'FontSize',13);
ylabel('delay (neglect  parasitic delay)', 'FontSize',13);
grid on;

cin_index = find(delay>29 & delay<30);
cin_value = cin(cin_index);