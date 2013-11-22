% function [ L ,U ,P ,Q] = psolve()
% 
% global VBC;
% global ni;
% global nj;
% global G;
% global er;
% global di;
% global dj;
% 
% dis=dj^2;
% djs=di^2;
% 
% top_left=11;
% top=12;
% top_right=13;
% left=14;
% right=15;
% bottom_left=16;
% bottom=17;
% bottom_right=18;
% inner=0;
% 
% 
% 
% location=reshape(G,ni*nj,1);
% bc=reshape(VBC,ni*nj,1);
% er=reshape(er,ni*nj,1);
%  B=sparse(ni*nj,ni*nj);
% 
% 
% for i=1:ni*nj
% 
%     if location(i)<10 && location(i)>0
% % %
%         B(i,i)=1;
% 
% 
% %      if location(i)==1
% %
% %         B(i,i)=-1*er(i)/dis-1*er(i)/djs;
% %         B(i,i+1)=1*er(i)/dis;
% %         B(i,i+ni)=1*er(i)/djs;
% %
% %     elseif location(i)==2
% %
% %          B(i,i)=-2*er(i)/djs-1*er(i)/dis;
% %         B(i,i-1)=1*er(i)/dis;
% %         B(i,i+1)=1*er(i)/dis;
% % %         B(i,i-ni)=1*er(i)/djs;
% %         B(i,i+ni)=1*er(i)/djs;
% %
% %     elseif location(i)==3
% %
% %         B(i,i)=-2*er(i);
% % %         B(i,i-1)=1*er(i)/dis;
% %         B(i,i+1)=1*er(i)/dis;
% %         B(i,i-ni)=1*er(i)/djs;
% % %         B(i,i+ni)=1*er(i)/djs;
% %     elseif location(i)==4
% %
% %         B(i,i)=-3*er(i);
% %         B(i,i-1)=1*er(i)/dis;
% %         B(i,i+1)=1*er(i)/dis;
% % %         B(i,i-ni)=1*er(i)/djs;
% %         B(i,i+ni)=1*er(i)/djs;
% %
% %     elseif location(i)==5
% %           B(i,i)=-3*er(i);
% %         B(i,i-1)=1*er(i)/dis;
% %         B(i,i+1)=1*er(i)/dis;
% %         B(i,i-ni)=1*er(i)/djs;
% % %         B(i,i+ni)=1*er(i)/djs;
% %     elseif location(i)==6
% %         B(i,i)=-3*er(i);
% %         B(i,i-1)=1*er(i)/dis;
% %         B(i,i+1)=1*er(i)/dis;
% % %         B(i,i-ni)=1*er(i)/djs;
% %         B(i,i+ni)=1*er(i)/djs;
% %     elseif location(i)==7
% %         B(i,i)=-3*er(i);
% %         B(i,i-1)=1*er(i)/dis;
% %         B(i,i+1)=1*er(i)/dis;
% %         B(i,i-ni)=1*er(i)/djs;
% % %         B(i,i+ni)=1*er(i)/djs;
% %     elseif location(i)==8
% %            B(i,i)=-2*er(i);
% %         B(i,i-1)=1*er(i)/dis;
% % %         B(i,i+1)=1*er(i)/dis;
% %         B(i,i-ni)=1*er(i)/djs;
% % %         B(i,i+ni)=1*er(i)/djs;
% %     end
% 
% 
% %
% %     elseif location(i)==top_left
% %
% %        if bc(i)==0
% %             B(i,i-ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+1)=1*er(i+1)/dis;
% %             B(i,i-1)=1*er(i-1)/dis;
% %             B(i,i)=-2*(er(i+1)+er(i-1));
% %         elseif bc(i)==1
% %
% %        B(i,i)=er(i);
% %         end
% %
% %     elseif location(i)==top
% %
% %          if bc(i)==0
% %             B(i,i-ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+1)=1*er(i+1);
% %             B(i,i-1)=1*er(i-1);
% %             B(i,i)=-2*(er(i+1)+er(i-1));
% %         elseif bc(i)==1
% %
% %        B(i,i)=er(i);
% %         end
% %     elseif location(i)==top_right
% %
% %       if bc(i)==0
% %             B(i,i-ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+1)=1*er(i+1);
% %             B(i,i-1)=1*er(i-1);
% %             B(i,i)=-2*(er(i+1)+er(i-1));
% %         elseif bc(i)==1
% %
% %        B(i,i)=er(i);
% %        end
% %
% %     elseif location(i)==left
% %            if bc(i)==0
% %             B(i,i-1)=(er(i-ni)+er(i+ni))/2;
% %             B(i,i+1)=(er(i-ni)+er(i+ni))/2;
% %             B(i,i+ni)=1*er(i+ni);
% %             B(i,i-ni)=1*er(i-ni);
% %             B(i,i)=-2*(er(i+ni)+er(i-ni));
% %         elseif bc(i)==1
% %
% %           B(i,i)=er(i);
% %            end
% %
% %
% %     elseif location(i)==right
% %            if bc(i)==0
% %             B(i,i-1)=(er(i-ni)+er(i+ni))/2;
% %             B(i,i+1)=(er(i-ni)+er(i+ni))/2;
% %             B(i,i+ni)=1*er(i+ni);
% %             B(i,i-ni)=1*er(i-ni);
% %             B(i,i)=-2*(er(i+ni)+er(i-ni));
% %         elseif bc(i)==1
% %
% %           B(i,i)=er(i);
% %            end
% %
% %
% %     elseif location(i)==bottom_left
% %
% %        if bc(i)==0
% %             B(i,i-ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+1)=1*er(i+1);
% %             B(i,i-1)=1*er(i-1);
% %             B(i,i)=-2*(er(i+1)+er(i-1));
% %         elseif bc(i)==1
% %        B(i,i)=er(i);
% %            end
% %
% %
% %
% %     elseif location(i)==bottom
% %
% %            if bc(i)==0
% %             B(i,i-ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+1)=1*er(i+1);
% %             B(i,i-1)=1*er(i-1);
% %             B(i,i)=-2*(er(i+1)+er(i-1));
% %         elseif bc(i)==1
% %        B(i,i)=er(i);
% %            end
% %
% %
% %     elseif location(i)==bottom_right
% %
% %          if bc(i)==0
% %             B(i,i-ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+ni)=(er(i-1)+er(i+1))/2;
% %             B(i,i+1)=1*er(i+1);
% %             B(i,i-1)=1*er(i-1);
% %             B(i,i)=-2*(er(i+1)+er(i-1));
% %         elseif bc(i)==1
% %        B(i,i)=er(i);
% %            end
% %
%     elseif location(i)==inner || location(i)>10
% 
%         if bc(i)~=1
%         B(i,i)=-2/dis-2/djs;
%         B(i,i-1)=1/dis;
%         B(i,i+1)=1/dis;
%         B(i,i-ni)=1/djs;
%         B(i,i+ni)=1/djs;
%         else
% 
%         B(i,i)=1;
%         end
%     end
% 
% end
% 
% % spy(B)
% 
% [L, U, P, Q]=lu((B));
% 
% 
% end

