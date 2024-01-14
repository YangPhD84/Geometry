%% 绘制椭球面
clear
a = 2;b = 3;c = 4;
u = linspace(-pi/2, pi/2, 100);
v = linspace(0, 2*pi, 100);
[u, v] = meshgrid(u, v);
x = a*cos(u).*cos(v); 
y = b*cos(u).*sin(v);
z = c*sin(u);
mesh(x, y, z);
xlabel('X');ylabel('Y');zlabel('Z');
title('椭球面')
view([80 30]);

%% 绘制双叶双曲面
figure;
hold on;
grid on;
L=10;
axis([-L, L, -L, L, -L, L]);
xlabel('X');ylabel('Y');zlabel('Z');
a = 2;b = 3;c = 4;
u1 = linspace(0, pi/2-0.01, 100);
u2 = linspace(pi/2+0.01, pi, 100);
v = linspace(0, 2*pi, 100);
[u1, v1] = meshgrid(u1, v);
[u2, v2] = meshgrid(u2, v);
x1 = a * tan(u1) .* cos(v1);
y1 = b * tan(u1) .* sin(v1);
z1 = c * sec(u1);
mesh(x1, y1, z1);
hold on
x2 = a * tan(u2) .* cos(v2);
y2 = b * tan(u2) .* sin(v2);
z2 = c * sec(u2);
mesh(x2, y2, z2);
xlabel('X');ylabel('Y');zlabel('Z');
title('双叶双曲面')
view([80 30]);

%% 绘制椭圆抛物面
figure;
hold on;
grid on;
L=10;
axis([-L, L, -L, L, -L, L]);
xlabel('X');ylabel('Y');zlabel('Z');
a = 1;b = 2;c = 3;
u = linspace(0, 5, 100);
v = linspace(0, 2*pi, 100);
[u, v] = meshgrid(u, v);
x = a*sqrt(2*u).*cos(v); 
y = b*sqrt(2*u).*sin(v);
z = u;
mesh(x, y, z);
xlabel('X');ylabel('Y');zlabel('Z');
title('椭圆抛物面')
view([80 30]);


%% 绘制双曲抛物面
figure;
hold on;
grid on;
L=10;
axis([-L, L, -L, L, -L, L]);
xlabel('X');ylabel('Y');zlabel('Z');
a = 1;b = 2;c = 3;
u = linspace(-5, 5, 100);
v = linspace(-5, 5, 100);
[u, v] = meshgrid(u, v);
x = a*(u+v); 
y = b*(u-v);
z = 2*u.*v;
mesh(x, y, z);
xlabel('X');ylabel('Y');zlabel('Z');
title('双曲抛物面')
view([20 40]);
