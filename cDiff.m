function [dApp] = cDiff(funcIn,aVal,hVal)
%funcIn - function to approximate the derivative of...
%aVal - where we want to approximate the derivative
%hVal- step size
%dApp - derivative approximation output
dApp=(funcIn(aVal+hVal)-funcIn(aVal-hVal))/(2*hVal);

end