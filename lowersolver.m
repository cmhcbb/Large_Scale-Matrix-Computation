function [tempc]=lowersolver(n,J,I,vl,b) 
s=n;
c=zeros(s,1);
tempb=b;
for i=1:length(I)-1
    c(i)=tempb(i)/vl(I(i));
    for j=I(i):I(i+1)-1
        tempb(J(j))=tempb(J(j))-c(i)*vl(j);
    end
end
tempc=c;
tempc(n)=tempb(n);