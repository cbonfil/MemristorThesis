close all
clear all
set(0, 'DefaultFigureRenderer', 'zbuffer');
set(0,'DefaultFigureWindowStyle','docked');

vidobj=VideoWriter('Ex4MaxC_Lim_Np_p.avi');
open(vidobj);

q=1.602e-19;
e0=8.854187817e-12;
ni=4e2+1;  %number of points
L=(1e-2);  %Length of the device
di=L/(ni); %distance between 2 points


mu_light=4e-4;
% mun(1:round(ni/2))=1; left
% mup( (round(ni/2)+1):ni+1)=1; right



mun=zeros(ni+1,1); %electron/hole mobility
mun( (round(ni/2)+2):ni+1)=mu_light;
Dn=mun/38; %diffusion constant
dt=di^2/max(Dn)/5;  %Time step

mup=zeros(ni+2,1); %electron/hole mobility
mup( (round(ni/2)+2):ni+1)=mu_light;
Dp=mup/38; %diffusion constant

mu_heavy=mu_light/50;
muNn=zeros(ni+1,1); %electron/hole mobility
muNn(1:round(ni/2))=mu_heavy;
DNn=muNn/38; %diffusion constant

muNp=zeros(ni+1,1); %electron/hole mobility
muNp( 1:round(ni+1))=mu_heavy;
DNp=muNp/38; %diffusion constant

V0=2;
Vni=0;
VBV=1*[V0; zeros((ni)-2,1); Vni]; 

floating=0;
[ L,U,P,Q ] = psolve( ni,floating );
% ((round(ni/4)-1):(round(2*ni/4))-2) left
%( round(ni/2):round(3*ni/4)) right
% for tt=1:8
tt=2;

n=zeros(ni,1); 
Nn=zeros(ni,1); 
p=zeros(ni,1); 
Np=zeros(ni,1); 

n((round(ni/2)+1):ni) =10^(15+0.25*tt);

p((round(ni/2)+1):ni)=10^(15+0.25*tt);

Np(1:round(ni/2))=10^(16+0.25*tt);
Nn(1:round(ni/2))=10^(16+0.25*tt);


time=zeros(1e5,1);
% plot(1:ni,n,1:ni,0*Np,'r',1:ni,1*p);
for t=1:5e9
 
%     if t==round(1/dt)
% %        
%        VBV=0*VBV;
%        floating=1;
%        [ L,U,P,Q ] = psolve( ni,floating );
%     end


  V=Q*(U\(L\(P*((-VBV-di^2*(1*q/e0*(-n+p+Np-Nn) ) )))));
  
E=gradient(-V,di);
Np1=Np;
    [ Nn ] = ddJ(Nn,ni,E,dt,di,muNn,DNn );
[ Np ] = ddJ( Np,ni,-E,dt,di,muNp,DNp );
[ p ] = ddJ( p,ni,-E,dt,di,mup,Dp );
% [ n ] = ddJ( n,ni,E,dt,di,mun,Dn );
dNp(t)=mean(abs(Np-Np1)./Np1);
if n(ni)-Np(ni)<0
    p(ni)=0;
else
    p(ni)=n(ni)-Np(ni);
end
   Nn(1)=10^(16+0.25*tt);
Np(1)=10^(16+0.25*tt);

muNp(  1:round(ni+1))=mu_heavy;
mup( (round(ni/2)+2):ni+1)=mu_light;

pt(t)=sum(p);

for i=(round(ni/2)+1):ni
    
  muNp( i)= muNp( i)*1./(1+exp((1*Np(i)-0.99*10^(15+0.25*tt))/10^(12+0.25*tt)));
  DNp=muNp/38;
  
  mup(i)=mup(i)* (1./(1+exp((1*Np(i)-0.1*10^(15+0.25*tt))/(4*10^(13+0.25*tt)))) );
  Dp=mup/38;
end

% dt=min([di^2/max(Dn)/5 0.5*di/(mu_light*max(abs(E)))]); 
time(t+1)=(time(t))+dt;
if mod(t,2e2)==0


subplot(3,1,1);plot(V);
subplot(3,1,2);plot(1:ni,Nn,1:ni,1*Np,'r',1:ni,1*p,1:ni,n,'k');
axis([round(ni/2) ni 0 2*10^(15+0.25*tt)])
subplot(3,1,3);plot(1:ni,Nn,1:ni,1*Np,'r',1:ni,1*p,1:ni,n,'k');

title(num2str(time(t)))

% J_D_Nn=1/38*gradient(Nn,di);
% J_D_Np=1/38.*gradient(Np,di);
% J_E_Nn=1*E.*Nn;
% J_E_Np=1*muNp(1:ni).*E.*Np;
% subplot(2,1,1);plot(1:ni,log10(abs(J_D_Nn)),1:ni,log10(abs(J_E_Nn)),'r')
% 
curr=getframe(gcf);
    writeVideo(vidobj,curr);




end


if t==round(1.2/dt)
   break; 
    
end


end


close(vidobj);













