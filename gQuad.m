function [out] = gQuad(funcIn,a,b,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[t,w]=gaussget(N);
x=((b-a)*t+(b+a))/2;
w=w*(b-a)/2;
out=sum(w.*funcIn(x));

end

