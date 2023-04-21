x = 0:0.01:0.8;
f = 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

error = 0;
ax = 0;
for i = 0:80
        error = error - ((0.8 - 0)^3/(12*8^3)) *(-400+4050*ax - 108000*ax^2+8000*ax^3) / 100;
        ax = ax + 0.01;
end
Q = trapz(x, f);
fprintf("The integral follows trapezoid is: %.4f", Q);
fprintf('\nError: %.4f', error);
