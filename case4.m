%% ʹ��mesh�������Ƶ�Ҷ˫����
clear
a = 2;b = 3;c = 4; %���廯a,b,c��ֵ
u = linspace(-pi/2+0.01, pi/2-0.01, 100);
v = linspace(0, 2*pi, 100); %���񻯲���u,v
[u, v] = meshgrid(u, v);
x = a*sec(u).*cos(v); 
y = b*sec(u).*sin(v);
z = c*tan(u); %��Ҷ˫����Ĳ�������
mesh(x, y, z);
grid on;
L=10;
axis([-L, L, -L, L, -L, L]);
xlabel('X');ylabel('Y');zlabel('Z');
title('��Ҷ˫����');
view([80 30]);