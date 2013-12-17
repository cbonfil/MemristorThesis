close all 
clear all

load('density.mat')


for d=1:1:20
  
 I1d(d,:)=sv_pL(:,d,1:2.6e3)/d;
 I2d(d,:)=sv_pR(:,d,1:2.6e3)/d;


end
I2d=q*dt/di*I2d;
tme=(1:2.6e3)*dt*1e4/2;

plot(tme,I2d(1,:),tme,I2d(5,:),tme,I2d(9,:),tme,I2d(13,:),tme,I2d(17,:))
ylabel('Current Density (A/m^2)')
xlabel('Time (s)')
legend('Hole Density = 5e15 1/m^3','Hole Density = 25e15 1/m^3','Hole Density = 45e15 1/m^3'...
    ,'Hole Density = 65e15 1/m^3','Hole Density = 85e15 1/m^3')

a=1.3*6.4;
b=1.3*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'DensityDiff.pdf');

clear I1d
clear I2d

for d=1:1:20
  
 I1d(:,d)=sv_p(:,d,2.6e3)/d;
 I2d(:,d)=sv_p(:,d,2.6e3)/d;


end

tme=(1:2.6e3)*dt*1e4/2;

plot((1:ni)*di,I2d(:,1),(1:ni)*di,I2d(:,5),(1:ni)*di,I2d(:,9),(1:ni)*di,I2d(:,13),(1:ni)*di,I2d(:,17))
ylabel('Hole Density (1/m^3)')
xlabel('Distance (m)')
legend('Hole Density = 5e15 1/m^3','Hole Density = 25e15 1/m^3','Hole Density = 45e15 1/m^3'...
    ,'Hole Density = 65e15 1/m^3','Hole Density = 85e15 1/m^3','location','southwest')

 a=1.3*6.4;
b=1.3*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'HoleDiff.pdf');


clear I1d
clear I2d

for d=1:1:20
  
 I1d(:,d)=sv_Li(:,d,2.6e3)/d;
 I2d(:,d)=sv_Li(:,d,2.6e3)/d;


end
tme=(1:2.6e3)*dt*1e4/2;
plot((1:ni)*di,I2d(:,1),(1:ni)*di,I2d(:,5),(1:ni)*di,I2d(:,9),(1:ni)*di,I2d(:,13),(1:ni)*di,I2d(:,17))
ylabel('Lithium Density (1/m^3)')
xlabel('Distance (m)')
legend('Lithium Density = 5e15 1/m^3','Lithium Density = 25e15 1/m^3','Lithium Density = 45e15 1/m^3'...
    ,'Lithium Density = 65e15 1/m^3','Lithium Density = 85e15 1/m^3','location','northwest')




 a=1.3*6.4;
b=1.3*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'LithiumDiff.pdf');