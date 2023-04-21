clear ; clc ; close all
n = input('Please Enter the size of the equation system  n =   ') ;
C = input('Please Enter the elements of the Matrix C\n' ) ;
b = input('Please Enter the elements of the Matrix b\n' ) ;
dett = det(C);
if dett == 0
    print('This system unsolvable because det(C) = 0 ');
else
    b = b';
    A = [ C  b ];
end
for j = 1:(n-1)
        for i= (j+1) : n
            mult = A(i,j)/A(j,j) ;
            for k= j:n+1
                A(i,k) = A(i,k) - mult*A(j,k) ;
                disp(A);
            end
        end
end
for p = n:-1:1
    for r = p+1:n
        x(p) = A(p,r)/A(p,r-1);
    end
end

%x1 + 2x2 - x3 = 3
%2x1 + x2 - 2x3 = 3
%-3x1 + x2 + x3 = -6
%C = [ 1 2 -1 ; 2 1 -2 ; -3 1 1 ]
%b= [ 3 3 -6 ]