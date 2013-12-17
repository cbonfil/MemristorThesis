close all
clear all


load('2dmem_f05.mat')

subplot(4,1,1);plot(time(1e3:t),I2(1e3:t)/I2(1e3-10))
axis([0 4 -1.1 1.1])
xlabel('Time (s)')
ylabel('Normalized Current')
legend('f = 0.5 Hz')


load('2dmem_f5.mat')

subplot(4,1,2);plot(time(1e3:t),I2(1e3:t)/I2(1e3-10))
axis([0 4 -1.5 1.5])
xlabel('Time (s)')
ylabel('Normalized Current')
legend('f = 5 Hz')

load('2dmem_f1e1.mat')

subplot(4,1,3);plot(time(1e3:t),I2(1e3:t)/I2(1e3-10))
axis([0 4 -1.5 1.5])
xlabel('Time (s)')
ylabel('Normalized Current')
legend('f = 10 Hz')

load('2dmem_f1e2.mat')

subplot(4,1,4);plot(time(1e3:t),I2(1e3:t)/I2(1e3-10))
axis([0 4 -2 2])
xlabel('Time (s)')
ylabel('Normalized Current')
legend('f = 100 Hz')

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
print(gcf, '-dpdf', '2D_Memristor_Current_f.pdf');
