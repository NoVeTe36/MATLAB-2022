Student = ["Lan Anh", "Van Toan", "Quang Hai", "Xuan Truong", "Cong Phuong", "Huyen My", "My Linh", "Duc Chinh", "Phan Van Duc"];
Weight = [40 63 62 68 64 45 50 66 67];
JHI = [1450 3817 3708 4300 3950 1896 2339 4200 4312];
VanLam = 72;

%f = fit(Weight, JHI, 'poly2');
%func = @(x) f(1)*x^2 + f(2)*x +f(3)

%f1 = polyfit(Weight, JHI, 1);
%func = @(x) f1(1)*x + f1(2) ;

%c1 = @(f, x) f(1)*x + f(2);
%pkg load optim;
%a1 = lsqcurvefit(c1, [2; 3], Weight, JHI);
%func1 = @(x) a1(1)*x + a1(2);
%figure(1);


hold on 
grid on
fplot(func, [20 80]);
plot(Weight, JHI, 'b*');
plot(VanLam, func(VanLam), 'r+');
fprintf('Predicted JHI number of Van Lam: %.3f', func(VanLam));


