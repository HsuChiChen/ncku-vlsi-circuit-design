%% read file and plot read margin
clc, clear, close all
data = readmatrix('read_noise_margin.txt');

v1 = data(1:end, 1);
v2 = data(1:end, 2);

grid on;
hold on;
plot(v1, v2,'LineWidth', 3);
plot(v2, v1,'LineWidth', 3);
axis equal;

%% find SNM
max_area = 0;
index_point = zeros(1, 2);
n = length(v1);
while v1(n) > 0.8
    k = length(v1) - n + 1;
    while v2(k) > 0.8
        cal_area = abs(v1(k) - v2(n))*abs((v2(k) - v1(n))); % area = abs(x1 - x2)abs(y1 - y2)
        if (max_area < cal_area) && (v1(k) > v2(n)) && (v2(k) > v1(n)) && (abs(v1(k) - v2(n)) == abs((v2(k) - v1(n))))
            max_area = cal_area;
            index_point(1) = n;
            index_point(2) = k;
        end
        k = k + 1;
    end
    n = n - 1;
end

%% SNM plot
plot(v1(index_point(2)), v2(index_point(2)),'.', 'MarkerSize', 20,'Color', '#FF0000');
plot(v2(index_point(1)), v1(index_point(1)),'.', 'MarkerSize', 20,'Color', '#FF0000');
rectangle('Position',[v2(index_point(1)), v1(index_point(1)), v1(index_point(2)) - v2(index_point(1)), v2(index_point(2)) - v1(index_point(1))], ...
'FaceColor',[0.5 1 0.5 0.5],'EdgeColor','none');

text_area =  ['largest square area = ', num2str(max_area), 'V^2'];
text((v1(index_point(2)) + 0.1),(v2(index_point(2)) - 0.08),text_area,'Color','g','FontSize',14);
text_snm =  ['SNM (side length)   = ', num2str(abs( v1(index_point(2)) - v2(index_point(1)) )), 'V'];
text((v1(index_point(2)) + 0.1),(v2(index_point(2)) - 0.19),text_snm,'Color','g','FontSize',14);
hold off;

%% caption
title('butterfly diagram of read margin','FontSize',15);
xlabel('$V_1$','interpreter','latex', 'FontSize',15);
ylabel('$V_2$','interpreter','latex', 'FontSize',15);
legend('V_2 against V_1 curve','V_1 against V_2 curve','FontSize',15);