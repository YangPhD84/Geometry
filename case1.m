%% 判断两直线是否为异面直线，并计算其距离
clear
v1 = [3, -1, 2];
v2 = [1, -2, 2];
p1 = [1, 7, -4];
p2 = [1, -2, 0];
mixed_product = dot(cross(v1, v2), p2-p1) %计算混合积
if mixed_product ~= 0
    disp("这两条直线异面");
else
    disp("这两条直线共面");
end
distance=abs(mixed_product)/norm(cross(v1, v2)) %计算两直线距离