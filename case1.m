%% �ж���ֱ���Ƿ�Ϊ����ֱ�ߣ������������
clear
v1 = [3, -1, 2];
v2 = [1, -2, 2];
p1 = [1, 7, -4];
p2 = [1, -2, 0];
mixed_product = dot(cross(v1, v2), p2-p1) %�����ϻ�
if mixed_product ~= 0
    disp("������ֱ������");
else
    disp("������ֱ�߹���");
end
distance=abs(mixed_product)/norm(cross(v1, v2)) %������ֱ�߾���