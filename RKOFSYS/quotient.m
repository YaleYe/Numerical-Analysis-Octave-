function [out] = quotient(b,d,r,xvar,funcIn)
funcA = (b-d)*xvar;
funcB = (b-d)*funcIn(xvar)+r*b*(xvar-funcIn(xvar));
out = (funcB-funcA)/xvar^2;

end