function [out] = rightsideFunc(t,y)
r = 0.1;
d = 0.015;
b = 0.02;

out = r*b*(1-y);