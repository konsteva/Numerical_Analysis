function [root,times] = Secant(a,b,tol,n,f)
    c = b-f(b)*(b-a)/(f(b)-f(a));
    times = 1;
    while ((abs(c-b)>tol) && (times<n) && (f(c)~=0))
       a = b;
       b = c;
       c = b-f(b)*(b-a)/(f(b)-f(a));
       times = times+1;
    end
    root = c;
end

