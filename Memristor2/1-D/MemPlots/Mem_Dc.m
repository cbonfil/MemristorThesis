close all
clear all

load('Rect_DC')
subplot(2,1,1);plot((1:t)*dt,Vt)
ylabel('Applied Potential (V)')
xlabel('Time (s)')
axis([0 12.2 -1.1 1.1])
subplot(2,1,2);plot((1:t)*dt,abs(1./(I1/I1(2))),(1:t)*dt,abs(1./(I2/I2(2))))
legend('Left Metal Contact','Right Metal Contact','location','north')
axis([0 12.2 0 3.1])
ylabel('Normalized Resistivity')
xlabel('Time (s)')

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
print(gcf, '-dpdf', '1DMemPulseTrain.pdf');