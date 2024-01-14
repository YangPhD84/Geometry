%% 针对双叶双曲面 (x/a)^2+(y/b)^2-(z/c)^2 = -1的平行截痕法，其中动平面平行于zox坐标平面。
clear
hold on
grid on;
axis([-10 10 -10 10 -10 10]);
xlabel('X');ylabel('Y');zlabel('Z');
a = 1; b = 2; c = 2; % 双叶双曲面标准方程的三个参数
plane = surf([-10, 10; -10, 10], [-10, -10; -10, -10], [-10, -10; 10, 10],  'FaceColor', 'green','FaceAlpha', 0.3); % 设置平面
u = linspace(-pi/2+0.1,pi/2-0.1); % 参数u的范围
for k = -10:0.5:10
    plane.YData = [k, k; k, k]; % 更新平面高度
    x = sqrt(abs(-1-(k/b)^2))*a*tan(u);
    z = sqrt(abs(-1-(k/b)^2))*c*sec(u);
    y = k*ones(size(x));
    d = plot3(x, y, z, 'r');
    hold on
    d = plot3(-x, y, -z, 'r'); % 更新交线
    view([30 30]);
    pause(0.05);
end