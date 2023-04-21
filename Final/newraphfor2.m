syms u(x,y) v(x,y) dfux(x,y) dfvx(x,y) dfvy(x,y) dfuy(x,y)
u(x,y) = -10 + y + 2*x^2 ;
v(x,y) = 521 + y^3 - 3*x;
dfuy(x,y) = diff(u,y);
dfux(x,y) = diff(u,x);
dfvy(x,y) = diff(v,y);
dfvx(x,y) = diff(v,x);
x0=input('Enter initial value for x: \n');
y0=input('Enter initial value for y: \n');
erx=input('Enter your desire error for x: \n');
ery=input('Enter your desire error for y: \n');
stp=input('Enter your desire step(s): \n'); 
if u(x0,y0)==0 && v(x0,y0)==0
     error('Root is: x = %.4f, y = %.4f',x0);
end
for count=1:stp
    xnew = x0 - (u(x0,y0)*dfvy(x0,y0) - v(x0,y0)*dfuy)/(dfux(x0,y0)*dfvy(x0,y0) - dfuy*dfvx(x0,y0));
    ynew = y0 - (v(x0,y0)*dfux(x0,y0) - u(x0,y0)*dfvx(x0,y0))/(dfux(x0,y0)*dfvy(x0,y0) - dfuy*dfvx(x0,y0));
    ex = abs((xnew-x0)/xnew);
    ey = abs((ynew-y0)/ynew);
    fprintf("Jacobi(%f, %f, %f, %f) at iter %d\n",dfux(x0,y0), dfuy(x0,y0), dfvx(x0,y0), dfvy(x0,y0), count);
    fprintf("Determinat of Jacobi is: %f\n", dfux(x0,y0)*dfvy(x0,y0) - dfvx(x0,y0)*dfuy(x0,y0));
    fprintf('x at step %d is: %f\n',count,xnew);
    fprintf('y at step %d is: %f\n',count,ynew);
    fprintf('ex at step %d is: %f\n',count,ex);
    fprintf('ey at step %d is: %f\n',count,ey);
    fprintf('\n');
    if ex<=erx && ey<=ery
        fprintf("Need %d iter to solve\n",count);
        break
    end
    x0=xnew;
    y0=ynew;
end

