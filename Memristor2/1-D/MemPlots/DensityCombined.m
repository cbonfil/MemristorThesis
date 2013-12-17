close all
clear all
load('density.mat')

for d=1:1:20
  
 I1d(d,:)=sv_pL(:,d,1:2.6e3)/d;
 I2d(d,:)=sv_pR(:,d,1:2.6e3)/d;


end
I2d=q*dt/di*I2d;


for d=2:20
    
   diffI1d_current(d)= 100*mean(abs( (I1d(d,:)-I1d(1,:))./-I1d(1,:) ));
   diffI2d_current(d)= 100*mean(abs( (I2d(d,:)-I2d(1,:))./-I2d(1,:) )); 
end




clear I1d
clear I2d
for d=1:1:20
  
 I1d(:,d)=sv_p(:,d,2.6e3)/d;
 I2d(:,d)=sv_p(:,d,2.6e3)/d;


end


for d=2:20
    
   diffI1d_hole(d)= 100*mean(abs( (I1d(124:876,d)-I1d(124:876,1))./-I1d(124:876,1) ));
   diffI2d_hole(d)= 100*mean(abs( (I2d(124:876,d)-I2d(124:876,1))./-I2d(124:876,1) )); 
end
% 




clear I1d
clear I2d
for d=1:1:20
  
 I1d(:,d)=sv_Li(:,d,2.6e3)/d;
 I2d(:,d)=sv_Li(:,d,2.6e3)/d;


end
% I2d=I2d;


for d=2:20
    
   diffI1d_lithium(d)= 100*mean(abs( (I1d(124:876,d)-I1d(124:876,1))./-I1d(124:876,1) ));
   diffI2d_lithium(d)= 100*mean(abs( (I2d(124:876,d)-I2d(124:876,1))./-I2d(124:876,1) )); 
end
% 
plot((1:20)*5e15,diffI2d_hole,(1:20)*10e15,diffI2d_lithium,(1:20)*5e15,diffI2d_current)
legend('Hole','Lithium','Current Density','location','east')
 ylabel('Average Percent Difference') 
 xlabel('Initial Lithium/Hole Density (1/m^3)')
 axis([0 1e17 0 17])
 a=1.3*6.4;
b=1.3*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'AllDiff.pdf');