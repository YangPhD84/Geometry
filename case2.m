%% 求直线和平面的交点
clear
syms t %符号变量
x = 1 + 2*t;
y = 2 - 3*t;
z = 4*t;
plane_sym = 3*x - 2*y - z + 1;
t_sol = double(solve(plane_sym, t)) %直线和平面交点对应的t
x_sol = double(subs(x, t, t_sol));
y_sol = double(subs(y, t, t_sol));
z_sol = double(subs(z, t, t_sol));
fprintf("交点的坐标：(%4.2f,%4.2f,%4.2f).\n",x_sol,y_sol,z_sol);