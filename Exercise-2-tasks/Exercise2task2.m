% EXERCISE 2 TASK 2: Question: Write a MATLAB script to estimate the solution of the problem in Task 1 by using Secant Method with accuracy of 8 decimal places.

% CODE
format long
xs = [1,1.03,];
fs = [funtask1(xs(1)),funtask1(xs(2)),];
iter = 1; precdps = 8; counter = 1; root = [];
while true
    xna = xs(iter)-((xs(iter+1) - xs(iter))/(fs(iter+1) - fs(iter)))*fs(iter);
    xs(iter+2)=xna; fs(iter+2)=funtask1(xna); root(iter)=xna;
    if length(root) >= 2
      if abs(root(counter+1) - root(counter)) < 0.5*10**(-precdps)
        break
      endif
      counter ++;
    endif
    iter ++;
end   
fprintf("Precision: %i (dps) Iterations: %i   Root: %i\n",precdps,counter,root(counter))
fprintf("f(%i) = %i approximately = 0\n",root(counter),funtask1(root(counter)))
  
