x= linspace(0,0.8);
x=x';
y = 0.2 + 25*x -200*x.^2 +675*x.^3 - 900*x.^4 +400*x.^5;
f=@(x) 0.2 +25*x -200*x.^2 +675*x.^3 - 900*x.^4 +400*x.^5;
df=@(x) 25-400*x + 2025*x.^2 -3600*x.^3 +2000*x.^4;
Q = diff(f(x))./diff(x);


%hold on 
%grid on
%plot(x, f(x), 'b-')
%plot(x(1:length(Q)), Q, 'r.');
%plot(x,df(x), 'b-')


p = 10
d_forward = forward(y,x,p)
%plot(x(p), d_forward, 'r*')

d_centre = centre(y,x,p)
%plot(x(p), d_centre, 'b*')

d_backward = backward(y,x, p)
%plot(x(p), d_backward, 'g+')

function d = forward(y,x,p)
    d = (y(p+1)-y(p))/(x(p+1)-x(p))
end
function d = centre(y,x,p)
    d = (y(p+1)-y(p-1))/(x(p+1)-x(p-1))
end
function d = backward(y,x,p)
    d = (y(p)-y(p-1))/(x(p)-x(p-1))
end
