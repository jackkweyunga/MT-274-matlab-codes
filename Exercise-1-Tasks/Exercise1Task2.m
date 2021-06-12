iguess=[1 2 3 4 5 6];
tol=0.5e-8;
format long
for x0=iguess
	counter=0;
	x00=x0;
	while true
		x = 1/2*(x0+2/x0);
		counter=counter+1;
		if abs(x-x0)<tol
			break
		end
		x0=x;
	end
disp(['ini guess =',num2str(x00)])
x
counter
end
