load('HW4_Problem5b_2.mat')
global count;
n=length(b);
count=0;
D0=diag(diag(A));
F=-tril(A-D0);
G=-triu(A-D0);
D=10*speye(n);
% [x,flag,relres,iter,RESVEC]=gmres(@(x) newmulti(F,G,D,x,D0),newmultib(D,G,F,b),[],1e-8,[],[],[],ones(n,1));
% disp(count);
% iterrecord(5,:)=iter;
% RESVEC=RESVEC/RESVEC(1);
% a=length(RESVEC);
% plot(0:a-1,log(RESVEC));
% hold on;
k0=[5;10;20];
for i=1:3
    k=k0(i);
    count=0;
    [x,flag,relres,iter,RESVEC]=gmres(@(x) newmulti(F,G,D,x,D0),newmultib(D,G,F,b),k,1e-8,[],[],[],ones(n,1));
    disp(count);
    iterrecord(i+1,:)=iter;
    RESVEC=RESVEC/RESVEC(1);
    a=length(RESVEC);
    plot(0:a-1,log(RESVEC));
    hold on;
end