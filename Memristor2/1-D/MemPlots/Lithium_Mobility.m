clear all
close all

hold all
load('Rect_mu_div_1e1')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_mu_div_2e1')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_mu_div_5e1')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_mu_div_2e2')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_mu_div_5e2')
plot((1:t)*dt,1./(I2/I2(1)))

load('Rect_mu_div_1e3')
plot((1:t)*dt,1./(I2/I2(1)))

% title('Hole Mobility Scaling')
ylabel('Normalized Resistivity')
xlabel('Time (s)')
legend('r=10','r=20','r=50','r=200','r=500','r=1000','location','southeast')
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
print(gcf, '-dpdf', 'LithiumMobility.pdf');