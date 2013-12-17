load('2dmem_train.mat')

surf(linspace(0,0.0109, 785),linspace(0,0.0109,785),interp2(V+1,3),'edgecolor','none')
view(180,90);
grid off
axis([0 0.0109 0 0.0109 0 1])
h = colorbar;
ylabel(h,'Potential (V)')
xlabel('Distance (m)')
ylabel('Distance (m)')
% axis off
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

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '2D_Memristor_Pulse_Train_2DV.pdf');

[Ei,Ej]=gradient(V+1,di);
% quiver(linspace(0,0.0109,ni),linspace(0,0.0109,ni),Ei,Ej,2)
surf(linspace(0,0.0109, 785),linspace(0,0.0109,785),interp2(sqrt(Ei.^2+Ej.^2),3),'edgecolor','none')
axis([0 0.0109 0 0.0109 0 2300])
view(180,90);
grid off
xlabel('Distance (m)')
ylabel('Distance (m)')
h = colorbar;
ylabel(h,'Electric Field Strength (V/m)')


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

set(gcf, 'renderer', 'zbuffer');
print(gcf, '-dpdf', '2D_Memristor_Pulse_Train_2DE.pdf');