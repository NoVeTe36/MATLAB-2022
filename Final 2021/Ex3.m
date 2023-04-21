clc 
close all
clear all
X = [-50 -30 0 60 90 110];
Y = [1270 1280 1350 1480 1580 1700];
Insert = 100;

% %fit
% f = fit(X', Y', 'poly1') 
% plot(f, X, Y,'o')
 

% %polyfit
% f = polyfit(X, Y, 2)     
% func = @(X) f(1)*X^2 + f(2)*X + f(3)
% figure
% hold on
% grid on
% box on
% fplot(func, [-100 150],'g');
% plot(X', Y', 'b*','LineWidth',2);
% plot(Insert, func(Insert), 'r*','LineWidth',2);
% fprintf('Predicted x: %f', func(Insert));
% legend('Equation','Other','Insert')

% %lsqcurvefit
% a = lsqcurvefit(@(f, x) f(1)*x + f(2), [2;3], X, Y);
% func = @(x) a(1)*x +a(2);
% figure
% hold on
% grid on
% box on
% fplot(func, [-100 150],'g');
% plot(X', Y', 'b*','LineWidth',2);
% plot(100, func(100), 'r*','LineWidth',2);
% xlabel('Temperature');
% ylabel('Heat capacity')
% fprintf('Predicted the heat capacity c at 100 degree by lsqcurvefit: %f\n', func(100));
% legend('Equation (by lsqcurvefit)','Other temperature','100 degree')
% hold off

%c
%trapezoid
x = 0:0.01:0.8;
f = 480 + 25*x-x.^2;

Q = trapz(x, f);
fprintf("The integral follows trapezoid is: %.4f", Q);

%quad
F = inline('480 + 25*x-x.^2'); 
fprintf('\nThe integral follows quadrature is:')
Z = quad(F,0,0.8)

%quadrature
a = 0;
b = 0.8;
f = @(x)480 + 25*x-x.^2;
calculate = (b-a)/2 * f((b-a)/2*(-1/sqrt(3) + (b+a)/2)) + (b-a)/2 * f((b-a)/2*(1/sqrt(3) + (b+a)/2)) 
fprintf('The integral follows gaussian quadrature is: %.4f', calculate);