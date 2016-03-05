function [ ct ] = geneC( t,n )
ct=zeros(n-1,1);
newt=t(n+1:2*n-1);
for i=1:n-1
    ct(i)=(newt(i)+newt(n-i))/2;
end
ct=[t(n);ct];

end

