%% 使用mesh函数绘制单叶双曲面
clear
a = 2;b = 3;c = 4; %具体化a,b,c的值
u = linspace(-pi/2+0.01, pi/2-0.01, 100);
v = linspace(0, 2*pi, 100); %网格化参数u,v
[u, v] = meshgrid(u, v);
x = a*sec(u).*cos(v); 
y = b*sec(u).*sin(v);
z = c*tan(u); %单叶双曲面的参数方程
mesh(x, y, z);
grid on;
L=10;
axis([-L, L, -L, L, -L, L]);
xlabel('X');ylabel('Y');zlabel('Z');
title('单叶双曲面');
view([80 30]);