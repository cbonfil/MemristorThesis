close all
clear all


load('2dmem_thick6.mat')

t=t/200;
sp2(:,:)=interp2(sp(:,:,t),3);
subplot(3,1,1);  surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
grid off

h = colorbar;
ylabel(h,'Hole density (1/m^3)')
ylabel('Distance (m)')
xlabel('Distance (m)')
title('Thickness = 6.6e-4 m') 

caxis([0 2e15])
axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
view(0,-90)



load('2dmem_thick4.mat')

t=t/200;
sp2(:,:)=interp2(sp(:,:,t),3);
subplot(3,1,2);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
grid off
h = colorbar;
ylabel(h,'Hole density (1/m^3)')
ylabel('Distance (m)')
xlabel('Distance (m)')
title('Thickness = 4.4e-4 m') 

caxis([0 2e15])
axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
view(0,-90)



load('2dmem_thick1.mat')


t=t/200;
sp2(:,:)=interp2(sp(:,:,t),3);
subplot(3,1,3);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
grid off
h = colorbar;
ylabel(h,'Hole density (1/m^3)')
ylabel('Distance (m)')
xlabel('Distance (m)')
title('Thickness = 0 m') 

caxis([0 2e15])
axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
view(0,-90)


a=1.6*6.4;
b=1.6*4.8;

set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '2D_Memristor_Thick_Hole_SS.pdf');




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% load('2dmem_thick6.mat')
% 
% t=t/200;
% sp2(:,:)=interp2(sNp(:,:,t),3);
% subplot(3,1,1);  surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% h = colorbar;
% ylabel(h,'Lithium density (1/m^3)')
% ylabel('Distance (m)')
% xlabel('Distance (m)')
% title('Thickness = 6.6e-4 m') 
% 
% caxis([0 3e15])
% axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
% view(0,-90)
% 
% 
% 
% load('2dmem_thick4.mat')
% 
% t=t/200;
% sp2(:,:)=interp2(sNp(:,:,t),3);
% subplot(3,1,2);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% h = colorbar;
% ylabel(h,'Lithium density (1/m^3)')
% ylabel('Distance (m)')
% xlabel('Distance (m)')
% title('Thickness = 4.4e-4 m') 
% 
% caxis([0 3e15])
% axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
% view(0,-90)
% 
% 
% 
% load('2dmem_thick1.mat')
% 
% 
% t=t/200;
% sp2(:,:)=interp2(sNp(:,:,t),3);
% subplot(3,1,3);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% h = colorbar;
% ylabel(h,'Lithium density (1/m^3)')
% ylabel('Distance (m)')
% xlabel('Distance (m)')
% title('Thickness = 0 m') 
% 
% caxis([0 3e15])
% axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
% view(0,-90)
% 
% 
% a=1.6*6.4;
% b=1.6*4.8;
% 
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'renderer', 'zbuffer');
% print(gcf, '-dpdf', '2D_Memristor_Thick_Lithium_SS.pdf');
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% load('2dmem_thick6.mat')
% 
% t=t/200;
% sp2(:,:)=interp2(sNn(:,:,t),3);
% subplot(3,1,1);  surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% h = colorbar;
% ylabel(h,'Perchlorate density (1/m^3)')
% ylabel('Distance (m)')
% xlabel('Distance (m)')
% title('Thickness = 6.6e-4 m') 
% 
% caxis([0 3e15])
% axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
% view(0,-90)
% 
% 
% 
% load('2dmem_thick4.mat')
% 
% t=t/200;
% sp2(:,:)=interp2(sNn(:,:,t),3);
% subplot(3,1,2);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% h = colorbar;
% ylabel(h,'Perchlorate density (1/m^3)')
% ylabel('Distance (m)')
% xlabel('Distance (m)')
% title('Thickness = 4.4e-4 m') 
% 
% caxis([0 3e15])
% axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
% view(0,-90)
% 
% 
% 
% load('2dmem_thick1.mat')
% 
% 
% t=t/200;
% sp2(:,:)=interp2(sNn(:,:,t),3);
% subplot(3,1,3);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% h = colorbar;
% ylabel(h,'Perchlorate density (1/m^3)')
% ylabel('Distance (m)')
% xlabel('Distance (m)')
% title('Thickness = 0 m') 
% 
% caxis([0 3e15])
% axis([ di di*ni (pos-6)*di (pos+7)*di  -1e15 8e15])
% view(0,-90)
% 
% 
% a=2.2*6.4;
% b=2.2*4.8;
% 
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'renderer', 'zbuffer');
% print(gcf, '-dpdf', '2D_Memristor_Thick_Perchlorate_SS.pdf');

