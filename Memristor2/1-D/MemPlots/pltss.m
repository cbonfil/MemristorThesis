close all
clear all
set(0, 'DefaultFigureRenderer', 'opengl');
set(0,'DefaultFigureWindowStyle','docked');

% hold all
% load('Rect_V_1e-1')
% plot((1:t)*dt,abs(1./(I1/I1(2))))
% load('Rect_V_5e-1')
% plot((1:t)*dt,abs(1./(I1/I1(2))))
% 
% load('Rect_V_10e-1')
% plot((1:t)*dt,abs(1./(I1/I1(2))))
% 
% load('Rect_V_20e-1')
% plot((1:t)*dt,abs(1./(I1/I1(2))))
% legend('0.1 V','0.5 V','1 V','2 V')
% ylabel('Normalized Inverse Current Density')
% xlabel('Time (s)')

% a=1*6.4;
% b=1*4.8;
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
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'Potential.pdf');

%
% % load('Bowtie_Long2')
% load('Rect_mu_div_5e2')
% for t=1e1:1e1:35e4
%     licon(1:201,(t)/1e1)=sv_Li(:,1,(t)/1e1);
%     pcon(1:201,(t)/1e1)=1e3*1./sv_p(:,1,(t)/1e1);
%     % plot(1:ni,licon(1:201,(t)/1e3),1:ni,pcon(1:201,(t)/1e3))
%     % getframe;
% end

% subplot(2,1,1);
% surf(pcon,'edgecolor','none')
% view(0,90);
% grid off
% axis off
% title('Resistivity')
% ylabel('Density')
% subplot(2,1,2);surf(licon,'edgecolor','none')
% view(0,90);
% grid off
% axis off
% title('Lithium Density')
% ylabel('Density')
% a=1*6.4;
% b=1*4.8;
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
% print(gcf, '-dpdf', 'ResistivityDC.pdf');

% plot((1:t)*dt,I1(1:t)/I1(1))
% ylabel('Normalized Current Density')
% xlabel('Time (s)')
% axis([0 8 -120 100])
% a=1*6.4;
% b=1*4.8;
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
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'AC_High.pdf');

% load('Bowtie3')
% plot(Vt(1:15000),q*I2(1:15000)*di/dt)
% ylabel('Current Density A/m^2')
% xlabel('Potential (V)')
% % axis([0 8 -120 100])
% a=1*6.4;
% b=1*4.8;
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
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'Bowtie3.pdf');


% hold all
% load('Rect1')
% % plot(1:t,1./(I1/I1(1)))
% plot(Vt)
% load('Rect2')
% % plot(1:t,1./(I1/I1(1)))
% plot(Vt)


% hold all
% load('Rect_V1_r2_mu')
% plot((1:t)*dt,1./(I1/I1(1)))
% 
% load('Rect_V1_r5_mu')
% plot((1:t)*dt,1./(I1/I1(1)))
% load('Rect_V1_r10_mu')
% plot((1:t)*dt,1./(I1/I1(1)))
% 
% ylabel('Normalized Resistivity')
% xlabel('Time (s)')
% legend('r=2','r=5','r=10','location','southeast')
% % title('Reduced Hole Mobility Due to Lithium')
% a=1*6.4;
% b=1*4.8;
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
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'HoleMobility.pdf');



% hold all
% load('Rect_mu_div_1e1')
% plot((1:t)*dt,1./(I1/I1(1)))
%
% load('Rect_mu_div_2e1')
% plot((1:t)*dt,1./(I1/I1(1)))
%
% load('Rect_mu_div_5e1')
% plot((1:t)*dt,1./(I1/I1(1)))
%
% load('Rect_mu_div_2e2')
% plot((1:t)*dt,1./(I1/I1(1)))
%
% load('Rect_mu_div_5e2')
% plot((1:t)*dt,1./(I1/I1(1)))
%
% load('Rect_mu_div_1e3')
% plot((1:t)*dt,1./(I1/I1(1)))
%
% title('Hole Mobility Scaling (SS Cur.D = 9.9505e+13 A/m^2)')
% ylabel('Normalized Inverse Current Density')
% xlabel('Time (s)')

% a=1*6.4;
% b=1*4.8;
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
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'HoleMobility.pdf');