function [ L ,U ,P ,Q] = psolve()

global VBC;
global ni;
global nj;
global G;
global er;
global di;
global dj;

dis=dj^2;
djs=di^2;

top_left=11;
top=12;
top_right=13;
left=14;
right=15;
bottom_left=16;
bottom=17;
bottom_right=18;
inner=0;



location=reshape(G,ni*nj,1);
bc=reshape(VBC,ni*nj,1);
er=reshape(er,ni*nj,1);
B=sparse(ni*nj,ni*nj);


for i=1:ni*nj
    
    if location(i)<10 && location(i)~=0
        % %
%                 B(i,i)=er(i);
        if location(i)==1
            
            B(i,i)=-1*er(i)/djs-1*er(i)/dis;
            B(i,i+1)=1*er(i)/djs;
            B(i,i+ni)=1*er(i)/dis;
            
        elseif location(i)==2
            
            B(i,i)=-1*er(i)/djs-2*er(i)/dis;
            %         B(i,i-1)=1*er(i)/djs;
            B(i,i+1)=1*er(i)/djs;
            B(i,i-ni)=1*er(i)/dis;
            B(i,i+ni)=1*er(i)/dis;
%                     B(i,i)=er(i);
        elseif location(i)==3
            
            B(i,i)=-1*er(i)/djs-1*er(i)/dis;
            %         B(i,i-1)=1*er(i)/dis;
            B(i,i+1)=1*er(i)/djs;
            B(i,i-ni)=1*er(i)/dis;
            %         B(i,i+ni)=1*er(i)/djs;
        elseif location(i)==4
%             
            B(i,i)=-2*er(i)/djs-1*er(i)/dis;
            B(i,i-1)=1*er(i)/djs;
            B(i,i+1)=1*er(i)/djs;
            %         B(i,i-ni)=1*er(i)/djs;
            B(i,i+ni)=1*er(i)/dis;
%                       B(i,i)=er(i);
        elseif location(i)==5
%                       B(i,i)=er(i);
            B(i,i)=-1*er(i)/dis-2*er(i)/djs;
            B(i,i-1)=1*er(i)/djs;
            B(i,i+1)=1*er(i)/djs;
            B(i,i-ni)=1*er(i)/dis;
            %         B(i,i+ni)=1*er(i)/djs;
        elseif location(i)==6
            B(i,i)=-1*er(i)/dis-1*er(i)/djs;
            B(i,i-1)=1*er(i)/djs;
            %         B(i,i+1)=1*er(i)/dis;
            %         B(i,i-ni)=1*er(i)/djs;
            B(i,i+ni)=1*er(i)/dis;
        elseif location(i)==7
            B(i,i)=-2*er(i)/dis-1*er(i)/djs;
            B(i,i-1)=1*er(i)/djs;
            %         B(i,i+1)=1*er(i)/dis;
            B(i,i-ni)=1*er(i)/dis;
            B(i,i+ni)=1*er(i)/dis;
