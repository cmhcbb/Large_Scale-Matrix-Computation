function [ J,I,Va ] = genecsc( A )

[J,K,Va]=find(tril(A));
I=find(J-K == 0);
I=[I;nnz(tril(A))+1];

end

