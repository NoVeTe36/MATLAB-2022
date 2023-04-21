A = [1 0 2; -1 5 0; 0 3 -9]
B = inv(A)

% for A*x = B
x = mldivide(A,B)