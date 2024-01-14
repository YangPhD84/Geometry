%% ����άά����(Viviani)����
clear
%��������
[x, y, z] = meshgrid(-3:0.1:3, -3:0.1:3, -3:0.1:3);

%����������
F1 = x.^2 + y.^2 + z.^2 - 4;
F2 = x.^2 + y.^2 - 2*x;
p1 = patch(isosurface(x, y, z, F1, 0));
set(p1, 'FaceColor', 'blue', 'EdgeColor', 'none', 'FaceAlpha', 0.3);
hold on
p2 = patch(isosurface(x, y, z, F2, 0));
set(p2, 'FaceColor', 'green', 'EdgeColor', 'none', 'FaceAlpha', 0.3);

%���ƽ���
theta = 0:0.01:(2*pi);
x_line = 1 + cos(theta);
y_line = sin(theta);
z_line = sqrt(4 - (x_line.^2 + y_line.^2));
plot3(x_line, y_line, z_line, 'r', 'LineWidth', 2);
plot3(x_line, y_line, -z_line, 'r', 'LineWidth', 2); 

% ���ù��պ��ӽ�
camlight; 
lighting gouraud; 
grid on;
xlabel('X');ylabel('Y');zlabel('Z');
view(50,20) 

