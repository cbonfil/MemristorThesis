close all
clear all


load('2dmem_f05.mat')

subplot(2,2,1);plot(Vt(5e3:t),I2(5e3:t)/I2(1e3-10))
xlabel('Potential (V)')
ylabel('Normalized Current')
title('f = 0.5 Hz')


load('2dmem_f5.mat')

subplot(2,2,2);plot(Vt(5e3:t),I2(5e3:t)/I2(1e3-10))
xlabel('Potential (V)')
ylabel('Normalized Current')
title('f = 5 Hz')

load('2dmem_f1e1.mat')

subplot(2,2,3);plot(Vt(5e3:t),I2(5e3:t)/I2(1e3-10))
xlabel('Potential (V)')
ylabel('Normalized Current')
title('f = 10 Hz')

load('2dmem_f1e2.mat')

subplot(2,2,4);plot(Vt(5e3:t),I2(5e3:t)/I2(1e3-10))
xlabel('Potential (V)')
ylabel('Normalized Current')
title('f = 100 Hz')

a=2*6.4;
b=2*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '2D_Memristor_bowtie_f.pdf');