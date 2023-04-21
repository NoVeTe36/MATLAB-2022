clc
clear all;
close all;

%BI12-480
%a 
    %i
fprintf("Answer for part a: %.4f", 12^3 + factorial(15) - sqrt(480));
    %ii
x = [1, 2, 3, 4, 5];
a = transpose(x);
fprintf("\nTranspose of x is: \n");
disp(a);

%b
A = [1 2 3 
     4 5 6 
     7 8 9];
B = [1 1 0 
     0 1 0 
     0 0 1];
    %i
o = A + B;
fprintf('\nSum of A and B: \n');
disp(o);

    %ii
C = A * B;
fprintf('The matrix C = A * B is: \n');
disp(C);
fprintf('\n');
fprintf('The matrix D = A. * B is: \n');
D = A.*B;
disp(D);
fprintf(['The difference is C is martix A multiply with matrix B but here matrix D is element wise multiplication']);

    %iii
    fprintf('The eigen value of D is: \n')
    disp(eig(D))

    %iv
E = inv(A-B);
fprintf('\nThe inverse matrix of E = A - B is: \n');
disp(E);

    %v
E(:,3)=[];
E(3,:)=[];
fprintf('\nReduce E: \n');
disp(E);

%c
x = 0:1:30;
y = 2 * x + 0;


figure
plot(x, y, 'r-');
title('Plot');
xlabel('x');
ylabel('y');
legend('2*x')
hold on;
grid on;
box on;
hold off



