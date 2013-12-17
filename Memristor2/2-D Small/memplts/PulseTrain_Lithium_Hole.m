close all
clear all

% load('2dmem_train.mat')
% 
% 
% for tt=1:1e4
%     
%     sPplt(:,tt)=sp(pos,:,tt);
%     
% end
% 
% subplot(2,1,1);surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni), sPplt,'edgecolor','none')
% caxis([0 1e15])
% colorbar;
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% axis([0 t*dt 0 0.0109 -5e15 5e15])
% view(0,90)
% xlabel('Time (s)')
% ylabel('Distance (m)')
% 
% 
% for tt=1:1e4
%     
%     sPplt(:,tt)=sNp(pos,:,tt);
%     
% end
% 
% subplot(2,1,2);surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni), sPplt,'edgecolor','none')
% 
% caxis([0 1e15])
% colorbar;
% h = colorbar;
% ylabel(h,'Lithium density 1/m^3')
% axis([0 t*dt 0 0.0109 -5e15 5e15])
% view(0,90)
% xlabel('Time (s)')
% ylabel('Distance (m)')


% a=1.6*6.4;
% b=1.6*4.8;
% %
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
% print(gcf, '-dpdf', '2D_Memristor_Pulse_Lithium_Hole.pdf');

 load('2dmem_retention.mat')


for tt=1:1e4
    
    sPplt(:,tt)=sp(pos,:,tt);
    
end
% 
% subplot(2,1,1);

surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni), sPplt/1e15,'edgecolor','none')
caxis([0 2])
colorbar;
h = colorbar;
ylabel(h,'Hole density 1/m^3')
% axis([0 t*dt 0 0.0109 -5e15 5e15])
view(0,90)
xlabel('Time (s)')
ylabel('Distance (m)')



