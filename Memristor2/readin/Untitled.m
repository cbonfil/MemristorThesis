ni=1e3;

A=rand(ni,ni);
B=rand(ni,ni);

tic
c=A.*B;
[l,u]=lu(c);
toc