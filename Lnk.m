function [out] = Lnk(xvar,xvec,k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N=length(xvec);

num=1; %initialize numerator and denominator
den=1;

for index=1:N,
    if index ~= k
        num=num.*(xvar-xvec(index));
        den=den*(xvec(k)-xvec(index));
    end %end if
end %end for

out=num/den;

end

