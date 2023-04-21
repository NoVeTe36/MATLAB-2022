syms u(x, y) v(x, y) 
u(x, y) = -x.^2 + x + 0.75 - y;
v(x, y) = y + 5*x*y - x.^2;


x0 = input("Enter first value of x: ");
y0 = input("Enter first value of y: ");
err_of_x = input("Enter your desire error of x: ");
err_of_y = input("Enter your desire error of y: ");
step = input("Enter your steps: ");

for i = 1:step
    s ( vpa(a(x, y), x0, y0) - vpa(diff(v, y), x0, y0) )/ ( vpa(diff(u, y), x0, y0)*vpa(diff(v, x), x0, y0) );
    xnew = x0 - ( u(x0, y0)*vpa(diff(v, y), x0, y0) - v(x0, y0)*vpa(diff(u, y),x0,y0)) / (s);
    ynew = y0 - ( v(x0, y0)*vpa(diff(u, x), x0, y0) - u(x0, y0)*vpa(diff(v, x),x0,y0)) / (s);
  
    err_of_x = abs( (xnew-x0)/xnew );
    err_of_y = abs( (ynew - y0)/ynew );

    fprintf("Value of x after step %d is %.5f", count, xnew);
    fprintf("Value of y after step %d is %.5f", count, ynew);

    x0 = xnew;
    y0 = ynew;
end









