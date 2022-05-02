function [L, U, P] = Homework_17_algorithim_development(A)
% it is passed the square matrix A
% returns to the triangular matrix
% functio [L], [U] and permutation p.
% store the length of square matrix A
[m,n] = size(A);
L = eye(n);
P = L;
U = A;

if m~=n 
    disp(error'matrrx must be a square')
end

for k == 1
    c

% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix


