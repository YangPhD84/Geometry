%% ���˫Ҷ˫���� (x/a)^2+(y/b)^2-(z/c)^2 = -1��ƽ�нغ۷������ж�ƽ��ƽ����zox����ƽ�档
clear
hold on
grid on;
axis([-10 10 -10 10 -10 10]);
xlabel('X');ylabel('Y');zlabel('Z');
a = 1; b = 2; c = 2; % ˫Ҷ˫�����׼���̵���������
plane = surf([-10, 10; -10, 10], [-10, -10; -10, -10], [-10, -10; 10, 10],  'FaceColor', 'green','FaceAlpha', 0.3); % ����ƽ��
u = linspace(-pi/2+0.1,pi/2-0.1); % ����u�ķ�Χ
for k = -10:0.5:10
    plane.YData = [k, k; k, k]; % ����ƽ��߶�
    x = sqrt(abs(-1-(k/b)^2))*a*tan(u);
    z = sqrt(abs(-1-(k/b)^2))*c*sec(u);
    y = k*ones(size(x));
    d = plot3(x, y, z, 'r');
    hold on
    d = plot3(-x, y, -z, 'r'); % ���½���
    view([30 30]);
    pause(0.05);
end