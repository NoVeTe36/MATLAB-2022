f = @(x)log10(x) - 770 ;

x0 = 1;
x = fzero(f, x0);
y = f(x);

hold on
ezplot(f);
plot(x, y, 'r+');

grid on
hold off 

x1 = log10(770);
