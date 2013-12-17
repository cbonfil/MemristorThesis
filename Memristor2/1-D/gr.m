function [ p] = gr( p,V,di,lim,mu,dt )

[ni nj]=size(p);
% p2=1.5*sum(p)/ni;
p2=2*lim;
E=sign(V(round(ni/2)))*(abs(V)-max(abs(V))/2)/di;
D=mu/38;
K=100*dt;
for i=(round(ni/8)-1):(round(7*ni/8))
    if p(i)<1*lim
        
    if E(i)<0
    Jdrift=-1*mu*p2*E(i);
    else
     Jdrift=-1*mu*p(i)*E(i);
    end

    
   Jdiff=-1*D*(p(i)-p2); 
    p(i)=p(i)+K*dt*(Jdiff/di^2+Jdrift/di);
    end
end

% for i=(round(2*ni/4)+0):round(7*ni/8)
%     if p(i)<1*p2
%         
%     if E(i)<0
%     Jdrift=-p2*E(i)/1e4;
%     else
%      Jdrift=-p(i)*E(i)/1e4;
%     end
% 
%     
%    Jdiff=-K*D*(p(i)-p2);
%  p(i)=p(i)+dt*(Jdiff/di^2+Jdrift/di);
%     end
% end

% for i=(round(ni/8)-1):(round(2*ni/4)-1)
%     if p(i)<1*p2
%         
%     if E(i)<0
%     Jdrift=-p2*E(i)/1e4;
%     else
%      Jdrift=-p(i)*E(i)/1e4;
%     end
% 
%     
%    Jdiff=-0.5*(p(i)-p2)/38e3; 
%     p(i)=p(i)+1*Jdiff+1*Jdrift;
%     end
% end
% 
% for i=(round(2*ni/4)+0):round(7*ni/8)
%     if p(i)<1*p2
%         
%     if E(i)<0
%     Jdrift=-p2*E(i)/1e4;
%     else
%      Jdrift=-p(i)*E(i)/1e4;
%     end
% 
%     
%    Jdiff=-0.5*(p(i)-p2)/38e3; 
%     p(i)=p(i)+1*Jdiff+1*Jdrift;
%     end
% end



end

