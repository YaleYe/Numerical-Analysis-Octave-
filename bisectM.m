function [zeroApp,flag,counter] = bisectM(funcIn,a,b,tolerance)
%Bisextion method - approximate a zero of a function
%Variables
% Input:
% funcIn - the function we want to approximate a zero of
% a,b - left and right endpoints of an interval
% tolerance - size used for stopping condition
%
% Output:
% zeroApp - approximation of the zero of funcIn
% flag - message about the conclusion
%
%Local:
% mdpt -midpoint of a and b

if funcIn(a)*funcIn(b) >= 0  %check for proper starting conditions
    zeroApp = 1000000;
    flag = 'bad starting conditions for a and b';
else %good starting conditions proceed as normal..
    
    counter = 0;
    while b-a > tolerance
        mdpt = (a+b)/2;  %compute the midpoint of a and b
        if funcIn(mdpt) == 0
            zeroApp = mdpt;  %assign the output
            a = mdpt;
            b = mdpt;  %guarantee that the loop will stop
        elseif funcIn(a)*funcIn(mdpt) < 0
            b = mdpt;
        else
            a = mdpt;
        end
        zeroApp = mdpt;
        counter = counter + 1;
    end
    flag = 'good result tolerance met';
end

