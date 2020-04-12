function out=makePn(xVar,xVec,yVec)
n=length(xVec);
out=0;

for index=1:n
    out=out+yVec(index)*Lnk(xVar,xVec,index);
end