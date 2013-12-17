close all
clear all

load('2dmem_train.mat')

Vt=[ones(280e3,1); -1*ones(280e3,1); 1*ones(280e3,1); -1*ones(160e3,1) ];

subplot(2,1,2);plot(time(1:t),abs(I1(1e3)./I1(1:t)),time(1:t),abs(I2(1e3)./I2(1:t)))
legend('Right Metal Contact','Left Metal Contact','location','southwest');
xlabel('Time (s)')
ylabel('Normalized Resistance')
axis([0 7.2 0 6])

subplot(2,1,1);plot(time(1:t),Vt(1:t));
xlabel('Time (s)')
ylabel('Applied Potentoal (V)');
axis([0 7.2 -1.2 1.2])

a=1.6*6.4;
b=1.6*4.8;
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
% print(gcf, '-dpdf', '2D_Memristor_Pulse_Train.pdf');
