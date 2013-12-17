close all
clear all

for i=1:5
ni=1e3;
L=1;
di=L/ni;
p0=ones(ni,1);
x=linspace(0,L,ni);
P0=1;

D=1/38;
mu=1;
E=1+i/1;

A=D/(mu*E)*(exp((mu*E)/D*L)-1);

p=P0/A*exp((mu*E)/D*x);
hold all
plot((x),(p))
axis([0.9 1 0 230])
trapz(x,p)
trapz(x,p0)
end
xlabel('Distance (m)')
ylabel('Particle Density (1/m^3)')
legend(['E = ' num2str(1) ' V/m'], ['E = ' num2str(2) ' V/m'],['E = ' num2str(3) ' V/m'],...
    ['E = ' num2str(4) ' V/m'],['E = ' num2str(5) ' V/m'],'location','North')

a=1*6.4;
b=1*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'AnalyticSS.pdf');
