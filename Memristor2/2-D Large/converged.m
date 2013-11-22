function [ conv ] = converged(Nn,Nn0,Np0,Np,n,n0,p,p0  )

dNn=max(max(abs(Nn0-Nn)./Nn));
dNp=max(max(abs(Np0-Np)./Np));
dn=max(max(abs(n0-n)./n));
dp=max(max(abs(p0-p)./p)) ;

conv=0;
end

