close all
clear all
set(0, 'DefaultFigureRenderer', 'opengl');
set(0,'DefaultFigureWindowStyle','docked');
E=1.2;
D=1/38;
mu=1;
sig=2;
ni=4e2;
L=260;
x=linspace(0,L,5e3);
x0=10;
tf=2e2;
tt=linspace(0,tf,ni);
dt=1;
for i=1:ni
    
    ti=tt(i);
    a=1./sqrt(4*D*sig^2*ti+1);
    ai(i)=a;
    b=(ti*mu*E-x+x0).^2./(4*D*ti+sig^2);
    c(i,:)=a.*exp(-b);
    
    if mod(i,50)==0 || i==1
        ti
        hold all
        plot(x,c(i,:))
        axis([0 L 0 1])
        getframe;
    end
end

plot(linspace(0,mu*E*ti,ni)+x0,1*ai,'r')
legend(['Time= ' num2str(0) 's']...
    ,['Time= ' num2str(25) 's']...
    ,['Time= ' num2str(50) 's']...
    ,['Time= ' num2str(75) 's']...
    ,['Time= ' num2str(100) 's']...
    ,['Time= ' num2str(125) 's']...
    ,['Time= ' num2str(150) 's']...
    ,['Time= ' num2str(175) 's']...
    ,['Time= ' num2str(200) 's'],'Magnitude at the peak')
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
print(gcf, '-dpdf', 'AnalyticGauss.pdf');
