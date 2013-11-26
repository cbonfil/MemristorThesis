function [ dt ] = timestep( Ei,Ej,di )

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


maxmu=max(max(max([muNn muNp mun mup])));
maxD=maxmu/38;

   maxE=max(max([abs(Ei) abs(Ej)]));
   maxN=max(max([Nn Np n p]));
   dtE=2*di/(maxmu*maxE)/5;
   tdr=max(max(e0))/(q*maxN*maxmu)/1;
   dtD=(di^2/maxD)/5;

dt=min([tdr dtD dtE])/1;


end

