clc
%a 

fprintf("Answer for part a: %.4f", 11^3 + factorial(15) - sqrt(480));
x = [1, 2, 3, 4, 5];
a = transpose(x);
fprintf("\nTranspose of x is: \n");
disp(a);

%b
A = [1 2 3 
     4 5 6 
     7 8 9];
B = [1 1 480 
     0 1 0 
     0 0 1];
    %i
C = A + B;
fprintf('\nSum of A and B: \n');
disp(C);

%ii
m = transpose(C);
fprintf('\nTranspose of A + B: \n');
disp(m);

    %iii
D = A - B;
n = inv(D);
fprintf('\nInverse of A - B: \n');
disp(n);

    %iv
D(:,3)=[];
D(3,:)=[];
fprintf('\nReduce D: \n');
disp(D);

%c
% syms l
x = 0:1:30;
y = 2 * x + 5;


figure
hold on;
grid on;
box on

plot(x, y, 'r-')
hold off


%d
syms x
eqn = sqrt(x) - x + 1;
o = solve(eqn, x);
disp(o);
a = double(o);
disp(a);

