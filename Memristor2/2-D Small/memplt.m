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


% load('small_mem')
% subplot(2,2,1);
% plot(1*(1:length(I1))/length(I1),1./(I1./I1(1)))
% title('2-D Thin')
% axis([0 1 1 10])
% load('curr.mat')
% subplot(2,2,4);
% plot((1:length(unnamed))/length(unnamed),1*(1./(unnamed./unnamed(1))))
% title('Experimental')
% ylabel('Normalized 1/Current')
% 
% load('largemem')
% subplot(2,2,3);
% plot(1*(1:length(I1))/length(I1),1./(I1./I1(1)))
% title('2-D Thick')
% ylabel('Normalized 1/Current')
% 
% load('Ex52')
% subplot(2,2,2);
% for t=1:2500
% ab(t)=sv_pR(1,5,t);
% end
% plot((1:2500)/25e2,1./(ab/ab(1)));
% title('1-D')
% ylabel('Normalized 1/Current')


% a=1*6.4;
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
% print(gcf, '-dpdf', 'InvCurrent.pdf');


hold all
load('2dmem_rect_rt10')
plot((1:t)*dt,1./(I1./I1(1)))

load('2dmem_rect_rt20')
plot((1:t)*dt,1./(I1./I1(1)))

load('2dmem_rect_rt50')
plot((1:t)*dt,1./(I1./I1(1)))

load('2dmem_rect_rt100')
plot((1:t)*dt,1./(I1./I1(1)))

load('2dmem_rect_rt200')
plot((1:t)*dt,1./(I1./I1(1)))

load('2dmem_rect_rt500')
plot((1:t)*dt,1./(I1./I1(1)))

load('2dmem_rect_rt100')
plot((1:t)*dt,1./(I1./I1(1)))


% hold all
% load('2dmem_rect_V01')
% plot((1:t)*dt,1./(I1./I1(1)))
% load('2dmem_rect_V05')
% plot((1:t)*dt,1./(I1./I1(1)))
% load('2dmem_rect_V20')
% plot((1:t)*dt,1./(I1./I1(1)))
% axis([0 0.5 0 27])

% hold all
% load('2dmem_rect_V01')
% 
% for t=1:1e3
%     
%    tst(:,t)=sp(pos,:,t) ;
% end
% subplot(4,1,1);surf(tst,'edgecolor','none')
% grid off
% axis off
% view(0,90)
% % mean(1./(sp(pos,5:95,t)))
% sum((sNp(pos,:,t)))
% load('2dmem_rect_V05')
% 
% for t=1:1e3
%     
%    tst(:,t)=sp(pos,:,t) ;
% end
% subplot(4,1,2);surf(tst,'edgecolor','none')
% grid off
% axis off
% view(0,90)
% % mean(1./(sp(pos,5:95,t)))
% sum((sNp(pos,:,t)))
% 
% load('2dmem_rect_V10')
% 
% for t=1:1e3
%     
%    tst(:,t)=sp(pos,:,t) ;
% end
% subplot(4,1,3);surf(tst,'edgecolor','none')
% grid off
% axis off
% view(0,90)
% % mean(1./(sp(pos,5:95,t)))
% sum((sNp(pos,:,t)))
% 
% load('2dmem_rect_V20')
% 
% for t=1:1e3
%     
%    tst(:,t)=sp(pos,:,t) ;
% end
% subplot(4,1,4);surf(tst,'edgecolor','none')
% grid off
% axis off
% view(0,90)
% % mean(1./(sp(pos,5:95,t)))
% sum((sNp(pos,:,t)))
