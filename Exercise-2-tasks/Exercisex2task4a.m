% EXERCISE 2 TASK 4 (a): QUESTION: Write a MATLAB function with appropriate inputs to implement the Regular Falsi method. Test your function using a problem in Task 1 when the interval containing the roots (a) is given

% CODE
format long
x0 = 1;
xi = 2;
iter = 1; precdps = 8; counter = 1; root = [];
while true
    xii = x0-((xi - x0)/(funtask1(xi) - funtask1(x0)))*funtask1(x0);
    if funtask1(xii)*funtask1(x0) < 0
      xi = xii; root(iter)=xi;
    else
      x0 = xii; root(iter)=x0;
    endif
    if length(root) >= 2
        if abs(root(counter+1)-root(counter)) < 0.5*10**(-precdps)
          break
        end
        counter ++; 
    end
    iter ++;
end 
disp(["Precision: (",num2str(precdps),"dps)"])     
disp(["Iterations: ",num2str(counter),'  ',"Root: ",num2str(root(counter))])
disp(["f(",num2str(root(counter)),") = ",num2str(funtask1(root(counter)))," approximately = 0"])
