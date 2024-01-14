%% ���˫Ҷ˫���� (x/a)^2+(y/b)^2-(z/c)^2 = -1��ƽ�нغ۷������ж�ƽ��ƽ����xoy����ƽ�档
clear
hold on
grid on;
axis([-10 10 -10 10 -10 10]);
xlabel('X'); ylabel('Y'); zlabel('Z');
a = 1; b = 2; c = 2; %˫Ҷ˫���淽�̣�(x/a)^2+(y/b)^2-(z/c)^2 = -1
plane = surf([-10, 10; -10, 10], [-10, -10; 10, 10], [-10, -10; -10, -10], 'FaceColor', 'green','FaceAlpha', 0.3); % ����ƽ��
u = linspace(0,2*pi);
for k = -10:0.5:10
    plane.ZData = [k, k; k, k]; % ����ƽ��߶�
    if (k/c)^2 -1> 0
        x = sqrt((k/c)^2-1)*a*cos(u);
        y = sqrt((k/c)^2-1)*b*sin(u);
        z = k*ones(size(x));
        d = plot3(x, y, z, 'r'); % ���½���
    end
    view([30 30]);
    drawnow;
    pause(0.05);
end