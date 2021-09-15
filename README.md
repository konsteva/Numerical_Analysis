# Numerical_Analysis
A toolbox of some common methods and tools used in Numerical Analysis

# Contents Description

- Bisection
   
  Input: real numbers a, b for the interval [a,b], real number tol for the tolerence (accuracy), integer n for the maximum number of iterations and function handle of a continuous function f. 
  
  Function: It calculates an estimation of the root of the function f in the interval [a,b]. The precision of the estimation depends on the tolerence and the number of iterations.
  
- Newton-Raphson
  
  Input: real number a as the starting point, real number tol for the tolerence, integer n for the maximum number of iterations, function handle of a continuous function f and f1 a handle of the first derivative of f
  
  Function: A faster way of estimating the root of a function using its first derivative. This method can be used only if the function f is differentiable.
  
- Secant

  Input: real numbers a, b for the interval [a,b], real number tol for the tolerence (accuracy), integer n for the maximum number of iterations and function handle of a continuous function f.
  
  Function: A slower but better method of approaching a root of a function in an interval [a,b]. It doesn't use the derivative, so it can be used in non differentiable functions that the Newton-Raphson method cannot be used
  
- Reler

 Inputs: real numbers a and b, where a is the real value, b is the approximation
 
 Function: It returns the relative error of an (root) estimation
 
# Example

Below can be seen the results from the Methods_test.m file where f = x^3-2x^2+1, tol = 10^-8 and n=50

- First root:
    
      First Root Interval: [-2,-1.750000e+00] 

      First Root Approximations: 
      Newton-Raphson: r= -0.6180339887498949 (Times looped: 7) 
      Secant: r= -0.6180339887498949 (Times looped: 9) 
      Bisection: r= -1.7500000000000002 (Times looped: 50)
    
- Second root:
    
      Third Root Interval: [1.500000e+00,2] 

      Third Root Approximations: 
      Newton-Raphson: r= 1.6180339887498947 (Times looped: 5) 
      Secant: r= 1.6180339887498802 (Times looped: 7) 
      Bisection: r= 1.6180339902639389 (Times looped: 25)
    
- Third root:
    
      Third Root Interval: [1.500000e+00,2] 

      Third Root Approximations: 
      Newton-Raphson: r= 1.6180339887498947 (Times looped: 5) 
      Secant: r= 1.6180339887498802 (Times looped: 7) 
      Bisection: r= 1.6180339902639389 (Times looped: 25)
