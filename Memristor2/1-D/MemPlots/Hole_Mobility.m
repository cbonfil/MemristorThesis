clear all
close all

hold all
load('Rect_V1_r2_mu')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_V1_r5_mu')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_V1_r10_mu')
plot((1:t)*dt,1./(I2/I2(1)))

% title('Hole Mobility Scaling')
ylabel('Normalized Resistivity')
xlabel('Time (s)')
legend('r=2','r=5','r=10','location','southeast')
a=1*6.4;
b=1*4.8;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'HoleMobility.pdf');