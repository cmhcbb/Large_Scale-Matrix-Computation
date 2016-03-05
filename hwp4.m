load large_ex
[Jl,Kl,vl]=find(L);
Il=find(Jl-Kl == 0);
[Jr,Kr,vr]=find(U);
Ir=find(Jr-Kr == 0)+1;
Ir=[1;Ir];






