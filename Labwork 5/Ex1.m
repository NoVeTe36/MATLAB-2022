clc

fz = [-150; -175]
A = [7 11; 10 8; 1 0; 0 1]

b = [77; 80; 9; 6]
lb = zeros(2, 1)

[xz, fval] = linprog(fz, A, b, [], [], lb, []);
Z = -fval

y1 = @(x) (-7/11)*x + 7;
y2 = @(x) (-10/8)*x + 10;
y3 = @(x) (-150/175)*x + Z/175;

[u, v] = meshgrid(linspace(0, 9), linspace(0, 9));

hold on

plot([0 10], [y1(0) y1(10)], 'g-', 'LineWidth', 2)
plot([0 10], [y2(0) y2(10)], 'b-', 'LineWidth', 2)
plot([9 9], [0 12], 'b-', 'LineWidth', 2)
plot([0 12], [6 6], 'b-', 'LineWidth', 2)
plot([0 12], [y3(0) y3(10)], 'r-', 'LineWidth', 2)
plot(xz(1), xz(2), 'r+')
contour(u, v, 150*u + 175*v, 30);
axis([0 10 0 12]);
hold off