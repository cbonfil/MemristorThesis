close all
% clear all

% load('Bowtie_f5')
% t11=74e3;
% t12=81e3;
% t21=t11+50e3;
% t22=t12+50e3;
% t31=t21+80e3;
% t32=t22+80e3;

m=1;
for tt=1:1:35e3
    
   res(:,m)= sv_p(:,1,tt);
   m=m+1;
end
% plot(Vt(t11:t12),I2(t11:t12)/I2(100),Vt(t21:t22)...
%     ,I2(t21:t22)/I2(100),Vt(t31:t32),I2(t31:t32)/I2(100))
% legend(['Time =' ' ' num2str(t11*dt) ' s to ' num2str(t12*dt) ' s']...
%     ,['Time =' ' ' num2str(t21*dt) ' s to ' num2str(t22*dt) ' s'],...
%     ['Time =' ' ' num2str(t31*dt) ' s to ' num2str(t32*dt) ' s'],'location','northwest')
% title('f = 100 Hz')
% xlabel('Potential (V)')
% ylabel('Normalized Current')

surf((1:m-1)*dt*35e3/65e3,(1:ni)*di,1e15./res,'edgecolor','none')
axis([1*dt*35e3/65e3 (m-1)*dt*35e3/65e3 di ni*di 1 65])
view(0,90)
grid off
colorbar
h = colorbar;
ylabel(h,'Normalized Resistivity')
xlabel('Time (s)')
ylabel('Distance (m)')
a=0.5*19.20;
b=0.5*10.80;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '1DMemACResistivity.pdf');
