clc;
clear all ;
close all;

f = @(x) -(x^3)*exp(-x);
x1 = 1;
x2 = 4;
options = optimset('Display','iter','TolFun',1e-8);
[x, fval, info, output] = fminbnd (f, x1, x2, options)

box on
hold on
fplot(f, [1 4], 'b','LineWidth',2);
plot(x, f(x), 'r*','LineWidth',3);
grid on
hold off
xlabel("x")
ylabel("f(x)")
legend('f(x)',"Minimum")
legend boxoff
set(gca,'FontSize',10)