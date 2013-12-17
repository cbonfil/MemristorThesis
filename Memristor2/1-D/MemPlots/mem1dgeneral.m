close all
clear all

load('Rect_DC')
VBV=-VBV;




% d=1;
% tm=1;
% for t=1:10:2e4
%     qq= -sv_n(:,d,t)+sv_p(:,d,t)+sv_Li(:,d,t);
%      Vtt(tm,:)=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(qq) ) )))));
% %     spt(tm,:)=sv_p(:,d,t);
% %     sNpt(tm,:)=sv_Li(:,d,t);
%     % plot((1:ni)*di,V)
%     % getframe;
%     tm=tm+1;
% end
% 
% plot((1:ni)*di, Vtt(tm-1,:))
% xlabel('Distance (m)')
% ylabel('Potential (V)')
% 
% 
% a=1*6.4;
% b=1*4.8;
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
% print(gcf, '-dpdf', '1DMemristorPotential.pdf');

% d=1;
% tm=1;
% for t=1:10:6e4
%     qq= -sv_n(:,d,t)+sv_p(:,d,t)+sv_Li(:,d,t);
%     %  Vtt(tm,:)=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(qq) ) )))));
%     spt(tm,:)=sv_p(:,d,t);
%     sNpt(tm,:)=sv_Li(:,d,t);
%     % plot((1:ni)*di,V)
%     % getframe;
%     tm=tm+1;
% end
% 
% subplot(2,1,1)
% surf(linspace(dt,65e4*dt,tm-1),linspace(di,ni*di,ni),spt','edgecolor','none')
% axis([dt 65e4*dt di ni*di  0 1e15])
% view(0,90)
% title('Hole Density Over Time')
% xlabel('Time (s)')
% ylabel('Distance (m)')
% colorbar;
% h = colorbar;
% ylabel(h,'Hole Density (1/m^3)')
% grid off
% 
% 
% subplot(2,1,2)
% surf(linspace(dt,65e4*dt,tm-1),linspace(di,ni*di,ni),sNpt','edgecolor','none')
% axis([ dt 65e4*dt di ni*di  0 5e15])
% view(0,90)
% xlabel('Time (s)')
% ylabel('Distance (m)')
% title('Lithium Density Over Time')
% colorbar;
% h = colorbar;
% ylabel(h,'Lithium Density (1/m^3)')
% grid off

% a=1*6.4;
% b=1*4.8;
% a=0.5*19.20;
% b=0.5*10.80;
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
% print(gcf, '-dpdf', '1DMemDensityOverTime.pdf');


% d=1;
% tm=1;
% for t=1:10:6e4
%     qq= -sv_n(:,d,t)+sv_p(:,d,t)+sv_Li(:,d,t);
%     %  Vtt(tm,:)=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(qq) ) )))));
%     spt(tm,:)=sv_p(:,d,t);
%     sNpt(tm,:)=sv_Li(:,d,t);
%     % plot((1:ni)*di,V)
%     % getframe;
%     tm=tm+1;
% end
% 
% 
% surf(linspace(dt,65e4*dt,tm-1),linspace(di,ni*di,ni),1e15./(spt)','edgecolor','none')
% axis([ dt 65e4*dt di ni*di 0 28])
% view(0,90)
% xlabel('Time (s)')
% ylabel('Distance (m)')
% title('Normalized Resistivity Over time')
% colorbar;
% h = colorbar;
% ylabel(h,'Normalized Resistivity')
% grid off
% 
% % a=1.5*6.4;
% % b=1.5*4.8;
% a= 0.5*19.20;
% b= 0.5*10.80;
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
% print(gcf, '-dpdf', '1DMemResistivityOverTime.pdf');



% d=1;
% tm=1;
% for t=10:10:6e4
%     if mod(t,20e3)==0
%         VBV=-VBV;
%     end
%     qq= -sv_n(:,d,t)+sv_p(:,d,t)+sv_Li(:,d,t);
%      Vtt(tm,:)=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(qq) ) )))));
%     spt(tm,:)=sv_p(:,d,t);
%     sNpt(tm,:)=sv_Li(:,d,t);
%     % plot((1:ni)*di,V)
%     % getframe;
%     tm=tm+1;
% end
% 
% 
% surf(linspace(di,ni*di,ni),linspace(dt,65e4*dt,tm-1),(Vtt),'edgecolor','none')
% axis([di ni*di dt 65e4*dt -1.2 1.2])
% view(0,90)
% ylabel('Time (s)')
% xlabel('Distance (m)')
% title('Potential Over time')
% colorbar;
% h = colorbar;
% ylabel(h,'Potential (V)')
% grid off
% 
% % a=1*6.4;
% % b=1*4.8;
% a=1*19.20;
% b=1*10.80;
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
% print(gcf, '-dpdf', '1DMemPotentialOverTime.pdf');



% d=1;
% tm=1;
% for t=10:10:6e4
%     if mod(t,20e3)==0
%         VBV=-VBV;
%     end
%     qq= -sv_n(:,d,t)+sv_p(:,d,t)+sv_Li(:,d,t);
%      Vtt(tm,:)=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(qq) ) )))));
%      Ett(tm,:)=-gradient(Vtt(tm,:),di);
%     spt(tm,:)=sv_p(:,d,t);
%     sNpt(tm,:)=sv_Li(:,d,t);
%     % plot((1:ni)*di,V)
%     % getframe;
%     tm=tm+1;
% end
% 
% 
% surf(linspace(di,ni*di,ni),linspace(dt,65e4*dt,tm-1),(Ett),'edgecolor','none')
% axis([di ni*di dt 65e4*dt -1.2e3 1.2e3])
% view(0,90)
% ylabel('Time (s)')
% xlabel('Distance (m)')
% title('Electric Field Over time')
% colorbar;
% h = colorbar;
% ylabel(h,'Electric Field (V/m)')
% grid off
% 
% % a=1*6.4;
% % b=1*4.8;
% a=1*19.20;
% b=1*10.80;
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
% print(gcf, '-dpdf', '1DMemEfieldOverTime.pdf');




d=1;
tm=1;
for t=10:10:6e4
    if mod(t,20e3)==0
        VBV=-VBV;
    end
    qq= -sv_n(:,d,t)+sv_p(:,d,t)+sv_Li(:,d,t);
     Vtt(tm,:)=Q*(U\(L\(P*((-VBV-di^2*(q/e0*(qq) ) )))));
    spt(tm,:)=sv_p(:,d,t);
    sNpt(tm,:)=sv_Li(:,d,t);

    tm=tm+1;
end

subplot(2,1,1);plot((1:ni)*di,V(ni:-1:1)+1)
ylabel('Potential (V)')
xlabel('Distance (m)')
subplot(2,1,2);plot((1:ni)*di,-gradient(V(ni:-1:1)+1,di))

ylabel('Electric Field (V/m)')
xlabel('Distance (m)')
axis([0 0.01 0 12e2])
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
print(gcf, '-dpdf', '1DMemPot_Efield_SS.pdf');
% print(gcf, '-dpdf', '1DMemEfieldSS.pdf');
