
bx=fft(b);
eigv=fft(ct')';
nb=1./eigv.*bx;
newb=ifft(nb);
x=pcg(@(x) preconditionToeplitz(ct,t,x),newb);