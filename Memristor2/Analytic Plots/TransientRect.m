close all
clear all
set(0, 'DefaultFigureRenderer', 'opengl');
set(0,'DefaultFigureWindowStyle','docked');
% E=0.08;
% D=1/38;
% mu=1;
% w=1;
% 
% L=4;
% x=linspace(-L/2,L/2,5e1);
% x0=0;
% dt=5e-2;
% for i=1:2e2
% 
%     ti=i*dt;
% a=(w+2*ti*E-2*x)/(4*sqrt(D*ti));
% b=(-w+2*ti*E-2*x)/(4*sqrt(D*ti));
% c(i,:)=0.5*(erf(a)-erf(b));
% 
% % plot(c(i,:))
% % getframe
% end
% 

close all
clear all
set(0, 'DefaultFigureRenderer', 'opengl');
set(0,'DefaultFigureWindowStyle','docked');
E=6;
D=1/38;
mu=1;
sig=2;
ni=4e2;
L=30;
x=linspace(0,L,5e3);
x0=5;
tf=4;
tt=linspace(0,tf,ni);
dt=1;
w=1;
for i=1:ni
    
    ti=tt(i);
%     a=1./sqrt(4*D*sig^2*ti+1);
 
%     b=(ti*mu*E-x+x0).^2./(4*D*ti+sig^2);
%     c(i,:)=a.*exp(-b);
    
    a=(w+2*ti*E-2*x+x0)/(4*sqrt(D*ti));
   
b=(-w+2*ti*E-2*x+x0)/(4*sqrt(D*ti));
c(i,:)=0.5*(erf(a)-erf(b));


    if mod(i,50)==0 || i==1
        ti
        hold all
        plot(x,c(i,:))
        axis([0 L 0 1])
        getframe;
    end
end

% plot(linspace(0,mu*E*ti,ni)+x0,1*ai,'r')
legend(['Time= ' num2str(0) 's']...
    ,['Time= ' num2str( 0.4912) 's']...
    ,['Time= ' num2str( 0.9925) 's']...
    ,['Time= ' num2str( 1.4937) 's']...
    ,['Time= ' num2str(  1.9950) 's']...
    ,['Time= ' num2str( 2.4962) 's']...
    ,['Time= ' num2str(2.9975) 's']...
    ,['Time= ' num2str(3.4987) 's']...
    ,['Time= ' num2str(4.0000) 's'])
axis([0 L 0 1])
xlabel('Distance (m)')
ylabel('Magnitude')

a=1.6*6.4;
b=1.6*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'AnalyticRect.pdf');
