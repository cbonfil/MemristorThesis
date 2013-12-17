close all
clear all

load('2dmem_train.mat')

subplot(2,1,1);surf(linspace(0,0.0109, 3137 ),linspace(0,0.0109,3137 ),interp2(sNp(:,:, 8e3),5),'edgecolor','none')
view(180,90);
grid off
caxis([0 3.9e15])
axis([0.002 0.009 0.008 0.0109 -4e15 4e15])
h = colorbar;
ylabel(h,'Lithium Density (1/m^3)')
xlabel('Distance (m)')
ylabel('Distance (m)')
% axis off
a=1*6.4;
b=1*4.8;

subplot(2,1,2);surf(linspace(0,0.0109, 3137 ),linspace(0,0.0109,3137 ),interp2(sNn(:,:, 8e3),5),'edgecolor','none')
view(180,90);
grid off
caxis([0 3.9e15])
axis([0.002 0.009 0.008 0.0109 -4e15 4e15])
h = colorbar;
ylabel(h,'Perchlorate Density (1/m^3)')
xlabel('Distance (m)')
ylabel('Distance (m)')
% axis off
a=1*6.4;
b=1*4.8;

set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '2D_Memristor_Pulse_Train_2_Lithium_Perchlorate.pdf');