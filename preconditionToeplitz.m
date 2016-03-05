function [ y ] = preconditionToeplitz(ct,t,x)
[n,m]=size(x);
tt=[t(n:end) t(1:n-1)];
eigv=fft(tt);
tempy=fft([x;zeros(n-1,1)]);
tempy=eigv'.*tempy;
tempy=ifft(tempy);
ny=tempy(1:n);
leftx=fft(ny);
eigv=fft(ct')';
left=1./eigv.*leftx;
y=ifft(left);
end

