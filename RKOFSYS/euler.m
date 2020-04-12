function[tOut,wOut]=euler(rhsf,a,b,alpha,N)
%INPUT:
% rhsf - right hand side of the diff equation
% a - initial t value
% b - last t value
% alpha - initial y value (at t=a)
% N - Number of steps 
% OUTPUT:
% tOut - vector of t-values where solution y is approximated
% wOut - vector of approximated y values

%Define h
h=(b/a)/N;
%Initialize tOut and wOut
wOut(1)= alpha;
tOut(1)= a;
%Use for loop to approximate y using Euler
for index=1:N
    wOut(index+1)=wOut(index)+h*(rhsf(tOut(index),wOut(index)));
    tOut(index+1)=tOut(index) + h;
end

