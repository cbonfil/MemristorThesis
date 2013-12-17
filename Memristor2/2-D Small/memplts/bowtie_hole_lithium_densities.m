clear all
close all



% load('2dmem_f05.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sNp (pos,:,tt); 
% end
% subplot(2,2,1);surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 1e15])
% axis([0 4 0 0.0109 -1e15 1e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Lithium density 1/m^3')
% title('f = 0.5 Hz')
% 
% clear all
% load('2dmem_f5.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sNp (pos,:,tt); 
% end
% subplot(2,2,2);surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 1e15])
% axis([0 4 0 0.0109 -1e15 1e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Lithium density 1/m^3')
% title('f = 5 Hz')
% 
% clear all
% load('2dmem_f1e1.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sNp (pos,:,tt); 
% end
% subplot(2,2,3);surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 1e15])
% axis([0 4 0 0.0109 -1e15 1e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Lithium density 1/m^3')
% title('f = 10 Hz')
% 
% 
% clear all
% load('2dmem_f1e2.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sNp (pos,:,tt); 
% end
% subplot(2,2,4);surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 1e15])
% axis([0 4 0 0.0109 -1e15 1e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Lithium density 1/m^3')
% title('f = 100 Hz')
% 
% 
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
% print(gcf, '-dpdf', '2D_Memristor_f_Lithium.pdf');




% load('2dmem_f05.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,:,tt); 
% end
% subplot(2,2,1);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 2e15])
% axis([0 4 0 0.0109 -2e15 2e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 0.5 Hz')
% 
% clear all
% load('2dmem_f5.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,:,tt); 
% end
% subplot(2,2,2);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 2e15])
% axis([0 4 0 0.0109 -2e15 2e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 5 Hz')
% 
% clear all
% load('2dmem_f1e1.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,:,tt); 
% end
% subplot(2,2,3);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 2e15])
% axis([0 4 0   0.0109 -2e15 2e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 10 Hz')
% clear all
% load('2dmem_f1e2.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,:,tt); 
% end
% subplot(2,2,4);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 2e15])
% axis([0 4 0   0.0109 -2e15 2e15])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 100 Hz')
% 
% 
% 
% 
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
% print(gcf, '-dpdf', '2D_Memristor_f_Hole.pdf');


% load('2dmem_f05.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,50,1e3-11)./sp (pos,:,tt); 
% end
% subplot(2,2,1);
% surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% caxis([0 60])
% axis([0 4 0 0.0109 0 80])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 0.5 Hz')
% 
% clear all
% load('2dmem_f5.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,50,1e3-11)./sp (pos,:,tt); 
% end
% subplot(2,2,2);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% % caxis([0 2e15])
% axis([0 4 0 0.0109 0 80])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 5 Hz')
% 
% clear all
% load('2dmem_f1e1.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,50,1e3-11)./sp (pos,:,tt); 
% end
% subplot(2,2,3);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% % caxis([0 2e15])
% axis([0 4 0   0.0109 0 80])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 10 Hz')
% 
% clear all
% 
% load('2dmem_f1e2.mat')
% 
% for tt=1:t/100
%     
%  sNplot(tt,:)=  sp (pos,50,1e3-11)./sp (pos,:,tt); 
% end
% subplot(2,2,4);surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
% colorbar
% % caxis([0 2e15])
% axis([0 4 0   0.0109 0 80])
% view(0,90)
% grid off
% %             axis off
% 
% xlabel('Time (s)')
% ylabel('Distance (m)')
% h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 100 Hz')
% 
% 
% 
% 
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
% print(gcf, '-dpdf', '2D_Memristor_f_Resistivity.pdf');


load('2dmem_f1e2.mat')

norm= sp (pos,50,1e3-11);
load('2dmem_f1e5.mat')

for tt=1:t/100
%     3.0882e+11
     sNplot(tt,:)=     norm./sp (pos,:,tt); 
%  sNplot(tt,:)=  sp (pos,50,1e3-11)./sp (pos,:,tt); 
end

surf(linspace(0,t*dt,t/1e2),linspace(0,  0.0109,ni),  sNplot','edgecolor','none')
colorbar
caxis([0 1.1])
axis([0 t*dt 0   0.0109 0 80])
view(0,90)
grid off
%             axis off

xlabel('Time (s)')
ylabel('Distance (m)')
h = colorbar;
ylabel(h,'Hole density 1/m^3')
title('f = 100 kHz')


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
% print(gcf, '-dpdf', '2D_Memristor_f_Resistivity_1e5.pdf');



