function outVec = findindicator(xVec,P)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
c=size(P,2);
obj = zeros(c, 1);
tmp = eye(c);
for i=1:c
    obj(i,1) = obj(i,1) + (norm(xVec - P(:,i))^2);
end
[min_val, min_idx] = min(obj);
outVec = tmp(:, min_idx);
end


