close all
clear all


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('2dmem_thick6.mat')
% 
% 
% t=t/200;
% sp2(:,:)=interp2(V(ni:-1:1,:),3);
% subplot(3,1,1);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% 
% h = colorbar;
% ylabel(h,'Potential (V)')
% axis([ di di*ni (1)*di (15)*di  -3e3 3e3])
% view(0,90)
% xlabel('Distance (m)');
% ylabel('Distance (m)');
% title('Thickness = 6.6e-4 m')
% 
% load('2dmem_thick4.mat')
% 
% t=t/200;
% sp2(:,:)=interp2(V(ni:-1:1,:),3);
% subplot(3,1,2);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% 
% h = colorbar;
% ylabel(h,'Potential (V)')
% axis([ di di*ni (1)*di (15)*di  -3e3 3e3])
% view(0,90)
% xlabel('Distance (m)');
% ylabel('Distance (m)');
% title('Thickness = 4.4e-4 m')
% 
% 
% load('2dmem_thick1.mat')
% 
% t=t/200;
% sp2(:,:)=interp2(V(ni:-1:1,:),3);
% subplot(3,1,3);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
% grid off
% 
% h = colorbar;
% ylabel(h,'Potential (V)')
% axis([ di di*ni (1)*di (15)*di  -3e3 3e3])
% view(0,90)
% xlabel('Distance (m)');
% ylabel('Distance (m)');
% title('Thickness = 0 m')
% 
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
% print(gcf, '-dpdf', '2D_Memristor_Thick_V.pdf');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % 
load('2dmem_thick6.mat')


t=t/200;
Estr=sqrt(Ei.^2+Ej.^2);
sp2(:,:)=interp2(Estr(ni:-1:1,:),3);
subplot(3,1,1);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
grid off

h = colorbar;
ylabel(h,'Electric Field (V/m)')
axis([ di di*ni (1)*di (15)*di  -3e3 3e3])
view(0,90)
xlabel('Distance (m)');
ylabel('Distance (m)');
title('Thickness = 6.6e-4 m')


load('2dmem_thick4.mat')

t=t/200;
Estr=sqrt(Ei.^2+Ej.^2);
sp2(:,:)=interp2(Estr(ni:-1:1,:),3);
subplot(3,1,2);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
grid off

h = colorbar;
ylabel(h,'Electric Field (V/m)')
axis([ di di*ni (1)*di (15)*di  -3e3 3e3])
view(0,90)
xlabel('Distance (m)');
ylabel('Distance (m)');
title('Thickness = 4.4e-4 m')


load('2dmem_thick1.mat')

t=t/200;
Estr=sqrt(Ei.^2+Ej.^2);
sp2(:,:)=interp2(Estr(ni:-1:1,:),3);
subplot(3,1,3);    surf(linspace(0,99*1.1e-4,785),linspace(0,99*1.1e-4,785), sp2/1,'edgecolor','none')
grid off

h = colorbar;
ylabel(h,'Electric Field (V/m)')
axis([ di di*ni (1)*di (15)*di  -3e3 3e3])
view(0,90)
xlabel('Distance (m)');
ylabel('Distance (m)');
title('Thickness = 0 m')

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
print(gcf, '-dpdf', '2D_Memristor_Thick_E.pdf');