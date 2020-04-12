function [out] = CtrapRuleExt(funcIn,a,b,Nsub)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

out = 4*CtrapRule(funcIn,a,b,2*Nsub);
out = out-CtrapRule(funcIn,a,b,Nsub);
out = out/3;
end

