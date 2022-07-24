%% read file and plot t_{cq}
clc, clear, close all
data_dfqf = readmatrix('delay_flip_flop_dfqf.txt');
data_dfqr = readmatrix('delay_flip_flop_dfqr.txt');
data_drqf = readmatrix('delay_flip_flop_drqf.txt');
data_drqr = readmatrix('delay_flip_flop_drqr.txt');

tdc_dfqf  = data_dfqf(1:end, 1);
tcq_dfqf  = data_dfqf(1:end, 2);
tdc_dfqr  = data_dfqr(1:end, 1);
tcq_dfqr  = data_dfqr(1:end, 2);
tdc_drqf  = data_drqf(1:end, 1);
tcq_drqf  = data_drqf(1:end, 2);
tdc_drqr  = data_drqr(1:end, 1);
tcq_drqr  = data_drqr(1:end, 2);

grid on
hold on
plot(tdc_dfqf, tcq_dfqf,'LineWidth', 3);
plot(tdc_dfqr, tcq_dfqr,'LineWidth', 3,'Color','#77AC30');
plot(tdc_drqf, tcq_drqf,'LineWidth', 3);
plot(tdc_drqr, tcq_drqr,'LineWidth', 3);

%% slope = -1 for DFQF
slope_dfqf = zeros(length(tcq_dfqf)-2, 1);
for n = 1:length(tcq_dfqf)-2
    slope_dfqf(n) = (tcq_dfqf(n) - tcq_dfqf(n + 2))/2e-12;
end
slope_dfqf_abs = abs(slope_dfqf(:) - (-1));
[setup_dfqf_error,setup_dfqf_index] = min(slope_dfqf_abs);
setup_dfqf_index = setup_dfqf_index + 1;

setup_dfqf_x = (tdc_dfqf(setup_dfqf_index) - 0.3e-10):1e-12:(tdc_dfqf(setup_dfqf_index) + 0.3e-10);
setup_dfqf_y = -1*(setup_dfqf_x - tdc_dfqf(setup_dfqf_index)) + tcq_dfqf(setup_dfqf_index);
plot(setup_dfqf_x, setup_dfqf_y,'LineWidth',1,'Color','#0072BD');

%% slope = -1 for DRQR
slope_drqr = zeros(length(tcq_drqr)-2, 1);
for n = 1:length(tcq_drqr)-2
    slope_drqr(n) = (tcq_drqr(n) - tcq_drqr(n + 2))/2e-12;
end
slope_drqr_abs = abs(slope_drqr(:) - (-1));
[setup_drqr_error,setup_drqr_index] = min(slope_drqr_abs);
setup_drqr_index = setup_drqr_index + 1;

setup_drqr_x = (tdc_drqr(setup_drqr_index) - 0.3e-10):1e-12:(tdc_drqr(setup_drqr_index) + 0.3e-10);
setup_drqr_y = -1*(setup_drqr_x - tdc_drqr(setup_drqr_index)) + tcq_drqr(setup_drqr_index);
plot(setup_drqr_x, setup_drqr_y,'LineWidth', 1,'Color','#7E2F8E');

%% m = -1
plot(tdc_dfqf(setup_dfqf_index),tcq_dfqf(setup_dfqf_index),'.', 'MarkerSize', 20,'Color', '#FF0000');
plot(tdc_drqr(setup_drqr_index),tcq_drqr(setup_drqr_index),'.', 'MarkerSize', 20,'Color', '#FF0000');

%% sequencing overhead of DRQF as same as DFQF's
tcq_drqf_abs = zeros(length(tdc_drqf), 1);
for n = 1:length(tdc_drqf)
    tcq_drqf_abs(n) = abs(tcq_drqf(n) - tcq_dfqf(setup_dfqf_index));
end
[hold_drqf_error,hold_drqf_index] = min(tcq_drqf_abs);
plot(tdc_drqf(hold_drqf_index),tcq_drqf(hold_drqf_index),'.', 'MarkerSize', 20,'Color', '#FF0000');

%% sequencing overhead of DFQR as same as DRQR's
tcq_dfqr_abs = zeros(length(tdc_dfqr), 1);
for n = 1:length(tdc_dfqr)
    tcq_dfqr_abs(n) = abs(tcq_dfqr(n) - tcq_drqr(setup_drqr_index));
end
[hold_dfqr_error,hold_dfqr_index] = min(tcq_dfqr_abs);
plot(tdc_dfqr(hold_dfqr_index),tcq_dfqr(hold_dfqr_index),'.', 'MarkerSize', 20,'Color', '#FF0000');

%% hold time for DFQF
hold_dfqf_x = tdc_drqf(hold_drqf_index):1e-12:tdc_dfqf(setup_dfqf_index);
hold_dfqf_y = zeros(length(hold_dfqf_x),1) + tcq_dfqf(setup_dfqf_index);
plot(hold_dfqf_x, hold_dfqf_y,'LineWidth', 1,'Color','#0072BD');

%% hold time for DRQR
hold_drqr_x = tdc_dfqr(hold_dfqr_index):1e-12:tdc_drqr(setup_drqr_index);
hold_drqr_y = zeros(length(hold_drqr_x),1) + tcq_drqr(setup_drqr_index);
plot(hold_drqr_x, hold_drqr_y,'LineWidth', 1,'Color','#7E2F8E');

%% t_{ccq}
[min_tcq_dfqf,min_idx1] = min(tcq_dfqf);
plot(tdc_dfqf(min_idx1),tcq_dfqf(min_idx1),'.', 'MarkerSize', 20,'Color', '#FF0000');
[min_tcq_drqr,min_idx2] = min(tcq_drqr);
plot(tdc_drqr(min_idx2),tcq_drqr(min_idx2),'.', 'MarkerSize', 20,'Color', '#FF0000');

hold off

%% caption
title('FO4 flip flop sequencing element delay','FontSize',15);
xlabel('t_{dc}','FontSize',15);
ylabel('t_{cq}','FontSize',15);
legend('D falls  (1 -> 0), Q falls  (1 -> 0)','D falls  (1 -> 0), Q rises (0 -> 1)', ...
    'D rises (0 -> 1), Q falls  (1 -> 0)','D rises (0 -> 1), Q rises (0 -> 1)', ...
    'slope = -1 for DFQF','slope = -1 for DRQR','FontSize',15);

%% answer
fprintf('t_setup0 : %d (s)\n',tdc_dfqf(setup_dfqf_index));
fprintf('t_pcq0   : %d (s)\n',tcq_dfqf(setup_dfqf_index));
fprintf('t_ccq0   : %d (s)\n',tcq_dfqf(min_idx1));
fprintf('-t_hold0 : %d (s)\n',tdc_drqf(hold_drqf_index)); % after clock
fprintf('-------------------------\n');
fprintf('t_setup1 : %d (s)\n',tdc_drqr(setup_drqr_index));
fprintf('t_pcq1   : %d (s)\n',tcq_drqr(setup_drqr_index));
fprintf('t_ccq1   : %d (s)\n',tcq_drqr(min_idx2));
fprintf('-t_hold1 : %d (s)\n',tdc_dfqr(hold_dfqr_index)); % after clock
fprintf('-------------------------\n');
% t_{ar} = t_{setup1} + t_{hold0}
fprintf('t_ar     : %d (s) = t_setup1 + t_hold0\n',tdc_drqr(setup_drqr_index) - tdc_drqf(hold_drqf_index));
% t_{af} = t_{setup0} + t_{hold1}
fprintf('t_af     : %d (s) = t_setup0 + t_hold1\n',tdc_dfqf(setup_dfqf_index) - tdc_dfqr(hold_dfqr_index));