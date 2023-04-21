function root = bisection(f, a, b, e, n)
    if f(a)*f(b) < 0
        c_old = 0;
        for i = 1:5
            c = (a+b)/2;
            e_new = abs((c-c_old)/c);
            fprintf('\nEstimate error %d: %f',i, e_new);
            if e_new <= e 
                break
            end
            if f(a)*f(c) < 0
                b = c;
            elseif f(b)*f(c) < 0
                a = c;
            end
            c_old = c;
            disp("C is: %.5f", c);
        end
    else
        disp('No root')
    end
    root = c;
end

