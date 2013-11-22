close all
clear all

load('Ex41');
%  vidobj=VideoWriter('Ex4_Lithium.avi');
% open(vidobj);
% for t=1:10:3e3
% 
%     
%    rh1=(sv_Np(:,1,t)-1*sv_Nn(:,1,t)+1*sv_p(:,1,t));
%    rh2=(sv_Np(:,2,t)-1*sv_Nn(:,2,t)+1*sv_p(:,2,t))/2;
%    rh3=(sv_Np(:,3,t)-1*sv_Nn(:,3,t)+1*sv_p(:,3,t))/3;
%    rh4=(sv_Np(:,4,t)-1*sv_Nn(:,4,t)+1*sv_p(:,4,t))/4;
%    rh5=(sv_Np(:,5,t)-1*sv_Nn(:,5,t)+1*sv_p(:,5,t))/5;
% 
%    plot(1:ni,rh1,1:ni,rh2,1:ni,rh3,1:ni,rh4,1:ni,rh5)
% %    axis([1 ni 0 11e14])
% %    legend('2e15','4e15','6e15','8e15','10e15')
% 
%    curr=getframe(gcf);
% %     writeVideo(vidobj,curr);
% 
% % pause;
% end


%  f=1;
% for t=[1 10 20 50 100 200 300 420 1500 ]
% 
%      subplot(3,3,f);  rh1=(sv_Np(:,1,t)-0*sv_Nn(:,1,t)+0*sv_p(:,1,t));
%    rh2=(sv_Np(:,2,t)-0*sv_Nn(:,2,t)+0*sv_p(:,2,t))/2;
%    rh3=(sv_Np(:,3,t)-0*sv_Nn(:,3,t)+0*sv_p(:,3,t))/3;
%    rh4=(sv_Np(:,4,t)-0*sv_Nn(:,4,t)+0*sv_p(:,4,t))/4;
%    rh5=(sv_Np(:,5,t)-0*sv_Nn(:,5,t)+0*sv_p(:,5,t))/5;
%      
% plot((1:ni)*di,rh1/1,...
%        (1:ni)*di,rh2/1,...
%        (1:ni)*di,rh3/1,...
%        (1:ni)*di,rh4/1,...
%        (1:ni)*di,rh5/1)
% 
%    axis([(1)*di (ni)*di -1e14 2.1e15])
%    
%        title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','northeast')
% f=f+1;
% getframe;
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
% print(gcf, '-dpdf', 'Ex4Np_Time.pdf');




%     f=1;
% for t=[1 10 20 50 100 200 300 420 1500 ]
% 
%      subplot(3,3,f);  rh1=(0*sv_Np(:,1,t)-0*sv_Nn(:,1,t)+1*sv_p(:,1,t));
%    rh2=(0*sv_Np(:,2,t)-0*sv_Nn(:,2,t)+1*sv_p(:,2,t))/2;
%    rh3=(0*sv_Np(:,3,t)-0*sv_Nn(:,3,t)+1*sv_p(:,3,t))/3;
%    rh4=(0*sv_Np(:,4,t)-0*sv_Nn(:,4,t)+1*sv_p(:,4,t))/4;
%    rh5=(0*sv_Np(:,5,t)-0*sv_Nn(:,5,t)+1*sv_p(:,5,t))/5;
%      
% plot((1:ni)*di,rh1/1,...
%        (1:ni)*di,rh2/1,...
%        (1:ni)*di,rh3/1,...
%        (1:ni)*di,rh4/1,...
%        (1:ni)*di,rh5/1)
% 
%    axis([(1)*di (ni)*di -1e13 2.1e14])
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
% print(gcf, '-dpdf', 'Ex4p_Time.pdf');


%     f=1;
% for t=[1 10 20 50 100 200 300 420 1500 ]
% 
%    rh1=(0*sv_Np(:,1,t)-0*sv_Nn(:,1,t)+1*sv_p(:,1,t));
%    rh2=(0*sv_Np(:,2,t)-0*sv_Nn(:,2,t)+1*sv_p(:,2,t))/2;
%    rh3=(0*sv_Np(:,3,t)-0*sv_Nn(:,3,t)+1*sv_p(:,3,t))/3;
%    rh4=(0*sv_Np(:,4,t)-0*sv_Nn(:,4,t)+1*sv_p(:,4,t))/4;
%    rh5=(0*sv_Np(:,5,t)-0*sv_Nn(:,5,t)+1*sv_p(:,5,t))/5;
%      
%     rh6=(1*sv_Np(:,1,t)-0*sv_Nn(:,1,t)+0*sv_p(:,1,t));
%    rh7=(1*sv_Np(:,2,t)-0*sv_Nn(:,2,t)+0*sv_p(:,2,t))/2;
%    rh8=(1*sv_Np(:,3,t)-0*sv_Nn(:,3,t)+0*sv_p(:,3,t))/3;
%    rh9=(1*sv_Np(:,4,t)-0*sv_Nn(:,4,t)+0*sv_p(:,4,t))/4;
%    rh10=(1*sv_Np(:,5,t)-0*sv_Nn(:,5,t)+0*sv_p(:,5,t))/5;
%    
%    subplot(3,3,f); plot((1:ni)*di,rh5/1,...
%        (1:ni)*di,rh10/1)
% 
%    axis([(ni/2-10)*di (ni)*di -1e13 4.1e14])
%    
%        title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','Np=2e16 1/m^3','LOCATION','north')
% f=f+1;
% getframe;
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
% print(gcf, '-dpdf', 'Ex4pNp_Time.pdf');

VBV=-VBV;
    f=1;
for t=[1 10 20 50 100 200 300 420 1500 ]

   rh1=(1*sv_Np(:,1,t)-1*sv_Nn(:,1,t)+1*sv_p(:,1,t))-2*n/10;
   rh2=(1*sv_Np(:,2,t)-1*sv_Nn(:,2,t)+1*sv_p(:,2,t))/1 -4*n/10;
   rh3=(1*sv_Np(:,3,t)-1*sv_Nn(:,3,t)+1*sv_p(:,3,t))/1 -6*n/10;
   rh4=(1*sv_Np(:,4,t)-1*sv_Nn(:,4,t)+1*sv_p(:,4,t))/1 -8*n/10;
   rh5=(1*sv_Np(:,5,t)-1*sv_Nn(:,5,t)+1*sv_p(:,5,t))/1 -10*n/10;
     
  V1=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh1) ) )))));
  V2=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh2/1) ) )))));
  V3=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh3/1) ) )))));
  V4=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh4/1) ) )))));
  V5=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh5/1) ) )))));

subplot(3,3,f); plot((1:ni)*di,V1,...
       (1:ni)*di,V2,...
       (1:ni)*di,V3,...
       (1:ni)*di,V4,...
        (1:ni)*di,V5)

   axis([(1)*di (ni)*di -0.05 1.1])
   
       title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
    ylabel('Potential (V)')
    xlabel('Distance (m)')
legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','Southwest')
f=f+1;
getframe;

end

a=3*6.4;
b=3*4.8;
% 
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'Ex4V_Time.pdf');
%    