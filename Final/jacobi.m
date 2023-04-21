A = [6 2 2 2; -3 4 1 1; 1 1 -1 -3];
erx1 = input("Desire error for x1: ");
erx2 = input("Desire error for x2: ");
erx3 = input("Desire error for x3: ");
lamda=input("Input rate of change: ");

x2 = 0;
x3 = 0;
x1first = (A(1,4) - A(1,2)*x2 - A(1,3)*x3) / A(1,1);
x1 = 0;
x2first = (A(2,4) - A(2,1)*x1 - A(2,3)*x3) / A(2,2);
x2 = 0;
x3first = (A(3,4) - A(3,1)*x1 - A(3,2)*x2) / A(3,3);
count = 0;
disp(x1);
disp(x2);
disp(x3);
for i = 1:1
    x1new = (A(1,4) - A(1,2)*x2first - A(1,3)*x3first) / A(1,1);
    x1new = lamda*x1new + (1 - lamda)*x1;
    x2new = (A(2,4) - A(2,1)*x1first - A(2,3)*x3first) / A(2,2);
    x2new = lamda*x2new + (1 - lamda)*x2;
    x3new = (A(3,4) - A(3,1)*x1first - A(3,2)*x2first) / A(3,3);
    x3new = lamda*x3new + (1 - lamda)*x3;
    ex1 = abs((x1first - x1new)/x1new);
    ex2 = abs((x2first - x2new)/x2new);
    ex3 = abs((x3first - x3new)/x3new);
    count = count + 1;
    fprintf("x1 at step %d is: %d\n", count, x1new);
    fprintf("x2 at step %d is: %d\n", count, x2new);
    fprintf("x3 at step %d is: %d\n", count, x3new);
    fprintf("\n");
    x1first = x1new;
    x2first = x2new;
    x3first = x3new;
    if( ex1<=erx1 && ex2<=erx2 && ex3<=erx3)
        break;
    end
end