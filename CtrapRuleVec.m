function [out] = CtrapRuleVec(xvec,yvec)
% xvec- vector of x values
% yvec- vector of y values


out=0;

for index=1:length(xvec)-1
    h=xvec(index+1)-xvec(index);
    out=out+(yvec(index+1)+yvec(index))*h/2;
end 

end