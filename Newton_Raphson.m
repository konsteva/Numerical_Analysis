function [root,times] = Newton_Raphson(a,tol,n,f,f1) 
    b = a-f(a)/f1(a);
    times = 1;
    while ((abs(b-a)>tol) && (times<n) && f(a)~=0)
        if (f1(a)~=0)
            a = b;
            b = a-f(a)/f1(a);
            times = times+1;
        else
            fprintf('The derivative at the point x= %d is zero \n', a)
            break;
        end
    end
    root = b;
end