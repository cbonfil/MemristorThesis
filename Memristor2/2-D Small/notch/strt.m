close all
clear all

set(0, 'DefaultFigureRenderer', 'opengl');
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

VB0=VBV;

pf=2e2;

ptt=p;

time=0;

tic

pos=91;
n(pos,5:95)=1e15;
p=n;
mu=zeros(1,ni);
mu(1,6:95)=1e-3;
mu(50)=0;
D=mu/38;

DC=1;
for t=1:1000e3
    
    
    if t==250e3 
        DC=0;
%         VBV=VBV*0 ;
    elseif t==750e3
        
        DC=1;
        
    end
    
    %         if mod(t,280e3)==0
    %            VBV=-VBV;
    %         end
    
    rhs=reshape((VBV-(1*q/e0*(-Nn+Np-1*n+1*p))),ni*nj,1);
    V=Q*(U\(L\(P*(rhs))));
    V=reshape(V,ni,nj);
    [Ei, Ej]=gradient(-V,di,dj);
    %    Ei=-250*ones(ni,nj);
    %     Ej= 1e-5*ones(ni,nj);
    
    [ dt ] = timestep( Ei,Ej,min(di,dj) );
    
    dt=0.5*dt/100;
    time(t+1)=time(t)+dt;
    
    
    Nn0=Nn;
    Np0=Np;
    n0=n;
    p0=p;
    f=100;
    if t>1e3
        %         mu(1,6:95)=  1e-3.*((1.25-1./(1+exp(-1*Np(pos,6:95)/14e13))))/1.25;
        %         D=mu/38;
                VBV=VB0*(DC+0.001*sin(2*pi*f*time(t)));
        [ Nn ] = delJNn( Nn,muNn,Ej,Ei,di,dj,dt );
        [ Np ] = delJNp( Np,muNp,Ej,Ei,di,dj,dt );
    end
    
    [ p(pos,:) ] = ddJ(p(pos,:), ni,-Ei(pos,:),dt,di,mu,D);
    
    Vt(t)=sin(2*pi*f*time(t));
    
    snp(t)=sum(sum(p));
    
    J1(t)= p(pos,94)*(Ei(pos,95)+Ei(pos,94))/2;
    J2(t)=  p(pos,6)*(Ei(pos,6)+Ei(pos,5))/2;
    
    I1(t)=1*sum( 1*p(pos,5)-1*abs(n(pos,5)+Np(pos,5)));
    I2(t)=1*sum( 1*p(pos,95)-1*abs(n(pos,95)+Np(pos,95)));
    
    netcharge(t)=sum(sum(p))-sum(sum(n));
    p(pos,95)=1e15;
    p(pos,5)=1e15;
    %    p(70:80,20)=1*abs(n(70:80,20)-Np(70:80,20));
    %     p(70:80,80)=1*abs(n(70:80,80)-Np(70:80,80));
    
    dNn(t)=max(max(abs(Nn0-Nn)./Nn));
    dNp(t)=max(max(abs(Np0-Np)./Np));
    dn(t)=max(max(abs(n0-n)./n));
    dp(t)=max(max(abs(p0-p)./p)) ;
    
    if mod(t,1e2)==0
        
        sNp(:,:,(t/100))=Np;
        sNn(:,:,(t/100))=Nn;
        sp(:,:,(t/100))=p;
        sNpplt(:,(t/100))=Np(pos,:);
    end
    
    percent=100*t/1000e3;
    if mod(percent,1)==0
        percent
        (100-percent)* toc/percent/60
    end
    
    if mod(t,3e2)==0
        
        
   
            %              plot(Vt,I1/I1(1e3-10))
            %
%             plot(time(1:t),I1/I1(1e3-10))
                        surf( sNpplt,'edgecolor','none')
                        caxis([0 1e15])
                        colorbar
                        view(0,90)
                        grid off
                        axis off
            getframe;
     
        
    end
    
    
end
save('2dmem_retention')
