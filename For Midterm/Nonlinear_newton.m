syms u(x,y);
syms v(x,y);
u(x, y) = input('Enter the 1st equation: \n');
v(x, y) = input('Enter the 2nd equation: \n');
du_x(x)=diff(u,x);
du_y(y)=diff(u,y);
dv_x(x)=diff(v,x);
dv_y(y)=diff(v,y);
x_0=input('Enter initial value for x: \n');
y_0=input('Enter initial value for y: \n');
erx=input('Enter your desire error for x: \n');
ery=input('Enter your desire error for y: \n');
n=input('Enter your desire step(s): \n'); 
for count=1:n
    xnew=x_0-(u(x_0,y_0)*dv_x(x_0)-v(x_0,y_0)*du_y(x_0))/(du_x(x_0)*dv_y(x_0)-du_y(x_0)*dv_x(x_0));
    ynew=y_0-(v(x_0,y_0)*du_x(y_0)-u(x_0,y_0)*dv_x(y_0))/(du_x(y_0)*dv_y(y_0)-du_y(y_0)*dv_x(y_0));
    ex=abs((xnew-x_0)/xnew);
    ey=abs((ynew-y_0)/ynew);
    fprintf('x at step %d is: %f\n',count,xnew);
    fprintf('y at step %d is: %f\n',count,ynew);
    if ex<=erx && ey<=ery
        break
    end
    x_0=xnew;
    y_0=ynew;
end