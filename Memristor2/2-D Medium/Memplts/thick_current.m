close all
clear all

hold all
load('2dmem_thick1.mat')

plot(time(1:t),I1(1e3-10)./I1)

% 
% load('2dmem_thick2.mat')
% 
% plot(I1(1e3-10)./I1)
% 
% 
% load('2dmem_thick3.mat')
% 
% plot(I1(1e3-10)./I1)


load('2dmem_thick4.mat')


plot(time(1:t),I1(1e3-10)./I1)

% load('2dmem_thick5.mat')
% 
% plot(I1(1e3-10)./I1)

load('2dmem_thick6.mat')

plot(time(1:t),I1(1e3-10)./I1)
legend('thickness = 0 m','thickness = 4.4e-4 m','thickness = 6.6e-4 m')
axis([0 4 0 6])
ylabel('Normalized Resistivity')
xlabel('Time')

a=1.6*6.4;
b=1.6*4.8;

set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '2D_Memristor_Thick_Resistivity.pdf');