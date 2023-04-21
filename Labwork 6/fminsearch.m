f = @(X) X(1)*X(2)*exp(-(X(1)^2+X(2)^2));
x0 = [1 1];
options = optimset('Display','iter','TolFun',1e-8);
[X,fval,exitflag,output] = fminsearch(f, x0);

x = -2:.1:2;
y = -2:.1:2;
[xx, yy] = meshgrid(x, y);
z = xx.*yy.*exp(-(xx.^2+yy.^2));

figure
surf(xx,yy,z);
xlabel ("x");
ylabel ("y");
zlabel ("f(x,y)");
title ("f(x,y) = x*y*exp(-(x^2+y^2))");
set(gca,'FontSize',16)