fprintf('\n-------------------------------------');
fprintf('Labwork 4b: Non-linear regression\n');
p = [0.985 1.108 1.363 1.631];
V = [25000 22200 18000 15000];
R = 82.05;
T = 303;
x = V;
y = p;
f = @(a) PVSSR(a, x, y);
options = optimset('Display', 'iter');
a = fminsearch(f, [10 10], options);
f(a)

fp = @(fV) R * T * ( 1 + a(1)/fV + a(2)/(fV^2)) / fV;
[Vmin, Pmin] = fminbnd(fp, 2000, 4000);

fV1 = linspace(2000, 4000);
hold on 
grid on 
plot(Vmin, Pmin, 'r+')

