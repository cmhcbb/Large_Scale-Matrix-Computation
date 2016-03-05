function [y,count]=counter(A,x)
y=A*x;
global count;
count=count+1;
end