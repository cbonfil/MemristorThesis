close all
clear all

load('2dmem_train.mat')
V(pos,1)=-1;
V(pos,ni)=0;
subplot(2,1,1);plot(linspace(0,  0.0109,ni),V(pos,ni:-1:1)+1);
xlabel('Distance (m)')
ylabel('Potential (V)')
axis([0   0.0109 0 1])

E=-gradient(V(pos,ni:-1:1)+1,di);
subplot(2,1,2);plot(linspace(0,  0.0109,ni),E);
xlabel('Distance (m)')
ylabel('Electric Field (V/m)')
axis([0   0.0109 0 1500])

a=1.6*6.4;
b=1.6*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '2D_Memristor_Pulse_Train_EV.pdf');
