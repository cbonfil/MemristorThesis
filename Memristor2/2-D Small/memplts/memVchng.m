close all
clear all

hold all
load('2dmem_V01')
plot(time(1:t),I1(1e3-10)./I1)
% plot(1:ni,p(pos,:),1:ni,Np(pos,:))
load('2dmem_V05')
plot(time(1:t),I1(1e3-10)./I1)
load('2dmem_V10')
plot(time(1:t),I1(1e3-10)./I1)
load('2dmem_V20')
plot(time(1:t),I1(1e3-10)./I1)

xlabel('Time (s)')
ylabel('Normalized Resistivitiy')
legend('V = 0.1 V','V = 0.5 V','V = 1 V','V = 2 V','location','northwest')
axis([0 0.5 0 11])


a=1.5*6.4;
b=1.5*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '2D_Memristor_V_chng.pdf');