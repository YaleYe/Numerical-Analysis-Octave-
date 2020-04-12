## Copyright (C) 2019 Yorker
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Newton (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yorker <yorker@yorker-Blade-Stealth>
## Created: 2019-01-25

function [pApp,flag] = Newton (funcIn,dfuncIn,xInit,tolerance)
    count = 0;
    xCurrent = xInit;
    while abs(funcIn(xCurrent)) > tolerance && (counter < 100)
      xCurrent = xCurrent - funcIn(xCurrent)/dfuncIn(xCurrent);
      counter = counter += 1
    end
 
    if abs(funcIn(xCurrent)) <= tolerance
      pApp = xCurrent;
      flag = "Find the result";
    else #counter >= 100
      pApp = 10000000000;
      flag = "too many iterations";
    end
 

endfunction
