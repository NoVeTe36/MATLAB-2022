function [root,iter] = newbisection(f,a,b,er,stp)
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
        if abs((c-c0)/c)<=er
            break
        end
        c0=c;
    end
    count=count+1;
end
root=c;
iter=count;
end
