close all
clear all

% load('2dmem_thick2.mat')
% 
% 
% Vl2=sum( V(pos:posf,:))/2;
% Vl2(1)=1;
% Vl2(ni)=0;
% 
% load('2dmem_thick3.mat')
% 
% 
% Vl3=sum( V(pos:posf,:))/3;
% Vl3(1)=1;
% Vl3(ni)=0;
% 
% 
% load('2dmem_thick4.mat')
% 
% 
% Vl4=sum( V(pos:posf,:))/4;
% Vl4(1)=1;
% Vl4(ni)=0;
% load('2dmem_thick5.mat')
% 
% Vl5=sum( V(pos:posf,:))/5;
% Vl5(1)=1;
% Vl5(ni)=0;
% 
% load('2dmem_thick6.mat')
% 
% Vl6=sum( V(pos:posf,:))/6;
% Vl6(1)=1;
% Vl6(ni)=0;
% plot(linspace(0,99*1.1e-4,ni),Vl2,linspace(0,99*1.1e-4,ni),Vl3,linspace(0,99*1.1e-4,ni),Vl4...
%     ,linspace(0,99*1.1e-4,ni),Vl5,linspace(0,99*1.1e-4,ni),Vl6)




load('2dmem_thick1.mat')


Vl1=( V(pos,:))/(1);
Vl1(1)=1;
Vl1(ni)=0;

% load('2dmem_thick3.mat')
% 
% 
% Vl3=sum( V(pos:posf,:))/(posf-pos+1);
% Vl3(1)=1;
% Vl3(ni)=0;


load('2dmem_thick4.mat')


Vl4=sum( V(pos:posf,:))/(posf-pos+1);
Vl4(1)=1;
Vl4(ni)=0;

% load('2dmem_thick5.mat')
% 
% Vl5=sum( V(pos:posf,:))/(posf-pos+1);
% Vl5(1)=1;
% Vl5(ni)=0;

load('2dmem_thick6.mat')

Vl6=sum( V(pos:posf,:))/(posf-pos+1);
Vl6(1)=1;
Vl6(ni)=0;

% plot(linspace(0,99*1.1e-4,ni),Vl2,linspace(0,99*1.1e-4,ni),Vl3,linspace(0,99*1.1e-4,ni),Vl4...
%     ,linspace(0,99*1.1e-4,ni),Vl5,linspace(0,99*1.1e-4,ni),Vl6)

% plot(linspace(0,99*1.1e-4,ni),gradient(-Vl2,di),linspace(0,99*1.1e-4,ni),gradient(-Vl3,di),linspace(0,99*1.1e-4,ni),gradient(-Vl4,di)...
%     ,linspace(0,99*1.1e-4,ni),gradient(-Vl5,di),linspace(0,99*1.1e-4,ni),gradient(-Vl6,di))
plot(linspace(0,99*1.1e-4,ni),Vl1,linspace(0,99*1.1e-4,ni),Vl4...
    ,linspace(0,99*1.1e-4,ni),Vl6)
% plot(linspace(0,99*1.1e-4,ni),gradient(-Vl1,di),linspace(0,99*1.1e-4,ni),gradient(-Vl4,di)...
%     ,linspace(0,99*1.1e-4,ni),gradient(-Vl6,di))
axis([0 di*ni 0 1.6e3])
xlabel('Distance (m) ')
ylabel('Electric Field (V/m)')
legend('Thickness = 0 m','Thickness 4.4e-6 m','Thickness 6.6e-6 m')
a=2.2*6.4;
b=2.2*4.8;

set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '2D_Memristor_Thick_Efield.pdf');