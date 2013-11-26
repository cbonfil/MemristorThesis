close all
clear all


% sNp(:,:,(t/10)+1)=Np;
% sNn(:,:,(t/10)+1)=Nn;
% sp(:,:,(t/10)+1)=p;

% for t=1:1e3
%     
%     surf(sNp(:,:,t))
%     getframe;
% end


load('small_mem')
subplot(2,2,1);
plot(1*(1:length(I1))/length(I1),1./(I1./I1(1)))
title('2-D Thin')
axis([0 1 1 10])
load('curr.mat')
subplot(2,2,4);
plot((1:length(unnamed))/length(unnamed),1*(1./(unnamed./unnamed(1))))
title('Experimental')
ylabel('Normalized 1/Current')

load('largemem')
subplot(2,2,3);
plot(1*(1:length(I1))/length(I1),1./(I1./I1(1)))
title('2-D Thick')
ylabel('Normalized 1/Current')

load('Ex52')
subplot(2,2,2);
for t=1:2500
ab(t)=sv_pR(1,5,t);
end
plot((1:2500)/25e2,1./(ab/ab(1)));
title('1-D')
ylabel('Normalized 1/Current')


a=1*6.4;
b=1*6.4;
%
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [a b]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 a b]);

set(gcf, 'renderer', 'painters');
print(gcf, '-dpdf', 'InvCurrent.pdf');






