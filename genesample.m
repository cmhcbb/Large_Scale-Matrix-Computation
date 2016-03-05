function [ t ] = genesample( n,p )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    for j=1:n
        t(j)=1/(j).^(p);
    end
t=[t(n:-1:2) t];
end

