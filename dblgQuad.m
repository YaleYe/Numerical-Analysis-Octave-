function [out] = dblgQuad(funcInxy,a,b,cx,dx,Nx,Ny)
%funcInxy - function of a and y to approximate the integral of from a to b
[t,w]=gaussget(Nx);
x=((b-a)*t+(b+a))/2;
w=w*(b-a)/2;
out=0;
for index=1:Nx
    tempf=@(y) funcInxy(x(index),y);
    tempc=cx(x(index));
    tempd=dx(x(index));
    out=out+w(index)*gQuad(tempf,tempc,tempd,Ny);

end