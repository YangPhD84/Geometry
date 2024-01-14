%% 针对双叶双曲面 (x/a)^2+(y/b)^2-(z/c)^2 = -1的平行截痕法，其中动平面平行于xoy坐标平面。
clear
hold on
grid on;
axis([-10 10 -10 10 -10 10]);
xlabel('X'); ylabel('Y'); zlabel('Z');
a = 1; b = 2; c = 2; %双叶双曲面方程：(x/a)^2+(y/b)^2-(z/c)^2 = -1
plane = surf([-10, 10; -10, 10], [-10, -10; 10, 10], [-10, -10; -10, -10], 'FaceColor', 'green','FaceAlpha', 0.3); % 设置平面
u = linspace(0,2*pi);
for k = -10:0.5:10
    plane.ZData = [k, k; k, k]; % 更新平面高度
    if (k/c)^2 -1> 0
        x = sqrt((k/c)^2-1)*a*cos(u);
        y = sqrt((k/c)^2-1)*b*sin(u);
        z = k*ones(size(x));
        d = plot3(x, y, z, 'r'); % 更新交线
    end
    view([30 30]);
    drawnow;
    pause(0.05);
end