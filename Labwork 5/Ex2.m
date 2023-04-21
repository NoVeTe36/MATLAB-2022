x = linspace(0, 0, 8);
x = x';
y = 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;
f = @(x)0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

Q = trapz(x, y)
%Q = quadadapt(f, 0, 0.8)


hold on
grid on
plot (x, f(x), 'b-')
plot(x(1:length(Q)), Q, 'r.')
plot(x, y)
 



