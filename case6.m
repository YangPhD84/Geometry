%% ������Բ�������Բ����Ľ���
clear
[x, y, z] = meshgrid(-5:0.1:5, -5:0.1:5, 0:0.1:9); %��������
F1 = x.^2 + y.^2 - 2*z;
F2 = x.^2 + y.^2 - 4*x; %�������淽��
p1 = patch(isosurface(x, y, z, F1, 0));
set(p1, 'FaceColor', 'blue', 'EdgeColor', 'none', 'FaceAlpha', 0.3);
hold on
p2 = patch(isosurface(x, y, z, F2, 0));
set(p2, 'FaceColor', 'green', 'EdgeColor', 'none', 'FaceAlpha', 0.3);
%% ���ƽ���
theta = 0:0.01:(2*pi);
x_line = 2 + 2*cos(theta);
y_line = 2*sin(theta);
z_line = (x_line.^2 + y_line.^2)/2;
plot3(x_line, y_line, z_line, 'r', 'LineWidth', 2);
%% �����ӽ�
camlight;
grid on;
xlabel('X');ylabel('Y');zlabel('Z');
view(60,10)