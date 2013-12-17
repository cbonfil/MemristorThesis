close all
clear all


% load('Bowtie_f5e-1')
% subplot(4,1,1);
% plot((1:t)*dt,I1(1:t)/I1(1e2))
% axis([0 t*dt -1.2 1.2])
% xlabel('Time (s)')
% ylabel('Normalized Current')
% legend('f = 0.5 Hz')
%
%
% load('Bowtie_f5')
% subplot(4,1,2);
% plot((1:t)*dt,I1(1:t)/I1(1e2))
% axis([0 t*dt -1.2 1.2])
% xlabel('Time (s)')
% ylabel('Normalized Current')
% legend('f = 5 Hz')
%
% subplot(4,1,3);
% load('Bowtie_f1e1')
% plot((1:t)*dt,I1(1:t)/I1(1e2))
% axis([0 t*dt -1.2 1.2])
% xlabel('Time (s)')
% ylabel('Normalized Current')
% legend('f = 10 Hz')
%
% subplot(4,1,4);
% load('Bowtie_f1e2')
% plot((1:t)*dt,I1(1:t)/I1(1e2))
% axis([0 t*dt -1.2 1.2])
% xlabel('Time (s)')
% ylabel('Normalized Current')
% legend('f = 100 Hz')
%
% a=1.4*6.4;
% b=1.4*6.8;
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
% print(gcf, '-dpdf', 'BowtieCurr4f.pdf');




% load('Bowtie_f5e-1')
% t11=54e3;
% t12=t;
% subplot(2,2,1);
% plot(Vt(t11:t12),I2(t11:t12)/I2(100))
%
% xlabel('Potential (V)')
% ylabel('Normalized Current')
% legend(['Time =' ' ' num2str(t11*dt) ' s to ' num2str(t12*dt) ' s'],'location','northwest')
% title('f = 0.5 Hz')
%
%
% load('Bowtie_f5')
%
% t11=64e3;
% t12=95e3;
% t21=t11+50e3;
% t22=t12+50e3;
% t31=t21+240e3;
% t32=t22+340e3;
%
%
% subplot(2,2,2);
% plot(Vt(t11:t12),I2(t11:t12)/I2(100),Vt(t21:t22)...
%     ,I2(t21:t22)/I2(100),Vt(t31:t32),I2(t31:t32)/I2(100))
% legend(['Time =' ' ' num2str(t11*dt) ' s to ' num2str(t12*dt) ' s']...
%     ,['Time =' ' ' num2str(t21*dt) ' s to ' num2str(t22*dt) ' s'],...
%     ['Time =' ' ' num2str(t31*dt) ' s to ' num2str(t32*dt) ' s'],'location','northwest')
% title('f = 5 Hz')
% xlabel('Potential (V)')
% ylabel('Normalized Current')
%
%
%
% subplot(2,2,3);
% load('Bowtie_f1e1')
% t11=64e3;
% t12=81e3;
% t21=t11+50e3;
% t22=t12+50e3;
% t31=t21+180e3;
% t32=t22+180e3;
%
%
% plot(Vt(t11:t12),I2(t11:t12)/I2(100),Vt(t21:t22)...
%     ,I2(t21:t22)/I2(100),Vt(t31:t32),I2(t31:t32)/I2(100))
% legend(['Time =' ' ' num2str(t11*dt) ' s to ' num2str(t12*dt) ' s']...
%     ,['Time =' ' ' num2str(t21*dt) ' s to ' num2str(t22*dt) ' s'],...
%     ['Time =' ' ' num2str(t31*dt) ' s to ' num2str(t32*dt) ' s'],'location','northwest')
% title('f = 10 Hz')
% xlabel('Potential (V)')
% ylabel('Normalized Current')
%
%
% subplot(2,2,4);
% load('Bowtie_f1e2')
% t11=74e3;
% t12=81e3;
% t21=t11+50e3;
% t22=t12+50e3;
% t31=t21+80e3;
% t32=t22+80e3;
%
%
% plot(Vt(t11:t12),I2(t11:t12)/I2(100),Vt(t21:t22)...
%     ,I2(t21:t22)/I2(100),Vt(t31:t32),I2(t31:t32)/I2(100))
% legend(['Time =' ' ' num2str(t11*dt) ' s to ' num2str(t12*dt) ' s']...
%     ,['Time =' ' ' num2str(t21*dt) ' s to ' num2str(t22*dt) ' s'],...
%     ['Time =' ' ' num2str(t31*dt) ' s to ' num2str(t32*dt) ' s'],'location','northwest')
% title('f = 100 Hz')
% xlabel('Potential (V)')
% ylabel('Normalized Current')
%
%
%
% a=2*6.4;
% b=2*4.8;
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
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', 'BowtiefAll.pdf');



