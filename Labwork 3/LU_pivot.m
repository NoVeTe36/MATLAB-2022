function [L, U, P] = LU_pivot(A)
[n, n1] = size(A); L=eye(n); P=eye(n); U=A;
for j = 1:n
[pivot m] = max(abs(U(j:n, j)));
m = m+j-1;
if m ~= j
U([m,j],:) = U([j,m], :); % interchange rows m and j in U
P([m,j],:) = P([j,m], :); % interchange rows m and j in P
if j >= 2; % very_important_point
L([m,j],1:j-1) = L([j,m], 1:j-1); % interchange rows m
and j in columns 1:j-1 of L
end;
end
for i = j+1:n
L(i, j) = U(i, j) / U(j, j);
U(i, :) = U(i, :) - L(i, j)*U(j, :);
end
end
