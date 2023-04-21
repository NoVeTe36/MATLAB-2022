x = [40 63 62 68 64 45 50 66 67];
y = [1450 3817 3708 4300 3950 1896 2339 4200 4312];
Insert = 72;

%fit
f = fit(x', y', 'poly1') 
 

%polyfit
f = polyfit(x, y, 2)     
func = @(x) f(1)*x^2 + f(2)*x + f(3)
figure
hold on
grid on
box on
fplot(func, [20 80],'g');
plot(x', y', 'b*','LineWidth',2);
plot(Insert, func(Insert), 'r*','LineWidth',2);
fprintf('Predicted x: %f', func(Insert));
legend('Equation','Other','Insert')
hold off