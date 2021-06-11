% EXERCISE 2 TASK 1. Question: Given the function f (x) = cosh x − cos x − 2, write MATLAB script to search an interval that contains the zero of f . Then compute the zero by the Bisection Method with precision of 6 decimal places.

% CODE
format long
% [a,b] = [1,2] contains the interval
a = 1; b = 2;

% using IVT to test existence of roots in the interval [a,b]
outs = funtask1(a)*funtask1(b);
if outs < 0
  fprintf("Function f(x) has a root between  %i and  %i\n",a,b)
  counter = 1; precdps = 6; root = [];
  while true
      p = (1/2)*(a + b);
      % IVT
      if funtask1(a)*funtask1(p) < 0
          b = p; root(counter)=b;   
      else
          a = p; root(counter)=a;
      end
      if length(root) >= 2
        if abs(root(counter)-root(counter-1)) < 0.5*10**(-precdps)
          break
        end  
      end  
      counter ++;
  end
  fprintf("Precision: %i (dps) Iterations: %i   Root: %i\n",precdps,counter,root(counter))
  fprintf("f(%i) = %i approximately = 0\n",root(counter),funtask1(root(counter)))
else
  fprintf("Root doesn't exist.! Retry another interval")
end
