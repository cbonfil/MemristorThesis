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


r=1;
[ muNp ] = pmu( muNp ,20,70,30,70,mu_el_Np/r);
% [ muNp ] = pmu( muNp ,71,80,20,30,mu_el_Np/r);

% [ muNp ] = pmu( muNp ,70,80,30,51,mu_el_Np/r);
% [ muNp ] = pmu( muNp ,70,80,51,70,mu_el_Np/r);


% [ muNp ] = pmu( muNp ,70,80,35,37,0);
% [ muNp ] = pmu( muNp ,71,80,70,80,mu_el_Np/r);
%  [ muNp ] = pmu( muNp ,69,80,49,51,0);
 
[ muNp ] = muj( muNp ,70,80,30,70,mu_el_Np/r);
[ muNp ] = mui( muNp ,70,80,30,70,mu_el_Np);

[ muNn ] = pmu( muNn ,20,70,30,70,mu_el_Np/r);

% [ mup ] = pmu( mup ,20,72,25,75,mu_el_Np/1);
[ mup ] = pmu( mup ,71,80,20,80,mu_el_Np/1);
% [ mup ] = pmu( mup ,71,80,35,37,0);
% [ mup ] = pmu( mup ,71,80,30,51,mu_el_Np/1);
% [ mup ] = pmu( mup ,71,80,51,70,mu_el_Np/1);
% [ mup ] = pmu( mup ,71,80,70,80,mu_el_Np/1);


% [ mup ] = pmu( mup ,69,80,49,51,0);

Nn=zeros(ni,nj);
Np=zeros(ni,nj);
n=zeros(ni,nj);
p=zeros(ni,nj);

density=5e16/3;
 [ p  ] = pset_val( p ,71,80,20,80,density); 
%  [ p  ] = pset_val( p ,71,80,51,80,2e16); 
 

  [ n ] = pset_val( n ,71,80,20,80,density); 
%   [ n ] = pset_val( n ,71,80,51,80,2e16); 

 [ Np ] = pset_val( Np,20,70,30,70,2.5*density); 
 [ Nn ] = pset_val( Nn,20,70,30,70,2.5*density); 
 