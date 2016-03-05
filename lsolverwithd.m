function [x]=lsolverwithd(L,U,p,q,p0,D,b) 
[Jl,Kl,vl]=find(L);
Il=find(Jl-Kl == 0);
[Jr,Kr,vr]=find(U);
Ir=find(Jr-Kr == 0)+1;
Ir=[1;Ir];
b=inv(D)*b;
b=b(p,:);
[s,s]=size(L);
c=zeros(s,1);
tempb=b;
for i=1:length(Il)
    c(i)=tempb(i)/vl(Il(i));
    tempb=tempb-c(i).*L(:,i);
end
tempc=c;
x=zeros(s,1);
for i=length(Ir):-1:2
    x(i-1)=tempc(i-1)/vr(Ir(i)-1);
    tempc=tempc-x(i-1).*U(:,i-1);
end
x=x(q,:);
x=x(p0,:);
end