%                     B(i,i)=er(i);
        elseif location(i)==8
            B(i,i)=-1*er(i)/dis-1*er(i)/djs;
            B(i,i-1)=1*er(i)/djs;
            %         B(i,i+1)=1*er(i)/dis;
            B(i,i-ni)=1*er(i)/dis;
            %
        end
%         
        
        
    elseif location(i)==top_left
        
        if bc(i)==0
            B(i,i-ni)=(er(i-1)+er(i+1))/2;
            B(i,i+ni)=(er(i-1)+er(i+1))/2;
            B(i,i+1)=1*er(i+1);
            B(i,i-1)=1*er(i-1);
            B(i,i)=-2*(er(i+1)+er(i-1));
        elseif bc(i)==1
            
            B(i,i)=er(i);
        end
        
    elseif location(i)==top
        
        if bc(i)==0
            B(i,i-ni)=(er(i-1)+er(i+1))/2;
            B(i,i+ni)=(er(i-1)+er(i+1))/2;
            B(i,i+1)=1*er(i+1);
            B(i,i-1)=1*er(i-1);
            B(i,i)=-2*(er(i+1)+er(i-1));
        elseif bc(i)==1
            
            B(i,i)=er(i);
        end
    elseif location(i)==top_right
        
        if bc(i)==0
            B(i,i-ni)=(er(i-1)+er(i+1))/2;
            B(i,i+ni)=(er(i-1)+er(i+1))/2;
            B(i,i+1)=1*er(i+1);
            B(i,i-1)=1*er(i-1);
            B(i,i)=-2*(er(i+1)+er(i-1));
        elseif bc(i)==1
            
            B(i,i)=er(i);
        end
        
    elseif location(i)==left
        if bc(i)==0
            B(i,i-1)=(er(i-ni)+er(i+ni))/2;
            B(i,i+1)=(er(i-ni)+er(i+ni))/2;
            B(i,i+ni)=1*er(i+ni);
            B(i,i-ni)=1*er(i-ni);
            B(i,i)=-2*(er(i+ni)+er(i-ni));
        elseif bc(i)==1
            
            B(i,i)=er(i);
        end
        
        
    elseif location(i)==right
        if bc(i)==0
            B(i,i-1)=(er(i-ni)+er(i+ni))/2;
            B(i,i+1)=(er(i-ni)+er(i+ni))/2;
            B(i,i+ni)=1*er(i+ni);
            B(i,i-ni)=1*er(i-ni);
            B(i,i)=-2*(er(i+ni)+er(i-ni));
        elseif bc(i)==1
            
            B(i,i)=er(i);
        end
        
        
    elseif location(i)==bottom_left
        
        if bc(i)==0
            B(i,i-ni)=(er(i-1)+er(i+1))/2;
            B(i,i+ni)=(er(i-1)+er(i+1))/2;
            B(i,i+1)=1*er(i+1);
            B(i,i-1)=1*er(i-1);
            B(i,i)=-2*(er(i+1)+er(i-1));
        elseif bc(i)==1
            B(i,i)=er(i);
        end
        
        
        
    elseif location(i)==bottom
        
        if bc(i)==0
            B(i,i-ni)=(er(i-1)+er(i+1))/2;
            B(i,i+ni)=(er(i-1)+er(i+1))/2;
            B(i,i+1)=1*er(i+1);
            B(i,i-1)=1*er(i-1);
            B(i,i)=-2*(er(i+1)+er(i-1));
        elseif bc(i)==1
            B(i,i)=er(i);
        end
        
        
    elseif location(i)==bottom_right
        
        if bc(i)==0
            B(i,i-ni)=(er(i-1)+er(i+1))/2;
            B(i,i+ni)=(er(i-1)+er(i+1))/2;
            B(i,i+1)=1*er(i+1);
            B(i,i-1)=1*er(i-1);
            B(i,i)=-2*(er(i+1)+er(i-1));
        elseif bc(i)==1
            B(i,i)=er(i);
        end
        
        
    elseif location(i)==inner || location(i)>99
        B(i,i)=-2*er(i)/dis-2*er(i)/djs;
        B(i,i-1)=1*er(i)/djs;
        B(i,i+1)=1*er(i)/djs;
        B(i,i-ni)=1*er(i)/dis;
        B(i,i+ni)=1*er(i)/dis;
        
    end
    
end



[L, U, P, Q]=lu((B));


end





