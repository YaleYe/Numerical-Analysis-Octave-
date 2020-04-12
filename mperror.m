%plot errors for forward/centered and 2nd centered diff method
N=1:1000;
hvec=1./N;

testFunc=@(x) cos(x);

for index=1:length(hvec)
    dApprox=CmpRule(testFunc,1,2,index);
    actual=sin(2)-sin(1);
    errorVec(index)=abs(dApprox-actual);
end

loglog(hvec,errorVec);

