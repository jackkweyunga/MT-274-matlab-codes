function rv = myround(N,dp,meth_choice)
% rounds a number N to dp dec places by using rounding or chopping methods
% the inputs are number N, dec places dp and methods 'rounding' or 'chopping'
% example to call the function to round 2.2546 to 2 decimal places is
% myround(2.2546,2,'chopping')

switch meth_choice
	case 'rounding'
		rv = round(N*10^dp)/10^dp;
	case 'chopping'
		rv = floor(N*10^dp)/10^dp;
end
