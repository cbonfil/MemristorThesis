close all
clear all

set(0, 'DefaultFigureRenderer', 'zbuffer');
set(0,'DefaultFigureWindowStyle','docked');

cd geometry;
geometry;
cd ..;

cd parameters;
parameters;
cd ..;

% L=1e-2;
% W=1e-2;
global di;
global dj;
% di=L/ni;
% dj=W/nj;
dj=1.1e-4;
di=1.1e-4;
L=ni*di;
W=nj*dj;

ylin=linspace(0,W,ni);
xlin=linspace(0,L,nj);
[ L ,U ,P ,Q] = psolve();

global muNn;
global muNp;
global mun;
global mup;
global posf;




VB0=VBV;

pf=2e2;

ptt=p;

time=0;

tic

pos=91;



% n(pos,5:95)=1e15;
% p=n;
% mu=zeros(1,ni);
% mu(1,6:95)=1e-3;
% mu(50)=0;
% D=mu/38;


for t=1: 530000


if t>50e3
% VBV=VB0*sin(t/5e3);

end
% 
% if mod(t,35e3)==0
%    VBV=-VBV; 
% end


    rhs=reshape((VBV-(1*q/e0*(-Nn+Np-1*n+1*p))),ni*nj,1);
    V=Q*(U\(L\(P*(rhs))));
    V=reshape(V,ni,nj);
    [Ei, Ej]=gradient(-V,di,dj);

    
    [ dt ] = timestep( Ei,Ej,min(di,dj) );
    
    dt=0.5*dt/1;
    time(t+1)=time(t)+dt;
    
    
    Nn0=Nn;
    Np0=Np;
    n0=n;
    p0=p;
    
    if t>10e2
                 
        [ Nn ] = delJNn( Nn,muNn,Ej,Ei,di,dj,dt );
        [ Np ] = delJNp( Np,muNp,Ej,Ei,di,dj,dt );
        
     end
    

%     [ p(pos,:) ] = ddJ(p(pos,:), ni,-Ei(pos,:),dt,di,mu,D);
     

    %    [ n ] = delJn( n,mun,Ej,Ei,di,dj,dt );
       [ p ] = delJp( p,Np,mup,Ej,Ei,di,dj,dt );

    snp(t)=sum(sum(p));
    %       Nn(20,30:70)=2.5e15;
    %       Np(20,30:70)=2.5e15;
    J1(t)= p(pos,94)*(Ei(pos,95)+Ei(pos,94))/2;
    J2(t)=  p(pos,6)*(Ei(pos,6)+Ei(pos,5))/2;
    
    I1(t)=1*sum( 1*p(pos:posf,5)-1*abs(n(pos:posf,5)+Np(pos:posf,5)));
    I2(t)=1*sum( 1*p(pos:posf,95)-1*abs(n(pos:posf,95)+Np(pos:posf,95)));
    
%     netcharge(t)=sum(sum(p))-sum(sum(n));

    p(pos:posf,95)=1e15;
    p(pos:posf,5)=1e15;

    
    dNn(t)=max(max(abs(Nn0-Nn)./Nn));
    dNp(t)=max(max(abs(Np0-Np)./Np));
    dn(t)=max(max(abs(n0-n)./n));
    dp(t)=max(max(abs(p0-p)./p)) ;
    
    if mod(t,1e2)==0
        
        sNp(:,:,(t/100))=Np;
        sNn(:,:,(t/100))=Nn;
        sp(:,:,(t/100))=p;
        
    end
    
    percent=100*t/ 530000;
    if mod(percent,1)==0
        percent
       (100-percent)* toc/percent/60
    end

    if mod(t,1e4)==0
%         if t>1e2
%         plot((1:t)*dt,I1(1e3-10)./I1,(1:t)*dt,I2(1e3-10)./I2)
%         title(num2str(t))
%         end
%       
%     surf(interp2(Np(91:99,:),2),'edgecolor','none')
%        surf(interp2(p(51:99,:),2),'edgecolor','none')
%     view(180,90);
%     grid off
%     axis off
%     colorbar
%        getframe; 
        
    end
    
    
end
save('2dmem_thick2')
