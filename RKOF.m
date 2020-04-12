function[tOut,wOut]=RKOF(rhsf,a,b,alpha,N)
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
h= (b-a)/N
%Initialize tOut and wOut
wOut(1)= alpha;
tOut(1)= a;
%Use for loop to approximate y using Euler
for index=1:N
    kOne= h*rhsf(tOut(index),wOut(index));
    kTwo= h*rhsf(tOut(index)+h/2,wOut(index)+1/2*kOne);
    kThree= h*rhsf(tOut(index)+h/2,wOut(index)+1/2*kTwo);
    kFour = h*rhsf(tOut(index)+h,wOut(index)+kThree);
    wOut(index+1) = wOut(index) + (1/6)*(kOne+2*kTwo+2*kThree+kFour);
    tOut(index+1) = tOut(index) + h;
end

%[myt,myw] = RKOF(@(t,y) t/y,1,3,2,20)