function y=newmultib(D,G,F,b)
M2=D-G;
[n,n]=size(M2);
[J,K,Va]=find(M2);
I=find(J-K == 0);
I=[1;I+1];
temp=uppersolver(n,J,I,Va,b);
M1=D-F;
[J,K,Va]=find(M1);
I=find(J-K == 0);
I=[I;nnz(M1)+1];
y=uppersolver(n,J,I,Va,temp);

end