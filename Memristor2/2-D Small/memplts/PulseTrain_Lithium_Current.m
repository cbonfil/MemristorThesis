close all
clear all

load('2dmem_train.mat')

VB0=-VBV;
% VBV=-VBV;
for tt=1:2799
    
    sLit1(:,tt)=sNp(pos-1,:,tt);
    sLit2(:,tt)=sNp(pos,:,tt);
    
    grdnt1=gradient(sNp(pos,:,tt),di);
    grdnt2=(sLit1(:,tt)-sLit2(:,tt))/dj;
    
    
    rhs=reshape((VB0-(1*q/e0*(-sNn(:,:,tt)+sNp(:,:,tt)+1*sp(:,:,tt)-n))),ni*nj,1);
    V=Q*(U\(L\(P*(rhs))));
    V=reshape(V,ni,nj);
    Vp(:,:,tt)=V;
    
    [Eip(:,:,tt),Ejp(:,:,tt)]=gradient(-V,di);
    
    J1p(:,tt)=1*1e-5* sLit2(:,tt).*Eip(pos,:,tt)'+1e-5/38*grdnt1';
    J2p(:,tt)=1*1e-5* (sLit1(:,tt)+sLit2(:,tt))/2.*Ejp(pos,:,tt)'+1e-5/38*grdnt2;
    %     surf(V)
    %     view(180,90)
    %     getframe;
    
end

for tt=2800:5500
    
    sLit1(:,tt)=sNp(pos-1,:,tt);
    sLit2(:,tt)=sNp(pos,:,tt);
    
    grdnt1=gradient(sNp(pos,:,tt),di);
    grdnt2=(sLit1(:,tt)-sLit2(:,tt))/di;
    
    rhs=reshape((-VB0-(1*q/e0*(-sNn(:,:,tt)+sNp(:,:,tt)+1*sp(:,:,tt)-n))),ni*nj,1);
    V=Q*(U\(L\(P*(rhs))));
    V=reshape(V,ni,nj);
    Vp(:,:,tt)=V;
    
    [Eip(:,:,tt),Ejp(:,:,tt)]=gradient(-V,di);
    
    J1p(:,tt)=1*1e-5* sLit2(:,tt).*Eip(pos,:,tt)'+1e-5/38*grdnt1';
    J2p(:,tt)=1*1e-5* (sLit1(:,tt)+sLit2(:,tt))/2.*Ejp(pos,:,tt)'+1e-5/38*grdnt2;
    %     surf(V)
    %     view(180,90)
    %     getframe;
    
end

% subplot(2,1,1);surf(J1p,'edgecolor','none')
% view(0,90);
% colorbar;
% caxis([-4e13 4e13])
% subplot(2,1,2);surf(J2p,'edgecolor','none')
% view(0,90);
% colorbar;
% caxis([-4e13 4e13])
surf(linspace(0,tt*1e2*dt, tt),linspace(0,0.0109,ni),q*sqrt(J1p.^2+J2p.^2),'edgecolor','none')
view(0,90);
h=colorbar;
ylabel(h,'Magnitude of current density (A/m^2)')
axis([0 3.8 0 0.0109 0 q*5e13])
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
print(gcf, '-dpdf', '2D_Memristor_Pulse_Lithium_J.pdf');



