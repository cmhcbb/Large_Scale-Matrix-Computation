load large_ex1
p0=colamd(A);
[L,U,p,q]=lu(A(:,p0),'vector');
