function [out] = fDiffExt2(funcIn,aval,hval)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
out = 4*fDiffExt(funcIn,aval,hval/2);
out = out-fDiffExt(funcIn,aval,hval);
out = out/3;
end

