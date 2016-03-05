function [xk]=cg(X,D,df)
[n,d]=size(X);
x0=zeros(d,1);
xk=zeros(d,1);
b=multi(X,D,x0);
r0=df-b;
rk=r0;
rk1=zeros(d,1);
pk=r0;
for k=1:10000
    z=multi(X,D,pk);
    alpha=(rk'*rk)/(pk'*z);
    xk=xk+alpha*pk;
    rk1=rk-alpha*z;
    if (norm(rk1)/norm(r0)<=1e-3)
        break;
    end
    beta=rk1'*rk1/(rk'*rk);
    pk=rk1+beta*pk;
    rk=rk1;
end
end
