close all
clear all

load('2dmem_thick1.mat')


for tt=1:t/200
    sp2(:,tt)=(sp(pos:posf,:,tt));
        time2(tt)=time(200*tt);
end

subplot(3,1,3);  surf(time2,linspace(0,99*1.1e-4,99), sp2/1,'edgecolor','none')
axis([0 1.5 0 99*1.1e-4 -1e15 2e15])
caxis([0 1e15])
h = colorbar;
ylabel(h,'Hole density (1/m^3)')
view(0,90)
ylabel('Distance (m)')
xlabel('Time (s)')
title('Thickness = 0 m') 


load('2dmem_thick4.mat')


for tt=1:t/200
    sp2(:,tt)=sum(sp(pos:posf,:,tt));
        time2(tt)=time(200*tt);
end

subplot(3,1,2);    surf(time2,linspace(0,99*1.1e-4,99), sp2/4,'edgecolor','none')
axis([0 1.5 0 99*1.1e-4 -1e15 2e15])
caxis([0 1e15])
h = colorbar;
ylabel(h,'Hole density (1/m^3)')
view(0,90)
ylabel('Distance (m)')
xlabel('Time (s)')
title('Thickness = 4.4e-4 m') 
load('2dmem_thick6.mat')


for tt=1:t/200
    sp2(:,tt)=sum(sp(pos:posf,:,tt));
    time2(tt)=time(200*tt);
end

subplot(3,1,1);  surf(time2,linspace(0,99*1.1e-4,99), sp2/6,'edgecolor','none')
caxis([0 1e15])
axis([0 1.5 0 99*1.1e-4 -1e15 2e15])
ylabel('Distance (m)')
xlabel('Time (s)')
title('Thickness = 6.6e-6 m') 
h = colorbar;
ylabel(h,'Hole density (1/m^3)')
view(0,90)

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
print(gcf, '-dpdf', '2D_Memristor_Thick_Hole_time.pdf');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('2dmem_thick1.mat')
% 
% 
% for tt=1:t/200
%     sp2(:,tt)=(sNp(pos:posf,:,tt));
%         time2(tt)=time(200*tt);
% end
% 
% subplot(3,1,3);  surf(time2,linspace(0,99*1.1e-4,99), sp2/1,'edgecolor','none')
% axis([0 1.5 0 99*1.1e-4 -1e15 2e15])
% caxis([0 1e15])
% h = colorbar;
% ylabel(h,'Lithium density (1/m^3)')
% view(0,90)
% ylabel('Distance (m)')
% xlabel('Time (s)')
% title('Thickness = 0 m') 
% 
% 
% load('2dmem_thick4.mat')
% 
% 
% for tt=1:t/200
%     sp2(:,tt)=sum(sNp(pos:posf,:,tt));
%         time2(tt)=time(200*tt);
% end
% 
% subplot(3,1,2);    surf(time2,linspace(0,99*1.1e-4,99), sp2/4,'edgecolor','none')
% axis([0 1.5 0 99*1.1e-4 -1e15 2e15])
% caxis([0 1e15])
% h = colorbar;
% ylabel(h,'Lithium density (1/m^3)')
% view(0,90)
% ylabel('Distance (m)')
% xlabel('Time (s)')
% title('Thickness = 4.4e-4 m') 
% load('2dmem_thick6.mat')
% 
% 
% for tt=1:t/200
%     sp2(:,tt)=sum(sNp(pos:posf,:,tt));
%     time2(tt)=time(200*tt);
% end
% 
% subplot(3,1,1);  surf(time2,linspace(0,99*1.1e-4,99), sp2/6,'edgecolor','none')
% caxis([0 1e15])
% axis([0 1.5 0 99*1.1e-4 -1e15 2e15])
% ylabel('Distance (m)')
% xlabel('Time (s)')
% title('Thickness = 6.6e-6 m') 
% h = colorbar;
% ylabel(h,'Lithium density (1/m^3)')
% view(0,90)
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
% print(gcf, '-dpdf', '2D_Memristor_Thick_Lithium_time.pdf');

