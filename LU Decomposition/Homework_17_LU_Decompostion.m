a= magic(4)
[m,n]=size(a);
% checks
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix
if m~=n
    error('error, matrix must be square')
end
L = eye(n);
P = L;
U = a;
% Pivoting 
for i = 1:length(a)-1
    if i == 1
        C = abs(U(i:end,i));
    else
        C = [zeros(i-1,1);abs(U(i:end,i))];
    end
    if abs(U(i,i))<max(abs(C));
        [x,y]=max(abs(C));
        f(i,:)=U(i,:);
        U(i,:)=U(y,:);
        U(y,:)=f(i,:);
        f(i,:)=P(i,:);
        P(i,:)=P(y,:);
        P(y,:)=f(i,:);
    end 

% Forward Elimination 
    for j = i+1:length(a)
        L(j,i)=U(j,i)./U(i,i);
        U(j,:)=-1*(L(j,i)*U(i,:)-U(j,:));
    end
end
L=(P*a)/U
    disp(U)
    disp(P)
    disp(L)
   


   
