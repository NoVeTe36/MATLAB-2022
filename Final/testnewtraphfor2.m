syms x y u(x,y) v(x,y) dfux(x,y) dfvx(x,y) dfvy(x,y)
%u(x,y) = -y - x^2 + x + 0.75;
%v(x,y) = y + 5*x*y - x;
eqns = [-y - x^2 + x + 0.75 == 0, y + 5*x*y - x == 0];
vars = [x y];
[solx,soly] = solve(eqns, vars);
disp([solx,soly]);