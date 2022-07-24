clc, clear, close all
cin = 1:0.001:1000;

PDP = (2*cin./15 + 500./cin + 3).*(cin + 500);
[min_val,min_idx] = min(PDP) ;
hold on;
plot(cin, PDP,'LineWidth',3);
plot(cin(min_idx),PDP(min_idx),'.', 'MarkerSize',30, 'Color', '#7E2F8E');

% min_label = sprintf('( %f, %e)', min_idx/1000, min_val/1000);
% text(cin(min_idx)+100,PDP(min_idx), min_label, 'Color', '#7E2F8E', 'FontSize',15);
title('$\min$ PDP for nand gate and inverter circuit','interpreter','latex', 'FontSize',15);
xlabel('$C_{in}$(fF)','interpreter','latex', 'FontSize',13);
ylabel('PDP', 'FontSize',13);
grid on;