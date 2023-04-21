f = [-45 -20 ];
A = [0.04 0.12 
    20 5
    1 1];
b = [40 9500 550];
lb = zeros(2, 1);
[x,fval,exitflag,output,lambda] = linprog(f,A,b,[],[],lb)