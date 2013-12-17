load('2dmem_train.mat')


for tt=1:1e4
    
    sPplt(:,tt)=sp(pos,20,1)./(sp(pos,:,tt));
    
end

surf(linspace(0,t*dt,t/1e2),linspace(0,0.0109,ni), sPplt,'edgecolor','none')
caxis([0 40])
colorbar;
h = colorbar;
ylabel(h,'Normalized Resistivity')
grid off
axis([0 t*dt 0 0.0109 0 40])
view(0,90)
xlabel('Time (s)')
ylabel('Distance (m)')


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

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '2D_Memristor_Resistivity.pdf');