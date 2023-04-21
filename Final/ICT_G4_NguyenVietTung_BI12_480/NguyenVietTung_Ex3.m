%a
fprintf('\nPart a: \n')
fz = [-45; -20]
A = [20 5; 0.04 0.12; 1 1]

b = [9500; 40; 550]
lb = zeros(2, 1)

[xz, fval] = linprog(fz, A, b, [], [], lb, []);
xz
Z = -fval

%b
fprintf('\nPart b: \n');
f = @(x) 2 + x.^3 + exp(2*x+1);
% with h = 0.1, x_i = 0
h = 0.1;
x_i = 0.5;
df = (f(x_i + h) - f(x_i))/h;
fprintf('Forward difference with step 0.1: %.4f \n', df)
% with h = 0.01, x_i = 0
h = 0.01;
x_i = 0.5;
df = (f(x_i + h) - f(x_i))/h;
fprintf('Forward difference with step 0.01: %.4f\n', df)

%c
fprintf('\nPart c: \n');
syms f(x)
f(x) = 480 + 25*x - x^2;
a = 0;
b = 0.8;
x = a : (b-a) : b;
fprintf('Integral of function by trapezoidal is: %f\n', trapz(x, f(x)));
fprintf('Integral of function by quad is: %f\n', quad(@(x) 480 + 25*x - x.^2,a,b));

