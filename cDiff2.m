function [dApp] = cDiff2(funcIn,aVal,hVal)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
dApp=(funcIn(aVal+hVal)-2*funcIn(aVal)+funcIn(aVal-hVal))/hVal^2;
end

