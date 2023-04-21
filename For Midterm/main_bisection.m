% Exercise 1
root = bisection(@(x) 5*x.^4 - 5*x.^2+6*x -2, 0 , 2, 0.0001);
fprintf('\nRoot of exercise 1 is %.5f\n', root)



