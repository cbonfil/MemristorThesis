close all
clear all


load('2dmem_thick6.mat')


for tt=1:t/200
    sp2(:,tt)=(sp(pos,:,tt));
    sNn2(:,tt)=(sNp(pos-1,:,tt))-(sNn(pos-1,:,tt));
        time2(tt)=time(200*tt);
end


subplot(3,1,1);
plot(linspace(0,99*1.1e-4,99),q*sp2(:,2e3),linspace(0,99*1.1e-4,99),q*sNn2(:,2e3))
axis([0 99*1.1e-4 -q*5.5e15 q*5.5e15])
legend('Hole Charge Density (1/m^3)','Net Charge Density (1/m^3)')
title('Thickness = 6.6e-4 m')
load('2dmem_thick4.mat')


for tt=1:t/200
    sp2(:,tt)=(sp(pos,:,tt));
    sNn2(:,tt)=(sNp(pos-1,:,tt))-(sNn(pos-1,:,tt));
        time2(tt)=time(200*tt);
end

subplot(3,1,2);
plot(linspace(0,99*1.1e-4,99),q*sp2(:,2e3),linspace(0,99*1.1e-4,99),q*sNn2(:,2e3))
axis([0 99*1.1e-4 -q*5.5e15 q*5.5e15])
legend('Hole Charge Density (1/m^3)','Net Charge Density (1/m^3)')
title('Thickness = 4.4e-4 m')

load('2dmem_thick1.mat')


for tt=1:t/200
    sp2(:,tt)=(sp(pos,:,tt));
    sNn2(:,tt)=(sNp(pos-1,:,tt))-(sNn(pos-1,:,tt));
        time2(tt)=time(200*tt);
end

subplot(3,1,3);
plot(linspace(0,99*1.1e-4,99),q*sp2(:,2e3),linspace(0,99*1.1e-4,99),q*sNn2(:,2e3))
axis([0 99*1.1e-4 -q*5.5e15 q*5.5e15])
legend('Hole Charge Density (1/m^3)','Net Charge Density (1/m^3)')
title('Thickness = 0 m')


a=2.2*6.4;
b=2.2*4.8;

set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '2D_Memristor_netq_hole.pdf');
