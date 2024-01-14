%% ��ֱ�ߺ�ƽ��Ľ���
clear
syms t %���ű���
x = 1 + 2*t;
y = 2 - 3*t;
z = 4*t;
plane_sym = 3*x - 2*y - z + 1;
t_sol = double(solve(plane_sym, t)) %ֱ�ߺ�ƽ�潻���Ӧ��t
x_sol = double(subs(x, t, t_sol));
y_sol = double(subs(y, t, t_sol));
z_sol = double(subs(z, t, t_sol));
fprintf("��������꣺(%4.2f,%4.2f,%4.2f).\n",x_sol,y_sol,z_sol);