function [dApp] = fDiffExt(funcIn,aVal,hVal)
%funcIn - function to approximate the derivative of...
%aVal - where we want to approximate the derivative
%hVal- step size
%dApp - derivative approximation output
dApp=2*fDiff(funcIn,aVal,hVal/2)-fDiff(funcIn,aVal,hVal);

end

