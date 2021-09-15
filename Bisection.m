function [root,times] = Bisection(a,b,tol,n,f)
    m = (a+b)/2;
    times = 1;
    while abs(f(m))>tol && times < n
        if sign(f(a)) == sign(f(m))
            a = m;
        elseif sign(f(b)) == sign(f(m))
            b = m;
        elseif f(m) == 0
            break
        end
        m = (a+b)/2;
        times = times + 1;
    end
    root = m;
end