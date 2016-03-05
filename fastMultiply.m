function [ y ] = fastMultiply(C,x)
[n,n]=size(C);
bx=fft(x);
eigv=fft(C(1,:))';
b=eigv.*bx;
y=ifft(b);
end

