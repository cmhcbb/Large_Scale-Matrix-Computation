function [x]=lsolver(L,U,Jl,Il,Jr,Ir,vl,vr,b) 
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
end