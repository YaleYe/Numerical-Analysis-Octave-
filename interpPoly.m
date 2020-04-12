function out = interpPoly(xvar,xvec,yvec)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
N=length(xvec);

out=0; %initialize output

for index=1:N
    out=out+yvec(index)*Lnk(xvar,xvec,index);
end
end

