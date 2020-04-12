function [pApp,flag,counter] = NewtonM(funcIn,dfuncIn,xInit,tolerance)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
counter=0;
xCurr=xInit; 
%Current x value
while (abs(funcIn(xCurr)) > tolerance) && (counter < 100)
    xCurr=xCurr-funcIn(xCurr)/dfuncIn(xCurr);
    counter=counter+1;
end
if abs(funcIn(xCurr)) <= tolerance
    pApp = xCurr;
    flag = 'flag is good';
    counter = counter;
else
    pApp=1000000;
    flag='too many iterations';
end

