close all
clear all

load('Ex1');
 
% for t=1
% %  plot(1:ni,log10(sv_n(:,1,t)/2),1:ni,log10(sv_n(:,2,t)/4),1:ni,log10(sv_n(:,3,t)/6),1:ni,log10(sv_n(:,4,t)/8))
%  
% % % plot(sv_p(:,1,t)*1)
% if t==8e2
%     VBV=-VBV;
% end
%  V1=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1) ) )))));
%  V2=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1) ) )))));
%   V3=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1) ) )))));
%   V4=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1) ) )))));
%    V5=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1) ) )))));
%    
%    E1=-gradient(V1,di);
%    E2=-gradient(V2,di);
%    E3=-gradient(V3,di);
%    E4=-gradient(V4,di);
%      E5=-gradient(V5,di);
%      
% %      plot((1:ni),E1,...
% %        (1:ni),E2,...
% %        (1:ni),E3,...
% %        (1:ni),E4,...
% %        (1:ni),E5)
% %    
% % plot([max(E1((round(ni/2)-25 ):( round(ni/2)+25)))...
% %     max(E2((round(ni/2)-25 ):( round(ni/2)+25)))...
% %     max(E3((round(ni/2)-25 ):( round(ni/2)+25)))...
% %     max(E4((round(ni/2)-25 ):( round(ni/2)+25)))...
% %     max(E5((round(ni/2)-25 ):( round(ni/2)+25)))])
% %    
% %   plot((1:ni+2),[-VBV(1) V1' -VBV(ni)],...
% %        (1:ni+2),[-VBV(1) V1' -VBV(ni)],...
% %        (1:ni+2),[-VBV(1) V1' -VBV(ni)],...
% %        (1:ni+2),[-VBV(1) V1' -VBV(ni)],...
% %        (1:ni+2),[-VBV(1) V1' -VBV(ni)])
% %    
% plot((1:ni+2)*di,[-VBV(1) V1' VBV(ni)],...
%        (1:ni+2)*di,[-VBV(1) V2' VBV(ni)],...
%        (1:ni+2)*di,[-VBV(1) V3' VBV(ni)],...
%        (1:ni+2)*di,[-VBV(1) V4' VBV(ni)],...
%         (1:ni+2)*di,[-VBV(1) V5' VBV(ni)])
%     ylabel('Potential (V)')
%     xlabel('Distance (m)')
%    axis([ -2*di (ni+8)*di 0 1])
% %  plot((1:ni),(((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1)
% %   axis([round(ni/2)-25 round(ni/2)+25 -1.1e16 1.1e16])
% %    axis([ni-20 ni -2.2e17 2.2e17])
% legend('2e15','4e15','6e15','8e15','10e15')
% getframe;
% % pause;
% end

% f=1;
% %POTENTIAL PLOT BEGIN
% for t=[1 15 50 75 100 150 200 300 700 ]
% 
%  V1=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1) ) )))));
%  V2=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1) ) )))));
%   V3=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1) ) )))));
%   V4=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1) ) )))));
%    V5=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1) ) )))));
%       
%    x=linspace(0,1e-2,ni+2);
%    xp=linspace(0,1e-2,1e4);
%    Vp1=interp1(x',[-VBV(1) V1' VBV(ni)],xp','pchip');
%    Vp2=interp1(x',[-VBV(1) V2' VBV(ni)],xp','pchip');
%    Vp3=interp1(x',[-VBV(1) V3' VBV(ni)],xp','pchip');
%    Vp4=interp1(x',[-VBV(1) V4' VBV(ni)],xp','pchip');
%    Vp5=interp1(x',[-VBV(1) V5' VBV(ni)],xp','pchip');
%    
%  
%   l=max(size(Vp1));
% 
%  subplot(3,3,f);   plot(xp,Vp1,xp,Vp2,xp,Vp3,xp,Vp4,xp,Vp5)
%       ylabel('Potential (V)')
%     xlabel('Distance (m)')
% axis([0 (50)*di 0.4 1])
% f=f+1; 
%  legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3')
% 
% end
% 
% a=3*6.4;
% b=3*4.8;
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
% print(gcf, '-dpdf', 'Ex1V_time2.pdf');

%POTENTIAL PLOT END



