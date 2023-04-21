syms u(x,y) v(x,y) df(ux) df(uy) df(vx) df(vy);
u(x,y) = -y - x^2 + x + 0.75;
v(x,y) = y + 5*x*y - x;
df(ux) = diff(u,x);
df(uy) = diff(u,y);
df(vy) = diff(v,y);
df(vx) = diff(v,x);
x0=1;
y0=2;
disp(subs(df(vy),x,x0));
disp(vpa(subs(df(vy),x,x0)));
disp(subs(df(vy),y,y0));
disp(vpa(subs(df(vy),y,y0)));