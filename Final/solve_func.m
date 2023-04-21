syms h
r = 2.2;
L = 5;
% V = 8;
V = @(h) ((r.^2*acos((r-h)/r)) - (r-h)*sqrt(2*r*h-h*h))*L;
solve(V(h)==8, h)