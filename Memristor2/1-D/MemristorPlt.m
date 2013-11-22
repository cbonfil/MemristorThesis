close all
clear all

load('Ex51');


% for t=1:2:1200
%
%
%     ns=0;
%     ps=1;
%     Ls=0;
%
%     rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/2;
%     rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/3;
%     rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/4;
%     rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/5;
%       plot(1:ni,rh1,1:ni,rh2,1:ni,rh3,1:ni,rh4,1:ni,rh5)
%
%
%
%
%     pL1(t)=sv_pL(1,1,t);
%     pR1(t)=sv_pR(1,1,t);
%     pL2(t)=sv_pL(1,2,t);
%     pR2(t)=sv_pR(1,2,t);
%     pL3(t)=sv_pL(1,3,t);
%     pR3(t)=sv_pR(1,3,t);
%     pL4(t)=sv_pL(1,4,t);
%     pR4(t)=sv_pR(1,4,t);
%     pL5(t)=sv_pL(1,5,t);
%     pR5(t)=sv_pR(1,5,t);
%
%     r1=(abs(1./pL1)+abs(1./pR1))/(abs(1./pL1(1))+abs(1./pR1(1)));
%     r2=(abs(1./pL2)+abs(1./pR2))/(abs(1./pL2(1))+abs(1./pR2(1)));
%     r3=(abs(1./pL3)+abs(1./pR3))/(abs(1./pL3(1))+abs(1./pR3(1)));
%     r4=(abs(1./pL4)+abs(1./pR4))/(abs(1./pL4(1))+abs(1./pR4(1)));
%     r5=(abs(1./pL5)+abs(1./pR5))/(abs(1./pL5(1))+abs(1./pR5(1)));
% %     plot(1:t,r1,1:t,r2,1:t,r3,1:t,r4,1:t,r5)
% %        legend('2e15','4e15','6e15','8e15','10e15')
% % plot(sin((1:t)/1e2),pR5)
%
%     curr=getframe(gcf);
%
% end

% f=1;
%  for t=[601 603 607 615 625 630 650 675 750]
% % for t=[1 12 16 20 25 30 35 50 200]
% 
%    ns=1;
%     ps=1;
%     Ls=1;
%   if t==601
% 
%       VBV=-VBV;
%   end
%     rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/1;
%     rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/1;
%     rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/1;
%     rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/1;
% %       plot(1:ni,rh1,1:ni,rh2,1:ni,rh3,1:ni,rh4,1:ni,rh5)
% 
% 
%   V1=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh1) ) )))));
%   V2=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh2/1) ) )))));
%   V3=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh3/1) ) )))));
%   V4=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh4/1) ) )))));
%   V5=Q*(U\(L\(P*((VBV-di^2*(q/e0*(rh5/1) ) )))));
% 
% subplot(3,3,f); plot((1:ni)*di,V1,...
%        (1:ni)*di,V2,...
%        (1:ni)*di,V3,...
%        (1:ni)*di,V4,...
%         (1:ni)*di,V5)
% 
%    axis([(1)*di (ni)*di 0 1.1])
%        title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Potential (V)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','Northeast')
% 
% f=f+1;
% % getframe;
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
% print(gcf, '-dpdf', 'Ex5V_Time2.pdf');
% 

% f=1;
% for t=[1 12 16 20 25 30 35 50 200]
%     % for t=[601 603 607 615 625 630 650 675 750]
%     
%     ns=0;
%     ps=0;
%     Ls=1;
%     
%     rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/1;
%     rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/1;
%     rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/1;
%     rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/1;
%     
%     ns=0;
%     ps=1;
%     Ls=0;
%     
%     rh6=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh7=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/1;
%     rh8=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/1;
%     rh9=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/1;
%     rh10=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/1;
%     
%     subplot(3,3,f); plot((1:ni)*di,rh5/1,...
%         (1:ni)*di,rh10/1)
%     
%     %    axis([(ni/2-10)*di (ni)*di -1e13 4.1e14])
%     
%     title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
%     legend('Lithium','Holes','LOCATION','north')
%     f=f+1;
%     getframe;
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
% print(gcf, '-dpdf', 'Ex5pNp_Time1.pdf');


% f=1;
% % for t=[1 12 16 20 25 30 35 50 200]
%     for t=[601 603 607 615 625 630 650 675 750]
%     
%     ns=0;
%     ps=1;
%     Ls=0;
%     
%     rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/2;
%     rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/3;
%     rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/4;
%     rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/5;
%     
% 
%  
%     subplot(3,3,f); plot((1:ni)*di,rh1/1,...
%        (1:ni)*di,rh2/1,...
%        (1:ni)*di,rh3/1,...
%        (1:ni)*di,rh4/1,...
%        (1:ni)*di,rh5/1)
%     
%     %    axis([(ni/2-10)*di (ni)*di -1e13 4.1e14])
%     
%     title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','south')
%     f=f+1;
%     getframe;
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
% print(gcf, '-dpdf', 'Ex5p_Time2.pdf');

