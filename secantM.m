function [pApp,flag,counter] = secantM(funcIn,xInit1,xInit2,tolerance)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
counter=0;
xCurr=xInit2; %xn
xPrev=xInit1; %xn-1
%Current x value
while (abs(funcIn(xCurr)) > tolerance) && (counter < 100)
    tempVal=xCurr;
    %assign xn+1
    xCurr=xCurr-(xCurr-xPrev)*funcIn(xCurr)/(funcIn(xCurr)-funcIn(xPrev));
    %assign xn
    xPrev=tempVal;
    counter=counter+1;
end
if abs(funcIn(xCurr)) <= tolerance
    pApp = xCurr;
    flag = 'flag is good';
else
    pApp=1000000;
    flag='too many iterations';
end