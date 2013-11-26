close all
clear all

set(0, 'DefaultFigureRenderer', 'zbuffer');
set(0,'DefaultFigureWindowStyle','docked');

% vidobj=VideoWriter('Ex5_Notch_Limited_Lithium.avi');
% open(vidobj);


q=1.602e-19;
e0=8.854187817e-12;
ni=2e2+1;  %number of points
L=(1e-2);  %Length of the device
di=L/(ni); %distance between 2 points


mu=zeros(ni+1,1); %electron/hole mobility
mu(1:ni+1)=1e-3;
% mu(round(ni/2))=0;
% mu(round(ni/2)+1)=0;
D=mu/38; %diffusion constant
dt=di^2/(max(D))/5;  %Time step

rt=100;
mu_slow=mu/rt;
muL=zeros(ni,1);
muL(round(ni/8):round(7*ni/8))=mu_slow(round(ni/8):round(7*ni/8));
% muL(round(ni/2))=0;
% muL(round(ni/2)+1)=0;
DL=muL/38;

size(muL)
V0=1;
Vni=0;
VBV=1*[V0; zeros((ni)-2,1); Vni];

[ L,U,P,Q ] = psolve( ni,0);
sv_Li=zeros(ni,5,12e2);
sv_n=zeros(ni,5,12e2);
sv_p=zeros(ni,5,12e2);
sv_pL=zeros(1,5,12e2);
sv_pR=zeros(1,5,12e2);
for tt=1
    
    V0=0;
    Vni=1;
    VBV=1*[V0; zeros((ni)-2,1); Vni];
    
    n=zeros(ni,1);
    Li=n;
    n(1:ni)=tt*1*10^(15);
    % Li(round(ni/8):round(7*ni/8))=1;
    p=n;
    lim=tt*1*10^(15);
    for t=1:1e5
        
        %     VBV(1)=sin(t/1e4);
        %     if t==6e4
        %         VBV=-VBV;
        %     end
        V=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(-n+p+Li) ) )))));
        
        E=gradient(-V,di);
        
        %     [ n ] = ddJ( n,ni,-E,dt,di,mu,D );
        [ p ] = ddJ( p,ni,-1*E,dt,di,mu,D );
        
        if t>1e4+1
            [ Li ] = ddJp( Li,ni,-1*E,dt,di,muL,DL,lim);
            [ Li ] = gr(Li,1*V,di,lim,muL(round(ni/2)),dt);
        end
        
        
        
        % pL(t)=(p(1)-n(1)+Li(1))/1;
        % pR(t)=(p(ni)-n(ni)+Li(ni))/1;
        
        pL(t)=p(1)-n(1);
        pR(t)=p(ni)-n(ni);
        
        p(1)=n(1)-Li(1);
        p(ni)=n(ni)-Li(ni);
        
        if mod(t,1e3+1)==0
            if mod(t,1e3)==0
                t
            end
            I1=1*((pL))/1;
            I2=1*((pR))/1;
            I0=1.5861e-09;
            plot(V)
            subplot(3,1,1);plot(V);
            legend('Potential');
            axis([0 ni 0 1])
            subplot(3,1,2);
            plot(1:ni,Li,'r',1:ni,p);
            legend('Lithium','Holes')
            axis([0 ni 0 1.2e15])
            subplot(3,1,3);
            plot((1:t)*dt,abs(1./(I1*di/dt)),(1:t)*dt,abs(1./(I2*di/dt)));
            % axis([0 t 0 10])
            % plot(log10((abs(abs(I2)-abs(I1))./abs(abs(I2)+abs(I1)))));
            % subplot(2,1,1);plot(1:ni,Li,'r',1:ni,p);
            % subplot(2,1,2);plot(sin((1:t)/1e4),I2)
            % % % title(num2str(1./(I1(t)/I1(1))))
            % plot(pL)
            % title(num2str(t))
            curr=getframe(gcf);
            %     writeVideo(vidobj,curr);
            
%             sv_n(:,tt,t/1e2)=n';
%             sv_p(:,tt,t/1e2)=p';
%             sv_Li(:,tt,t/1e2)=Li';
%             sv_pL(1,tt,t/1e2)=pL(t);
%             sv_pR(1,tt,t/1e2)=pR(t);
        end
        
        
    end
    tt
end

% save('Ex52')
% close(vidobj);




