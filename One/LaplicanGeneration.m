function [laplacian] = LaplicanGeneration(K)%K=AΪ���ƶȾ���
eye_matrix = 1 - eye(size(K));%�Խ���Ϊ0���ǶԽ���Ϊ1
K = K .* eye_matrix;%�Խ���Ԫ��Ϊ0������Ԫ�ز���
c_diag = sum(K, 2);%ÿ�еĺ�
c_diag(c_diag == 0) = 1;
c_diag(c_diag < 10^(-10)) = 10^(-10);
c_diag = diag(sqrt(c_diag.^(-1)));%c_diagΪ�Ⱦ���D��D=D^(-1/2)
laplacian = eye(size(K)) - c_diag * K * c_diag;