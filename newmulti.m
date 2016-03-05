function y=newmulti(F,G,D,v,D0)
M2=D-G;
[n,n]=size(M2);
[J,K,Va]=find(M2);
I=find(J-K == 0);
I=[1;I+1];
a=uppersolver(n,J,I,Va,v);
D1=D0-2*D;
M1=D-F;
[J,K,Va]=find(M1);
I=find(J-K == 0);
I=[I;nnz(M1)+1];
b=uppersolver(n,J,I,Va,v+D1*a);
y=a+b;
y=D*y;
global count;
count=count+1;
end