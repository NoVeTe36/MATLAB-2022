f = @(x) exp(-x)-exp(-x^3)+1;
x0 = 2;
options = optimset('Display','iter','TolFun',1e-4);
[x, fval, info, output] = fzero(f, x0, options);

figure
box on
hold on
fplot(f, [-1.5 1.5], 'b','LineWidth',2);
plot(x, f(x), 'r*','LineWidth',3);
grid on
hold off
xlabel("x")
ylabel("f(x)")
legend('f(x)',"Root")
legend boxoff
set(gca,'FontSize',16)