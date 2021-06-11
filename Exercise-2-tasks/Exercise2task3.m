% EXERCISE 2 TASK 3: QUESTION: Repeat Task 2 by using Newton’s method.

 %CODE
x0 = 1.2;
xs = [x0,];
counter = 1; precdps = 8;
while true
    xold = xs(counter);
    xna = xold - funtask1(xold)/fundertask1(xold);
    xs(counter+1)=xna;
    if abs(xs(counter+1) - xs(counter)) < 0.5*10**(-precdps)
        break
    endif    
    counter ++;
end
disp(["Precision: (",num2str(precdps),"dps)"])   
disp(["Iterations: ",num2str(counter),'  ',"Root: ",num2str(xs(counter))])
disp(["f(",num2str(xs(counter)),") = ",num2str(funtask1(xs(counter)))," approximately = 0"])
