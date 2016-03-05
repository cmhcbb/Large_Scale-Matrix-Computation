load large_ex2
p0=colperm(A);
[L,U,p,q,D]=lu(A(:,p0),'vector');
