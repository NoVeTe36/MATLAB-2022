syms x y
eqns = [-y - x^2 + x + 0.75 == 0, y + 5*x*y - x == 0];
S = solve(eqns,[x y]);
disp(S.x);
disp(S.y);