%  f=1;
% for t=[1 15 50 75 100 150 200 300 700 ]
% %  plot(1:ni,log10(sv_n(:,1,t)/2),1:ni,log10(sv_n(:,2,t)/4),1:ni,log10(sv_n(:,3,t)/6),1:ni,log10(sv_n(:,4,t)/8))
%  
% % % plot(sv_p(:,1,t)*1)
% if t==8e2
%     VBV=-VBV;
% end
%  V1=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1) ) )))));
%  V2=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1) ) )))));
%   V3=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1) ) )))));
%   V4=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1) ) )))));
%    V5=Q*(U\(L\(P*((VBV-di^2*(q/e0*((((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1) ) )))));
   
      
   
% subplot(3,3,f);plot((1:ni+2)*di,[-VBV(1) V1' VBV(ni)],...
%        (1:ni+2)*di,[-VBV(1) V2' VBV(ni)],...
%        (1:ni+2)*di,[-VBV(1) V3' VBV(ni)],...
%        (1:ni+2)*di,[-VBV(1) V4' VBV(ni)],...
%         (1:ni+2)*di,[-VBV(1) V5' VBV(ni)])
%  title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Potential (V)')
%     xlabel('Distance (m)')
%    axis([ -2*di (ni+8)*di 0 1])
% %  plot((1:ni),(((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1,...
% %        (1:ni),(((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1)
% %   axis([round(ni/2)-25 round(ni/2)+25 -1.1e16 1.1e16])
% %    axis([ni-20 ni -2.2e17 2.2e17])
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3')
% f=f+1;
% getframe;
% % pause;
% end
% 
% a=3*6.4;
% b=3*4.8;
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
% print(gcf, '-dpdf', 'Ex1V_Time.pdf');



%  f=1;
% for t=[1 15 50 75 100 150 200 300 700 ]
% 
%    
%        rh1=(((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1;
%    rh2=(((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1;
%    rh3=(((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1;
%    rh4=(((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1;
%    rh5=(((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1;
%    
%    
%    x=linspace(0,1e-2,ni);
%    xp=linspace(0,1e-2,1e4);
%    
%      rh1=interp1(x',rh1,xp','pchip');
%      rh2=interp1(x',rh2,xp','pchip');
%      rh3=interp1(x',rh3,xp','pchip');
%      rh4=interp1(x',rh4,xp','pchip');
%      rh5=interp1(x',rh5,xp','pchip');
%      
% subplot(3,3,f);
% plot(xp,rh1,xp,rh2,xp,rh3,xp,rh4,xp,rh5)
%    axis([(ni-4)*di (ni)*di -1e16 2.2e17]) 
% 
% subplot(3,3,f);  plot((1:ni)*di,(((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1,...
%        (1:ni)*di,(((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1,...
%        (1:ni)*di,(((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1,...
%        (1:ni)*di,(((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1,...
%        (1:ni)*di,(((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1);
%   axis([round(ni/2)-25 round(ni/2)+25 -1.1e16 5e16])
%    axis([(ni-4)*di (ni)*di -1e16 2.2e17])
%    
%        title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','northwest')
% f=f+1;
% getframe;
% 
% end
% 
% a=3*6.4;
% b=3*4.8;
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
% print(gcf, '-dpdf', 'Ex1NetQ_Time.pdf');


 f=1;
for t=799

   
      
   

  plot((1:ni)*di,(((sv_p(:,1,t)*1-sv_n(:,1,t)*1)))/1,...
       (1:ni)*di,(((sv_p(:,2,t)*1-sv_n(:,2,t)*1)))/1,...
       (1:ni)*di,(((sv_p(:,3,t)*1-sv_n(:,3,t)*1)))/1,...
       (1:ni)*di,(((sv_p(:,4,t)*1-sv_n(:,4,t)*1)))/1,...
       (1:ni)*di,(((sv_p(:,5,t)*1-sv_n(:,5,t)*1)))/1);
%   axis([round(ni/2)-25 round(ni/2)+25 -1.1e16 5e16])
   axis([-(5)*di (ni+5)*di -2.4e17 2.4e17])
   
       title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
    ylabel('Carrier Density (1/m^3)')
    xlabel('Distance (m)')
legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','northwest')
f=f+1;
getframe;

end

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
print(gcf, '-dpdf', 'Ex1NetQ_Time_All.pdf');

