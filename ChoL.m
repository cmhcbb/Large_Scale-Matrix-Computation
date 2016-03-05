function [ Vl ] = ChoL( J,I,Va,A )
    [n,n]=size(A);
    Vl=Va;
    for k=1:n
        if Vl(I(k))<=0
            break;
        end
        Vl(I(k))=sqrt(Vl(I(k)));
        for j=(I(k)+1):I(k+1)-1
            Vl(j)=Vl(j)/Vl(I(k));
        end
        for i=k+1:n-1
            [C,ia,ib]=intersect(J(I(k):I(k+1)-1),J(I(i):I(i+1)-1));
            Vl(I(i)+ib-1)=Vl(I(i)+ib-1)-Vl(I(k)+ia-1);
        end
    end
end

