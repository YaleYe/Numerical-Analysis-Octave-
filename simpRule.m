function [out] = simpRule(funcIn,a,b)
% funcIn - function whose integral we will approximate
% a - lower (left) limit of integration
% b - upper (right) limit of integration
% out - approximation of the integral of funcIn from a to b using the
%       midpoint rule
% mdpt - midpoint of a and point

mdpt = (a+b)/2;
out = (funcIn(a)+4*funcIn(mdpt)+funcIn(b))*(b-a)/6;

end