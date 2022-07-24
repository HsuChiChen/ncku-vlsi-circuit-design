%% read file and plot t_{cq}, t_{dq}
clc, clear, close all
data = readmatrix('delay_latch.txt');

td   = data(2:2:end, 1);
tdcr = data(2:2:end, 2);
tdcf = data(2:2:end, 3);
tcq  = data(2:2:end, 4);
tdq  = data(3:2:end, 2);

grid on;
hold on;
% plot(tdcr, tcq,'LineWidth', 3);
% plot(tdcr, tdq,'LineWidth', 3);
plot(tdcf, tcq,'LineWidth', 3,'Color','#0072BD');
plot(tdcf, tdq,'LineWidth', 3,'Color','#7E2F8E');

%% find min delay
[min_tcq,min_idx1] = min(tcq);
[min_tdq,min_idx2] = min(tdq(800:end)); %find tail
min_idx2 = min_idx2 + 800;
tpdp = min_tdq * 1.05;
plot(tdcf(min_idx1),tcq(min_idx1),'.', 'MarkerSize', 20,'Color', '#00FF00');
plot(tdcf(min_idx2),tdq(min_idx2),'.', 'MarkerSize', 20,'Color', '#FF00FF');
fprintf('minimum t_cq : %d (s) = t_ccq\n',min_tcq);
fprintf('minimum t_dq : %d (s)\n',min_tdq);
fprintf('t_pdp        : %d (s) = minimum t_dq * 1.05\n',tpdp);

%% find the index of the closest point to tpdp value
% t_setup_distance = zeros(length(tdq),1);
% for n = 1:length(tdq)
%     t_setup_distance(n) = abs(tdq(n) - tpdp);
% end
% [t_setup_error,min_idx3] = min(t_setup_distance);

%find tail
n = 1;
while ~isnan(tdq(n))
n = n + 1;
end
min_idx3 = n-1;

%% use this index to find tdcf
t_setup = tdcf(min_idx3);

plot(tdcf(min_idx3),tdq(min_idx3),'.', 'MarkerSize', 20,'Color', '#FF0000');
fprintf('t_setup      : %d (s) = tdcf value in t_pdp point\n',t_setup);

%%  caption
ylim([1e-10 2.5e-10]);
title('FO3 latch sequencing element delay','FontSize',15);
ylabel('delay time','FontSize',15);
% xlabel('t_{dcr}','FontSize',15);
% legend('t_{cq} delay in different t_{dcr}','t_{dq} delay in different t_{dcr}','FontSize',15);
xlabel('t_{dcf}','FontSize',15);
legend('t_{crq} delay in different t_{dcf}','t_{dq} delay in different t_{dcf}', ...
    'minimum t_{cq} = t_{ccq}','minimum t_{dq} (in tail range)','t_{pdp} = minimum t_{dq} \times 1.05 (in tail range)','Location','northwest','FontSize',15);