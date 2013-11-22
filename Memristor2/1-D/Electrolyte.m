close all
clear all


q=1.602e-19;
e0=8.854187817e-12;
ni=2e3+1;  %number of points
L=(1e-2);  %Length of the device
di=L/(ni); %distance between 2 points


mu=zeros(ni+1,1); %electron/hole mobility
% mu((round(ni/4):round(3*ni/4))+1)=1;
mu((1:ni)+1)=2e-3;
D=mu/38; %diffusion constant

dt=di^2/(max(D))/5;  %Time step

V0=1;
Vni=0;
VBV=1*[V0; zeros((ni)-2,1); Vni]; 

[ L,U,P,Q ] = psolve( ni,0 );
sv_n=zeros(ni,5,16e2);
sv_p=zeros(ni,5,16e2);
for tt=1:5
n=zeros(ni,1); 
% n(round(ni/4):(round(3*ni/4)+1))=10^(13.5+tt);
n(1:ni)=2*tt*10^(15);
% p=n;

% n=n+(exp(linspace(0,33,ni)))';
VBV=1*[V0; zeros((ni)-2,1); Vni]; 
p=n;
for t=1:16e4
    tic
    if t==8e4
        VBV=-VBV;
    end 
  V=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(-n+p) ) )))));
  
E=gradient(-V,di);
n0=n;
[ n ] = ddJ( n,ni,E,dt,di,mu,D );
[ p ] = ddJ( p,ni,-E,dt,di,mu,D );


pL(t)=p(1)-n(1);
pR(t)=p(ni)-n(ni);
% 
% p(1)=n(1);
% p(ni)=n(ni);

% p(1)=2e15;
% p(ni)=2e15;
% n(1)=2e15;
% n(ni)=2e15;
dn(t)=max(abs((n0-n)./n));
nsum(t)=sum(n);

% if dn(t)/dn(1)<1e-5
%     break;
% end
t1(t)=toc;
if mod(t,1e2)==0
    mean(t1);
sv_n(:,tt,t/1e2)=n';
sv_p(:,tt,t/1e2)=p';
plot(V)
% plot([V0 V' Vni]);
%     plot(1:t,pL,1:t,pR)
% subplot(3,1,1);plot([V0 V' Vni]);
% subplot(3,1,2);plot(1:ni,(n)/max(n),1:ni,p/max(p),'-');
% subplot(3,1,3);plot(log10(dn/dn(1)));
%  subplot(3,1,3);plot(((nsum/nsum(1))));
%   subplot(3,1,3);  plot(1:t,abs(pL),1:t,abs(pR))
title([num2str((t)) ' s'] )
getframe;
end

end
tt
end

% save('Ex1')

% set(gcf, 'PaperSize', [6.4 4.8]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 6.4 4.8]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [6.4 4.8]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 6.4 4.8]);
% 
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'Ex1_V.pdf');




