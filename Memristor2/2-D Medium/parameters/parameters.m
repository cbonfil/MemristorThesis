global VBC;
global VBV;
global er;
global q;
global e0;
global Nn;
global Np;
global n;
global p;
global muNn;
global muNp;
global mun;
global mup;
global DNn;
global DNp;
global Dn;
global Dp;
global posf; 

posf=92;


 muNn=zeros(ni,nj,2);
 muNp=zeros(ni,nj,2);
 mun=zeros(ni,nj,2);
 mup=zeros(ni,nj,2);
 
 
q=1.602e-19;   % Electron charge (C)
e0=8.854187817e-12; % vacuum permittivity (F/m)
er=zeros(ni,nj);

for i=1:n_mat
    
[er]=ptag(er,G,99+i,mat(i,2));
% [muNn]=ptag_ro(muNn,G,99+i,mat(i,4));
% [muNp]=ptag_ro(muNp,G,99+i,mat(i,4));
end

 [VBV,VBC ] = gboundary( G,mat,in);


 
mu_el_Np=1e-3;


r=100;

[ muNp ] = pmu( muNp ,7,posf,27,nj-26,mu_el_Np/r);
[ muNn ] = pmu( muNn ,7,ni-9,27,nj-26,mu_el_Np/r);

[ mup ] = pmu( mup ,91,posf,5,95,mu_el_Np/1);

% [ mup ] = pmu( mup ,5,95,ni-9,ni-3,mu_el_Np/r);
% [ muNp ] = pmu( muNp ,91,91,round(nj/2),round(nj/2),0);

Nn=zeros(ni,nj);
Np=zeros(ni,nj);
n=zeros(ni,nj);
p=zeros(ni,nj);

density=1e15;
 [ p  ] = pset_val( p ,91,posf,5,95,density); 
 [ n  ] = pset_val( n ,91,posf,5,95,density); 
 

 [ Np ] = pset_val( Np,7,ni-9,27,nj-26,2*density); 
 [ Nn ] = pset_val( Nn,7,ni-9,27,nj-26,2*density); 
 