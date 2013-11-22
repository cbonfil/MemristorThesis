close all
clear all

set(0, 'DefaultFigureRenderer', 'zbuffer');
set(0,'DefaultFigureWindowStyle','docked');


n=logspace(10,26,1e4);

q=1.602e-19;
e0=8.854187817e-12;
mu=2e-4;
D=mu/38;
Vth=0.0263;
L=1e-2;
V=2;
E=1*V/L;
Ld=sqrt((e0*Vth)./(q*n));
tdr=e0./(q*n*mu);

tdif=((Ld.^2)/(2*D));
tdrif=(2*(Ld)/(mu*E));


subplot(2,2,1);
loglog(n,5*(L./Ld));
xlabel('Charge Density (1/m^3)');
ylabel('Required Number of Points for 1-D Simulation ');
title('a) Memristor 1-D Spacial Resolution Constraints');
axis([1e10 1e26 1e0 1e9])

subplot(2,2,2);
loglog(n,1./tdr,n,1./tdif,n,1./tdrif);
xlabel('Charge Density (1/m^3)');
ylabel('Minimum Number of Steps for a Simulation of 1 s');
legend('Dielectric Relaxation Time','Diffusion Limit','Drift Limit','Location','North');
title('b) Memristor Time Step Constraints ');
axis([1e10 1e26 1e-2 1e15])

%%%%%%%%%%%%%%%%%%%%SEMICONDUCTOR%%%%%%%%%%%%%%%%%%%%%%%%%%
n=logspace(15,21,1e4);

q=1.602e-19;
e0=8.854187817e-12;
mu=1;
D=mu/38;
Vth=0.0263;
L=1e-5;
V=1;
E=V/L;
Ld=sqrt((e0*Vth)./(q*n));
tdr=e0./(q*n*mu);

tdif=((Ld.^2)/(2*D));
tdrif=(2*(Ld)/(mu*E));


subplot(2,2,3);
loglog(n,2*(5*L./Ld));
xlabel('Charge Density (1/m^3)');
ylabel('Required Number of Points for 1-D Simulation ');
title('c) Semiconductor 1-D Spacial Resolution Constraints')

subplot(2,2,4);
loglog(n,1e-7./tdr,n,1e-7./tdif,n,1e-7./tdrif);
xlabel('Charge Density (1/m^3)');
ylabel('Minimum Number of Steps for a Simulation of 0.1 us');
legend('Dielectric Relaxation Time','Diffusion Limit','Drift Limit','Location','North');
title('d) Semiconductor Time Step Constraints ');

a=2*6.4;
b=2*4.8;
% 
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'SpaceTime.pdf');
% 