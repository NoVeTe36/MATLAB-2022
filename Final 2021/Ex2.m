%a
syms h
r = 2.2;
L = 5;
V = @(h) ((r.^2*acos((r-h)/r)) - (r-h)*sqrt(2*r*h-h*h))*L;
solve(V(h) == 8, h)


%b 
func = @(x) x.^2 - 480;
dfunc = @(x) 2*x;
xr = input('initial guess: ');
es = 0.00001;
disp('Es = desired relative error (default = 0.0001%)');
maxit = 50;
[root,ea,iter] = newtraph(func,dfunc,xr,es,maxit)

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
end;

%c 
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
A = [ 2 1 4;
    1 2 -5;
    3 -2 -4];
B = [10; 1; 8];

x = inv(A) * B



