function [tempc]=uppersolver(n,J,I,vl,b) 
s=n;
c=zeros(s,1);
tempb=b;
for i=length(I):-1:2
    c(i-1)=tempb(i-1)/vl(I(i)-1);
    for j=I(i-1):I(i)-1
        tempb(J(j))=tempb(J(j))-c(i-1)*vl(j);
    end
end
tempc=c;
end