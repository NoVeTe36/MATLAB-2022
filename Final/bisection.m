f = @(x) x^3 - 2*x -5;
a= input("Input upper bound: ");
b= input("Input lower bound: ");
er= input("Input desire error: ");
stp=input('Input step: ');
count=0;
c0=0;
while(count<stp)
    if f(a)*f(b)>=0
        error('No root!\n');
    else
        c=(a+b)/2;
        if f(a)*f(c)<0
            b=c;
        elseif f(b)*f(c)<0
            a=c;
        end
        fprintf("Root at step %d is: %f\n", count+1, c);
        fprintf("Error at step %d is: %f\n", count+1, abs((c-c0)/c));
        fprintf("\n");
        if abs((c-c0)/c)<=er
            break
        end
        c0=c;
        
    end
    count=count+1;
end
