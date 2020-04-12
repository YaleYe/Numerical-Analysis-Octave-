function [out] = trapRule(funcIn,a,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

out = (funcIn(a)+funcIn(b))*(b-a)/2;
end

