h=0.1;
x=0:h:1;
y=zeros(size(x));
y(0)=1/2;
n=numel(y);
for i = 1:n-1
    dydx= 1+(y-x).^2 ;
    y(i+1) = y(i)+dydx*h ;
    fprintf('="Y"\n\t   %0.01f',y(i));
end

plot(x,y);
grid on;