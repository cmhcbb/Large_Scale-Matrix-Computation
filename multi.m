function [ b ] = multi( X,D,x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[n,d]=size(X);
t=X*x;
m=D*t;
temp=X'*m;
b=eye(d)*x+temp;

end

