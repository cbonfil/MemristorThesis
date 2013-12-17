close all
clear all
set(0, 'DefaultFigureRenderer', 'opengl');
set(0,'DefaultFigureWindowStyle','docked');
% 
% load('Rect_V_1e-1')
% for t=1e1:1e1:35e4
%     licon(1:201,(t)/1e1)=sv_Li(:,1,(t)/1e1);
%     pcon(1:201,(t)/1e1)=1./sv_p(:,1,(t)/1e1);
%     % plot(1:ni,licon(1:201,(t)/1e3),1:ni,pcon(1:201,(t)/1e3))
%     % getframe;
% end
% 
% subplot(4,1,1);
% surf(pcon,'edgecolor','none')
% view(0,90);
% grid off
% axis off
% % title('Resistivity')
% % ylabel('Density')
% 
% 
% load('Rect_V_5e-1')
% for t=1e1:1e1:35e4
%     licon(1:201,(t)/1e1)=sv_Li(:,1,(t)/1e1);
%     pcon(1:201,(t)/1e1)=1./sv_p(:,1,(t)/1e1);
%     % plot(1:ni,licon(1:201,(t)/1e3),1:ni,pcon(1:201,(t)/1e3))
%     % getframe;
% end
% 
% subplot(4,1,2);
% surf(pcon,'edgecolor','none')
% view(0,90);
% grid off
% axis off
% % title('Resistivity')
% % ylabel('Density')
% 
% load('Rect_V_10e-1')
% for t=1e1:1e1:35e4
%     licon(1:201,(t)/1e1)=sv_Li(:,1,(t)/1e1);
%     pcon(1:201,(t)/1e1)=1./sv_p(:,1,(t)/1e1);
%     % plot(1:ni,licon(1:201,(t)/1e3),1:ni,pcon(1:201,(t)/1e3))
%     % getframe;
% end
% 
% subplot(4,1,3);
% surf(pcon,'edgecolor','none')
% view(0,90);
% grid off
% axis off
% % title('Resistivity')
% % ylabel('Density')
% 
% load('Rect_V_20e-1')
% for t=1e1:1e1:35e4
%     licon(1:201,(t)/1e1)=sv_Li(:,1,(t)/1e1);
%     pcon(1:201,(t)/1e1)=1./sv_p(:,1,(t)/1e1);
%     % plot(1:ni,licon(1:201,(t)/1e3),1:ni,pcon(1:201,(t)/1e3))
%     % getframe;
% end
% 
% subplot(4,1,4);
% surf(pcon,'edgecolor','none')
% view(0,90);
% grid off
% axis off
% % title('Resistivity')
% % ylabel('Density')
% 
% 
% 
% a=1*6.4;
% b=4*4.8;
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
% print(gcf, '-dpdf', 'Rect_V_Hole_Con.pdf');



hold all
load('Rect_V_1e-1')
plot((1:t)*dt,abs(1./(I1/I1(2))))
load('Rect_V_5e-1')
plot((1:t)*dt,abs(1./(I1/I1(2))))

load('Rect_V_10e-1')
plot((1:t)*dt,abs(1./(I1/I1(2))))

load('Rect_V_20e-1')
plot((1:t)*dt,abs(1./(I1/I1(2))))
legend('0.1 V','0.5 V','1 V','2 V','location','southeast')
ylabel('Normalized Resistivity')
xlabel('Time (s)')


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
print(gcf, '-dpdf', '1DMem_V.pdf');