% hold all
% load('Bowtie_f5e-1')
% t11=54e3;
% t12=t;
%
% plot(1*Vt(t11:t12),I2(t11:t12))
%
% load('Bowtie_f05_V01.mat')
%
% plot(1*Vt(t11:t12),I2(t11:t12))
%
% load('Bowtie_f05_V02.mat')
%
% plot(1*Vt(t11:t12),I2(t11:t12))
%
% load('Bowtie_f05_V04.mat')
%
% plot(1*Vt(t11:t12),I2(t11:t12))
%
% load('Bowtie_f05_V06.mat')


% plot(1*Vt(t11:t12),I2(t11:t12))
% 
% load('Bowtie_f05_V08.mat')
% 
% plot(1*Vt(t11:t12),I2(t11:t12))

% load('Bowtie_f1e5.mat')
% surf(linspace(0,t*dt,26500),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t*dt 0 1e-2 0 2e12])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Lithium density 1/m^3')
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
% print(gcf, '-dpdf', '1D_Memristor_Lithium_100kHz.pdf');

load('Bowtie_f5e-1.mat')
m=1;
for tt=1:t/10

   sv_Liplt(:,m)= sv_Li(:,1,tt);
    m=m+1;
end
%    sv_Liplt=   sv_Liplt';
subplot(2,2,1);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
           colorbar
               axis([0 t/1*dt 0 1e-2 0 2e15])
            view(0,90)
            grid off
%             axis off
            getframe;
            xlabel('Time (s)')
            ylabel('Distance (m)')
            h = colorbar;
ylabel(h,'Lithium density 1/m^3')
title('f = 0.5 Hz')


load('Bowtie_f5.mat')
m=1;
for tt=1:t/10

   sv_Liplt(:,m)= sv_Li(:,1,tt);
    m=m+1;
end
%    sv_Liplt=   sv_Liplt';
subplot(2,2,2);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
           colorbar
               axis([0 t/1*dt 0 1e-2 0 2e15])
            view(0,90)
            grid off
%             axis off
            getframe;
            xlabel('Time (s)')
            ylabel('Distance (m)')
            h = colorbar;
ylabel(h,'Lithium density 1/m^3')
title('f = 5 Hz')


load('Bowtie_f1e1.mat')
m=1;
for tt=1:t/10

   sv_Liplt(:,m)= sv_Li(:,1,tt);
    m=m+1;
end
%    sv_Liplt=   sv_Liplt';
subplot(2,2,3);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
           colorbar
               axis([0 t/1*dt 0 1e-2 0 2e15])
            view(0,90)
            grid off
%             axis off
            getframe;
            xlabel('Time (s)')
            ylabel('Distance (m)')
            h = colorbar;
ylabel(h,'Lithium density 1/m^3')
title('f = 10 Hz')

load('Bowtie_f1e2.mat')
m=1;
for tt=1:t/10

   sv_Liplt(:,m)= sv_Li(:,1,tt);
    m=m+1;
