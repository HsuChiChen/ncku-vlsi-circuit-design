%% read file and plot write margin
clc, clear, close all
data1 = readmatrix('write_noise_margin_v1.txt');
data2 = readmatrix('write_noise_margin_v2.txt');

x1 = data1(1:end, 1);
y1 = data1(1:end, 2);
x2 = data2(1:end, 1);
y2 = data2(1:end, 2);

grid on;
hold on;
plot(x1, y1,'LineWidth', 3);
plot(y2, x2,'LineWidth', 3);
axis equal;

%% find SNM
max_area = 0;
index_point = zeros(1, 2);
for n = 1:length(y2)
    for k = 1:length(y1)
        cal_area = abs(x1(k) - y2(n))*abs(y1(k) - x2(n)); % area = abs(x1 - x2)abs(y1 - y2)
        if (max_area < cal_area) && (x1(k) > y2(k)) && (abs((x1(k) - y2(n))) == abs(y1(k) - x2(n)))
            max_area = cal_area;
            index_point(1) = n;
            index_point(2) = k;
        end
    end
end

%% SNM plot
plot(x1(index_point(2)), y1(index_point(2)),'.', 'MarkerSize', 20,'Color', '#FF0000');
plot(y2(index_point(1)), x2(index_point(1)),'.', 'MarkerSize', 20,'Color', '#FF0000');
rectangle('Position',[y2(index_point(1)), x2(index_point(1)), x1(index_point(2)) - y2(index_point(1)), y1(index_point(2)) - x2(index_point(1))], ...
'FaceColor',[0.5 1 0.5 0.5],'EdgeColor','none');

text_area =  ['largest square area = ', num2str(max_area), 'V^2'];
text( y2(index_point(1)) + 0.03 , x2(index_point(1)) + 0.3, ...
    text_area,'Color','g','FontSize',14);
text_snm =  ['SNM (side length)   = ', num2str(abs( x1(index_point(2)) - y2(index_point(1)) )), 'V'];
text( y2(index_point(1)) + 0.03 , x2(index_point(1)) + 0.18, ...
    text_snm,'Color','g','FontSize',14);
hold off;

%% caption
title('butterfly diagram of write margin','FontSize',15);
xlabel('$V_1$','interpreter','latex', 'FontSize',15);
ylabel('$V_2$','interpreter','latex', 'FontSize',15);
legend('V_2 against V_1 curve','V_1 against V_2 curve','FontSize',15);