% f=1;
% % for t=[1 12 16 20 25 30 35 50 200]
% for t=[601 603 607 615 625 630 650 675 750]
%     
%     ns=0;
%     ps=0;
%     Ls=1;
%     
%     rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/2;
%     rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/3;
%     rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/4;
%     rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/5;
%     
% 
%  
%     subplot(3,3,f); plot((1:ni)*di,rh1/1,...
%        (1:ni)*di,rh2/1,...
%        (1:ni)*di,rh3/1,...
%        (1:ni)*di,rh4/1,...
%        (1:ni)*di,rh5/1)
%     
%     %    axis([(ni/2-10)*di (ni)*di -1e13 4.1e14])
%     
%     title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','north')
%     f=f+1;
%     getframe;
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
% print(gcf, '-dpdf', 'Ex5Np_Time2.pdf');


% f=1;
% % for t=[1 12 16 20 25 30 35 50 200]
% for t=[601 603 607 615 625 630 650 675 750]
%     
%     ns=1;
%     ps=1;
%     Ls=1;
%     
%     rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
%     rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/2;
%     rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/3;
%     rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/4;
%     rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/5;
%     
% 
%  
%     subplot(3,3,f); plot((1:ni)*di,rh1/1,...
%        (1:ni)*di,rh2/1,...
%        (1:ni)*di,rh3/1,...
%        (1:ni)*di,rh4/1,...
%        (1:ni)*di,rh5/1)
%     
%        axis([(1)*di ni*di -16e14 10e14])
%     
%     title(['Time: ' num2str(round(1e5*t*dt)) ' ms'])
%     ylabel('Carrier Density (1/m^3)')
%     xlabel('Distance (m)')
% legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','south')
%     f=f+1;
%     getframe;
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
% print(gcf, '-dpdf', 'Ex5NetQ_Time2.pdf');


for t=1:1:1200


    ns=0;
    ps=0;
    Ls=1;

    rh1=(Ls*sv_Li(:,1,t)-ns*sv_n(:,1,t)+ps*sv_p(:,1,t));
    rh2=(Ls*sv_Li(:,2,t)-ns*sv_n(:,2,t)+ps*sv_p(:,2,t))/2;
    rh3=(Ls*sv_Li(:,3,t)-ns*sv_n(:,3,t)+ps*sv_p(:,3,t))/3;
    rh4=(Ls*sv_Li(:,4,t)-ns*sv_n(:,4,t)+ps*sv_p(:,4,t))/4;
    rh5=(Ls*sv_Li(:,5,t)-ns*sv_n(:,5,t)+ps*sv_p(:,5,t))/5;
      plot(1:ni,rh1,1:ni,rh2,1:ni,rh3,1:ni,rh4,1:ni,rh5)




    pL1(t)=sv_pL(1,1,t);
    pR1(t)=sv_pR(1,1,t);
    pL2(t)=sv_pL(1,2,t);
    pR2(t)=sv_pR(1,2,t);
    pL3(t)=sv_pL(1,3,t);
    pR3(t)=sv_pR(1,3,t);
    pL4(t)=sv_pL(1,4,t);
    pR4(t)=sv_pR(1,4,t);
    pL5(t)=sv_pL(1,5,t);
    pR5(t)=sv_pR(1,5,t);

%     r1=(abs(1./pL1)+abs(1./pR1))/(abs(1./pL1(1))+abs(1./pR1(1)));
%     r2=(abs(1./pL2)+abs(1./pR2))/(abs(1./pL2(1))+abs(1./pR2(1)));
%     r3=(abs(1./pL3)+abs(1./pR3))/(abs(1./pL3(1))+abs(1./pR3(1)));
%     r4=(abs(1./pL4)+abs(1./pR4))/(abs(1./pL4(1))+abs(1./pR4(1)));
%     r5=(abs(1./pL5)+abs(1./pR5))/(abs(1./pL5(1))+abs(1./pR5(1)));
%     plot(1:t,r1,1:t,r2,1:t,r3,1:t,r4,1:t,r5)
    
plot((1:t)*dt,(pR1)/(pR1(1)),(1:t)*dt,(pR2)/(pR2(1)),(1:t)*dt,(pR3)/(pR3(1)),(1:t)*dt,(pR4)/(pR4(1)),(1:t)*dt,(pR5)/(pR5(1)))
 
 % plot((1:t)*dt,abs((pR1)/(pR1(1))),(1:t)*dt,abs((pR2)/(pR2(1))),(1:t)*dt,abs((pR3)/(pR3(1))),(1:t)*dt,abs((pR4)/(pR4(1))),(1:t)*dt,abs((pR5)/(pR5(1))))
% plot(sin((1:t)/1e2),(pR1)/(pR1(1)),sin((1:t)/1e2),(pR2)/(pR2(1)),sin((1:t)/1e2),(pR5)/(pR5(1)))
xlabel('Time (s)')
ylabel('Normalized Current')
    curr=getframe(gcf);

end
 legend('n=2e15 1/m^3','n=4e15 1/m^3','n=6e15 1/m^3','n=8e15 1/m^3','n=10e15 1/m^3','LOCATION','northeast')


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
print(gcf, '-dpdf', 'Ex5Current.pdf');