end
%    sv_Liplt=   sv_Liplt';
subplot(2,2,4);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
           colorbar
               axis([0 t/1*dt 0 1e-2 0 2e15])
            view(0,90)
            grid off
%             axis off
            getframe;
            xlabel('Time (s)')
            ylabel('Distance (m)')
            h = colorbar;
ylabel(h,'Lithium density 1/m^3')
title('f = 100 Hz')

  
a=2*6.4;
b=2*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '1D_Memristor_Lithium.pdf');





% load('Bowtie_f5e-1.mat')
% m=1;
% for tt=1:t/10
% 
%    sv_Liplt(:,m)= sv_p(:,1,tt);
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,1);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 0.5 Hz')
% 
% 
% load('Bowtie_f5.mat')
% m=1;
% for tt=1:t/10
% 
%    sv_Liplt(:,m)= sv_p(:,1,tt);
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,2);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 5 Hz')
% 
% 
% load('Bowtie_f1e1.mat')
% m=1;
% for tt=1:t/10
% 
%    sv_Liplt(:,m)= sv_p(:,1,tt);
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,3);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 10 Hz')
% 
% load('Bowtie_f1e2.mat')
% m=1;
% for tt=1:t/10
% 
%    sv_Liplt(:,m)= sv_p(:,1,tt);
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,4);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Hole density 1/m^3')
% title('f = 100 Hz')
% 
%   
% a=2*6.4;
% b=2*4.8;
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
% print(gcf, '-dpdf', '1D_Memristor_Hole.pdf');

% load('Bowtie_f5e-1.mat')
% m=1;
% for tt=1:t/10
% 
%      sv_Liplt(:,m)= sv_p(1,1,1)./(sv_p(:,1,tt));
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,1);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Normalized Resistivity')
% title('f = 0.5 Hz')
% 
% 
% load('Bowtie_f5.mat')
% m=1;
% for tt=1:t/10
% 
%    sv_Liplt(:,m)= sv_p(1,1,1)./(sv_p(:,1,tt));
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,2);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Normalized Resistivity')
% title('f = 5 Hz')
% 
% 
% load('Bowtie_f1e1.mat')
% m=1;
% for tt=1:t/10
% 
%   sv_Liplt(:,m)= sv_p(1,1,1)./(sv_p(:,1,tt));
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,3);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Normalized Resistivity')
% title('f = 10 Hz')
% 
% load('Bowtie_f1e2.mat')
% m=1;
% for tt=1:t/10
% 
%    sv_Liplt(:,m)= sv_p(1,1,1)./(sv_p(:,1,tt));
%     m=m+1;
% end
% %    sv_Liplt=   sv_Liplt';
% subplot(2,2,4);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
%            colorbar
%                axis([0 t/1*dt 0 1e-2 0 2e15])
%             view(0,90)
%             grid off
% %             axis off
%             getframe;
%             xlabel('Time (s)')
%             ylabel('Distance (m)')
%             h = colorbar;
% ylabel(h,'Normalized Resistivity')
% title('f = 100 Hz')
% 
%   
% a=2*6.4;
% b=2*4.8;
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
% print(gcf, '-dpdf', '1D_Memristor_Resistivity.pdf');



% load('Bowtie_f1e5.mat')
m=1;
for tt=10:10000:1265000

   sv_Liplt(:,m)= (sv_Li(:,1,tt));
    m=m+1;
end
%    sv_Liplt=   sv_Liplt';
subplot(2,2,4);surf(linspace(0,t*dt,(t)/10),linspace(0,1e-2,ni), sv_Liplt,'edgecolor','none')
           colorbar
               axis([0 t/1*dt 0 1e-2 0 2e15])
            view(0,90)
            grid off
%             axis off
            getframe;
            xlabel('Time (s)')
            ylabel('Distance (m)')
            h = colorbar;
ylabel(h,'Normalized Resistivity')
title('f = 100 Hz')
