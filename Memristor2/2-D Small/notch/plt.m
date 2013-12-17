function [ ] = plt( Z )

[ni ,nj]=size(Z);
ZI = interp2(Z,3);
%  ZI=ZI/max(max(abs(ZI)));
  surf(ZI,'edgecolor','none')
%      axis([0 200 0 260 0 5e16])
% caxis([0 5e16]) 
view(0,-90);  
%  colorbar;

 getframe;
end

