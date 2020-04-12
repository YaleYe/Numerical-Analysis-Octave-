%plot errors for forward/centered and 2nd centered diff method
N=1:1000;
hvec=1./N;

testFunc=@(x) x^3+sin(x);

aval=2;

for index=1:length(hvec)
    dApprox=mpRule(testFunc,0,hvec(index));
    actual=sin(hvec(index));
    errorVec(index)=abs(dApprox-actual);
end

loglog(hvec,errorVec);

