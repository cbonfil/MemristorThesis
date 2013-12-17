close all
clear all


% load('small_mem')
% 
% for t=2000
% 
%      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
%     V=Q*(U\(L\(P*(rhs))));
%     V=reshape(V,ni,nj);
% 
%   subplot(1,2,1);  surf(interp2(V,2),'edgecolor','none')
%     view(0,-90);
%     grid off
%     axis off;
%     title('2-D Thin')
%     getframe;
% end
% 
% load('largemem')
% for t=50
% 
%      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
%     V=Q*(U\(L\(P*(rhs))));
%     V=reshape(V,ni,nj);
% 
%   subplot(1,2,2);   surf(interp2(V,2),'edgecolor','none')
% 
%     view(0,-90);
%     grid off
%     axis off
%       title('2-D Thick')
%     getframe;
% end
% 
% load('Ex52')
% 
% 
% 
% a=3*6.4;
% b=1*6.4;
% %
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'renderer', 'zbuffer');
% print(gcf, '-dpdf', '2D_Memristor_V.pdf');


% load('small_mem')
% 
% for t=2000
% 
%      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
%     V=Q*(U\(L\(P*(rhs))));
%     V=reshape(V,ni,nj);
%    subplot(1,3,1);
%   plot(V(91,:))
%     view(0,-90);
%  axis([5 95 -0.70 0.70])
% ylabel('Potential (V)')
%     title('2-D Thin')
%     getframe;
% end
% 
% load('largemem')
% for t=50
% 
%      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
%     V=Q*(U\(L\(P*(rhs))));
%     V=reshape(V,ni,nj);
% 
%    subplot(1,3,2);   plot(V(75,:))
%     view(0,-90);
%  axis([20 80 -0.25 0.25])
% ylabel('Potential (V)')
%       title('2-D Thick')
%     getframe;
% end
% 
% load('Ex52')
% subplot(1,3,3);
% plot(V+0.5)
% ylabel('Potential (V)')
% title('1-D')
%  axis([0 501 -0.7 0.7])
% a=3*6.4;
% b=1*6.4;
% %
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', '1D_Memristor_V.pdf');



load('small_mem')

for t=2000
    
    %      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
    %     V=Q*(U\(L\(P*(rhs))));
    %     V=reshape(V,ni,nj);
    subplot(2,3,1);
    plot(Np(91,:))
    axis([20 80 0 1.2e15])
    ylabel('Lithium Density')
    title('2-D Thin')
    getframe;
end

load('largemem')
for t=50
    
    %      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
    %     V=Q*(U\(L\(P*(rhs))));
    %     V=reshape(V,ni,nj);
    
    subplot(2,3,2);   plot(Np(75,:))
    %     view(0,-90);
    axis([20 80 0 1.2e15])
    ylabel('Lithium Density')
    title('2-D Thick')
    getframe;
end
clear all
load('Ex52')
subplot(2,3,3);
plot(Li)
ylabel('Lithium Density')
title('1-D')
axis([0 501 0 1.2e16])

% a=3*6.4;
% b=1*6.4;
% 
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'PaperUnits', 'inches');
% set(gcf, 'PaperSize', [a b]);
% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperPosition', [0 0 a b]);
% 
% set(gcf, 'renderer', 'painters');
% print(gcf, '-dpdf', '1D_Memristor_Li.pdf');




load('small_mem')

for t=2000
    
    %      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
    %     V=Q*(U\(L\(P*(rhs))));
    %     V=reshape(V,ni,nj);
    subplot(2,3,4);
    plot(p(91,:))
    axis([20 80 0 2.5e15])
    ylabel('Hole Density')
    title('2-D Thin')
    getframe;
end

load('largemem')
for t=50
    
    %      rhs=reshape((VBV-(1*q/e0*(-sNn(:,:,t)+sNp(:,:,t)-1*n+1*sp(:,:,t)))),ni*nj,1);
    %     V=Q*(U\(L\(P*(rhs))));
    %     V=reshape(V,ni,nj);
    
    subplot(2,3,5);   plot(p(75,:))
    %     view(0,-90);
    axis([20 80 0 1.2e15])
    ylabel('Hole Density')
    title('2-D Thick')
    getframe;
end
clear all
load('Ex52')
subplot(2,3,6);
plot(p)
ylabel('Hole_Density')
title('1-D')
axis([0 501 0 1.2e16])

a=2*6.4;
b=1*6.4;

set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', '1D_Memristor_Li_p.pdf');

