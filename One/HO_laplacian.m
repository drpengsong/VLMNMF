function [L_record] = HO_laplacian(L_record)
L_record = diag(diag(L_record)) - L_record;%������˹�����Ϊ�Խ�Ԫ��Ϊ0������λ�ñ�Ϊ����

% imagesc(L_record)
L_record = L_record * L_record;%L=L*L
L_record_P = L_record(L_record > 0);%L_record_P��L�д���0�������г�һ��
L_record_org = L_record;
mean_value = mean(L_record_P);%L_record_P����һ�еľ�ֵ
std_value = std(L_record_P);%��׼��
L_record(L_record < mean_value - std_value/2) = 0;%��L��С��L_record < mean_value - std_value/2�ĳ�0
[L_record] = LaplicanGeneration(L_record);%��������������˹����

L_record = kernel_completion(L_record, L_record_org);