syms f(x);
syms df(x);
f(x) = 0.5*x.^3 - 4*x.^2 +6*x -2;
df(x)= diff(f,x);
e = input('Value of tolerance: ');
x0= input('Value of intial guess: ');
n = input('Value of iteration: ');
%compute
count = 0;
if df(x0) ~=0
    for i=1:n
        x1 = x0 - f(x0)/df(x0);
        c = abs((x1-x0)/x1);
        fprintf('Value of x%d = %.5f\n',i,x1);
        fprintf('Value of error %.5f\n',c);
        if abs(((x1-x0)/x1)*100 )<e
            break
        end
        if df(x1) ==0
            disp('Failed')
        end
        x0 = x1;
    end
else
    disp('Not approriate with Newton Raphson');
end

