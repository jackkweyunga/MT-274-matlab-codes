iguess=[1.5];
tol=0.5e-6;
format long
for x0=iguess
	counter=0;
	x00=x0;
	while true
		x = myround(1/pi*asin(-x0/2)+2,8,'rounding')
		counter++;
		if abs(x-x0)<tol
			break
		end
		x0=x;
	end
	disp(['ini guess =',num2str(x00)])
	x
	counter
end
