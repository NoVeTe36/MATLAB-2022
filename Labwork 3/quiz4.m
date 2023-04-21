
Weight = [1 2 3 4 5];
JHI = [5.5 43.1 128 290.7 498.4];

%f = fit(Weight, JHI, 'poly2');
%func = @(x) f(1)*x^2 + f(2)*x +f(3)

f1 = polyfit(Weight, JHI, 2);
func = @(x) f1(1)*x.^2 + f1(2)*x + f1(3) ;
fprintf('%.4f %.4f %.4f', f1(1), f1(2), f1(3));
%c1 = @(f, x) f(1)*x + f(2);
%pkg load optim;
%a1 = lsqcurvefit(c1, [2; 3], Weight, JHI);
%func1 = @(x) a1(1)*x + a1(2);
%figure(1);


hold on 
grid on
fplot(func);
plot(Weight, JHI, 'b*');



