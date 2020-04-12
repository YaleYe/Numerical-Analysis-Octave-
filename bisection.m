

% Author: Yale Ye <Yale Ye@LAPTOP-0SGL8AEJ>
% Created: 2019-01-14

function [zeroApp,flag] = bisection (funcIn,a,b,tolerance)
  %approximate a zero of a function
  %variable
  %Input:
  %funcIn : the function to find zero
  %a,b left and right endpoints of an interval
  % tolerance - size used for stopping condition
  %
  %%Output:
  %%ZeroApp - approximation of the zero of the function
  %%flag - message about the conclusion
  %%
  %%local variable:
  %%midpoint - midpoint of a and b
  if funcIn(a)*funcIn(b) >= 0 %check for proper starting condition
    zeroApp = 100000;
    flag = 'bad starting condition for a and b';
  else  %good starting condition proceed as normal
        %compute the mid point
      midpoint = (a + b)/2;
      while b - a > tolerance
        midpoint = (a + b)/2;
        if funcIn(midpoint) == 0
          zeorApp = midpoint;
          a = midpoint;
          b = midpoint;  ##stop the loop
        elseif funcIn(a)*funcIn(midpoint) < 0
          b = midpoint;
        else
          a = midpoint;
        end
           zeroApp = midpoint;
        end
          flag = "food result tolerance met"
   end