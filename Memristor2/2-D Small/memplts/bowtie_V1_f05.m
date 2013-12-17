close all
clear all

% hold all
% load('2dmem_mup_r1.mat')
% plot(time(1:t),I1(1e3-10)./I1)
% load('2dmem_mup_r2.mat')
% plot(time(1:t),I1(1e3-10)./I1)
% load('2dmem_mup_r5.mat')
% plot(time(1:t),I1(1e3-10)./I1)
% load('2dmem_mup_r10.mat')
% plot(time(1:t),I1(1e3-10)./I1)

hold all

load('2dmem_f05_V01.mat')

plot(0.1*Vt(100e3:t),di/dt*q*I2(100e3:t))
%     plot(0.1*Vt(100e3:t),I1(100e3:t)/I1(1e3-10))

load('2dmem_f05_V02.mat')

plot(0.2*Vt(100e3:t),di/dt*q*I2(100e3:t))
%     plot(0.1*Vt(100e3:t),I1(100e3:t)/I1(1e3-10))

load('2dmem_f05_V05.mat')

plot(0.5*Vt(100e3:t),di/dt*q*I2(100e3:t))
%   plot(0.5*Vt(100e3:t),I1(100e3:t)/I1(1e3-10))

load('2dmem_f05_V07.mat')

plot(0.7*Vt(100e3:t),di/dt*q*I2(100e3:t))
%     plot(0.1*Vt(100e3:t),I1(100e3:t)/I1(1e3-10))

load('2dmem_f05.mat')

plot(Vt(100e3:t),di/dt*q*I2(100e3:t))

%       load('2dmem_f05_V15.mat')

%   plot(1.5*Vt(100e3:t),di/dt*q*I2(100e3:t))

legend('V = 0.1 V','V = 0.2 V','V = 0.5 V','V = 0.7 V','V = 1 V','location','northwest')
xlabel('Potential at 0.5 Hz (V)')
ylabel('Current Density (A/m^2)')


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
print(gcf, '-dpdf', '2D_Memristor_5e-1Hz.pdf');