%% ʹ��isosurface�������Ƶ�Ҷ˫����
clear
a = 2;b = 3;c = 4; %���廯a,b,c��ֵ
[x, y, z] = meshgrid(-10:0.1:10,-10:0.1:10,-10:0.1:10);
F = x.^2/a^2 + y.^2/b^2 - z.^2/c^2-1; %��Ҷ˫����ı�׼����
p = patch(isosurface(x, y, z, F, 0));
set(p, 'FaceColor', 'green', 'EdgeColor', 'none', 'FaceAlpha', 0.3);
camlight;
grid on
L=10;
axis([-L, L, -L, L, -L, L]);
xlabel('X');ylabel('Y');zlabel('Z');
view([80 30]);