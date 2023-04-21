function f = PVSSR( a, x, y )
%UNTITLED4 Summary of this function goes here
% Detailed explanation goes here
if length(x)==length(y)
n=length(x);
else
fprintf('The two data must have the same length');
end
yp=zeros(1,n);
for j=1:n
yp(j)=82.05*303*(1+a(1)/x(j)+a(2)/x(j)^2)/x(j);
end
f=(y-yp)*(y-yp)';
end