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

L=1e-3;
W=1e-3;
global di;
global dj;
di=L/ni
dj=W/nj
% dj=8e-5;
% di=8e-5;
% L=ni*di
% W=nj*dj

   ylin=linspace(0,W,ni);
    xlin=linspace(0,L,nj);
[ L ,U ,P ,Q] = psolve();

global muNn;
global muNp;
global mun;
global mup;

VB0=VBV;

pf=2e2;

%  VBV=-VBV;
 ptt=p;

time=0;
% sNp=zeros(ni,nj,1000e3/400);
% sNn=zeros(ni,nj,1000e3/400);
% sp=zeros(ni,nj,1000e3/400);
% rhs=reshape((VBV-(1*q/e0*0)),ni*nj,1);
%   rhs=reshape((-VBV-(1*q/e0*(-Nn+Np-n+p))),ni*nj,1);
%  V=Q*(U\(L\(P*(rhs))));
%   V=reshape(V,ni,nj);
%    [Ei, Ej]=gradient(-V,di,dj);
 
    
% [X,Y]=meshgrid(xlin,ylin);
% quiver(Ei,Ej,4)
%  mean(mean(abs(Ei)))/ mean(mean(abs(Ej)))
% quiver(Ei(65:79,3:97),Ej(65:79,3:97))
%      surf(xlin',ylin',V,'edgecolor','none')
%         surf(V,'edgecolor','none')
% plot(abs(V(:,round(nj/12))))
%   view(0,-90);
%  colorbar;
% axis off;
%    
% for t=1:1e7
%    
%  
% % VBV=VB0*sin(t/pf);
%   
% 
tic
for t=1:1e7
    
  rhs=reshape((VBV-(1*q/e0*(-Nn+Np-n+p))),ni*nj,1);
 V=Q*(U\(L\(P*(rhs))));
  V=reshape(V,ni,nj);
   [Ei, Ej]=gradient(-V,di,dj);

[ dt ] = timestep( Ei,Ej,min(di,dj) );
  time(t+1)=time(t)+dt; 
    dt=0.1*dt;
   Nn0=Nn;
   Np0=Np;
   n0=n;
   p0=p;
   
 [ Nn ] = delJNn( Nn,muNn,Ej,Ei,di,dj,dt );
 [ Np ] = delJNp( Np,muNp,Ej,Ei,di,dj,dt );
%    [ n ] = delJn( n,mun,Ej,Ei,di,dj,dt );
   [ p ] = delJp( p,Np,mup,Ej,Ei,di,dj,dt );
   
   snp(t)=sum(sum(p));
%   Nn(4,50:340)=1e15;
%   Np(4,50:340)=1e15;
  
%    I1(t)=q*di^2/dt*sum(  p(70:80,20)-1*abs(n(70:80,20)+Np(70:80,20)));
%    I2(t)=q*di^2/dt*sum(  p(70:80,80)-1*abs(n(70:80,80)+Np(70:80,80)));
%    
%    p(31:35,390)=1*abs(n(31:35,390)-Np(31:35,390));
%     p(31:35,10)=1*abs(n(31:35,10)-Np(31:35,10));
    
dNn(t)=max(max(abs(Nn0-Nn)./Nn));
dNp(t)=max(max(abs(Np0-Np)./Np));
dn(t)=max(max(abs(n0-n)./n));
dp(t)=max(max(abs(p0-p)./p)) ;

if mod(t,400)==0

sNp(:,:,(t/400)+1)=Np;
sNn(:,:,(t/400)+1)=Nn;
sp(:,:,(t/400)+1)=p;
end

percent=100*t/1000e3;
if mod(percent,1)==0
    percent
    toc
end
      I10=1.1106e+16;
      I20=1.1414e+16;
 if mod(t,1e1)==0
          


%   plot(time(1:t),1./abs(I1/I1(1)),time(1:t),1./abs(I2/I2(1)))
%   p(71:80,36:37)=0;
%   surf(interp2(p,3),'edgecolor','none')
%   view(0,-90);
%  colorbar;
% axis off
   plot(1:nj,p(490,:),1:nj,Np(490,:))
     getframe;

%  [ conv ] = converged(Nn,Nn0,Np0,Np,n,n0,p,p0  );

 end
 
% if t==100e3
% % if t==4e3
%    VBV=-VBV; 
%     
% end
    
% if dNn(t)<1e-4 && dNp(t)<1e-4 && dp(t)<1e-4
% %     pause;
%  VBV=-VBV;
% end
end
% save('single')
% surf(linspace(0,1,length(ZI)),linspace(0,1,length(ZI)),ZI,'edgecolor','none')
%   colorbar();
%  view(0,-90) ;
%  
% set(gcf, 'PaperSize', [6.4 4.8]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 6.4 4.8]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [6.4 4.8]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 6.4 4.8]);
% 
% set(gcf, 'renderer', 'zbuffer');
% % print(gcf, '-dpdf', [ num2str(1) '.pdf']);
% print(gcf, '-dpdf', 'a3.pdf');
