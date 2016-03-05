function [ y ] = ToeplitzMultiply(t,x )
[n,m]=size(x);
tt=[t(n:end) t(1:n-1)];
eigv=fft(tt);
tempy=fft([x;zeros(n-1,1)]);
tempy=eigv'.*tempy;
tempy=ifft(tempy);
y=tempy(1:n);

end

