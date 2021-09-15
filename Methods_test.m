f = @(x) x^3-2*x^2+1;
str_f = func2str(f);
f1 = @(x) 3*x^2-4*x;
tol = 10^-8;
n=50;

% Plotting the function
hold on

fplot(f)
xline(0)
yline(0)

axis square

fprintf('Function: %s \n',str_f(5:end))
fprintf('Tolerance: %d \n\n', tol)

%First root approximation
x0 = -2;
x1 = -7/4;

fprintf('First Root Interval: [%d,%d] \n\n', x0,x1)
fprintf('First Root Approximations: \n')
fprintf('Newton-Raphson: ')

[root_N,times_N] = Newton_Raphson(x0,tol,n,f,f1);

fprintf('r= %1.16f ', root_N)
fprintf('(Times looped: %d) \n', times_N)

fprintf('Secant: ')

[root_S,times_S] = Secant(x0,x1,tol,n,f);

fprintf('r= %1.16f ', root_S)
fprintf('(Times looped: %d) \n', times_S)


fprintf('Bisection: ')

[root_B,times_B] = Bisection(x0,x1,tol,n,f);

fprintf('r= %1.16f ', root_B)
fprintf('(Times looped: %d) \n\n', times_B)


%Second root approximation
x0 = 4/3;
x1 = 5/4;
fprintf('Second Root Interval: [%d,%d] \n\n', x0,x1)
fprintf('Second Root Approximations: \n')
fprintf('Newton-Raphson: ')

[root_N,times_N] = Newton_Raphson(x0,tol,n,f,f1);

fprintf('r= %1.16f ', root_N)
fprintf('(Times looped: %d) \n', times_N)

fprintf('Secant: ')

[root_S,times_S] = Secant(x0,x1,tol,n,f);

fprintf('r= %1.16f ', root_S)
fprintf('(Times looped: %d) \n', times_S)

fprintf('Bisection: ')

[root_B,times_B] = Bisection(x0,x1,tol,n,f);

fprintf('r= %1.16f ', root_B)
fprintf('(Times looped: %d) \n\n', times_B)

%Third root approximation

x0 = 3/2;
x1 = 2;

fprintf('Third Root Interval: [%d,%d] \n\n', x0,x1)
fprintf('Third Root Approximations: \n')
fprintf('Newton-Raphson: ')

[root_N,times_N] = Newton_Raphson(x0,tol,n,f,f1);

fprintf('r= %1.16f ', root_N)
fprintf('(Times looped: %d) \n', times_N)

fprintf('Secant: ')

[root_S,times_S] = Secant(x0,x1,tol,n,f);

fprintf('r= %1.16f ', root_S)
fprintf('(Times looped: %d) \n', times_S)

fprintf('Bisection: ')

[root_B,times_B] = Bisection(x0,x1,tol,n,f);

fprintf('r= %1.16f ', root_B)
fprintf('(Times looped: %d)', times_B)