% EXERCISE 1 TASK 1: QUESTION: Write a MATLAB function myround which rounds a given number N to a given number of decimal places dp by any of the method; chopping or rounding. Hint: Use a third boolean or string input meth choice to switch between the two methods.

% CODE
function rv = myround(N,dp,meth_choice)
    switch meth_choice
        case "rounding"
            rv = round(N*10^dp)/(10^dp);
        case "chopping"
            rv = floor(N*10^dp)/(10^dp); % also fix works as a substitute for floor
        otherwise
            disp("Innapropriate Method Choice")
    end        
endfunction
