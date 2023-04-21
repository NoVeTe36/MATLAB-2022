%a
fprintf('Part a: \n');
Mass = [400;70;45;2;0.3;0.16];
Metabolism = [270; 82; 50;4.8;1.45;0.97];

f = fit(Mass, Metabolism, 'poly1')
tiger_metabolism = f.p1*200 + f.p2



%b 
fprintf('\nPart b: \n')
func = @(x) x.^2 - 480;
dfunc = @(x) 2*x;
xr = input('initial guess: ');
es = 0.00001;
disp('Es = desired relative error (default = 0.0001%)');
maxit = 50;
[root,ea,iter] = newtraph(func,dfunc,xr,es,maxit)

%c 
fprintf('\nPart c: \n');
y = 0;
for x = 0:1:501
    y = y + (-1)^x * 1/(2*x + 1);
end
fprintf('Answer of ');
for x = 0 : 1 : 500
        if (mod(x, 2) == 0)
            fprintf('1/%d - ', 2*x+1);
        end
        if (mod(x, 2) == 1)
            fprintf('1/%d + ', 2*x+1);
        end
end
fprintf('1/%d ', 2*501+1);
fprintf('is: %.4f', y);


%d
fprintf('\nPart d: \n')
A = [1 -2 3; -1 3 -1; 2 -5 5];
B= [9; -6; 17];
ans1 = inv(A)*B;
ans2 = mldivide(A, B);
[l, u] = lu(A)
d = l\B;
ans3 = u\d;

fprintf('\nSolve using inverse: \n');
disp(ans1);
fprintf('\nSolve using mldivide: \n');
disp(ans2);
fprintf('\nSolve using lu: \n');
disp(ans3);


function [root,ea,iter] = newtraph(func,dfunc,xr,es,maxit)
% newtraph: Newton-Raphson root location zeroes
%[root,ea,iter]=newtraph(func,dfunc,xr,es,maxit,p1,p2,...):
% uses Newton-Raphson method to find the root of func
% input:
% func = name of function
% dfunc = name of derivative of function
% xr = initial guess
% es = desired relative error (default = 0.0001%)
% maxit = maximum allowable iterations (default = 50)
% p1,p2,... = additional parameters used by function
% output:
% root = real root
% ea = approximate relative error (%)
% iter = number of iterations
    iter = 0;
    while(1)
        xrold = xr;
        xr = xr - func(xr)/dfunc(xr);
        iter = iter + 1;
        if xr ~= 0
            ea = abs((xr - xrold)/xr) * 100;
        end
        if ea <= es | iter >= maxit
            break
        end
    end
root = xr;
end