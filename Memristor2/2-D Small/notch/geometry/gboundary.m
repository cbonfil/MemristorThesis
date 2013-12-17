function [VBV,VBC ] = gboundary( G,mat,in)

[mi, ~]=size(mat);
[ni, nj]=size(G);
VBV=zeros(ni,nj);
VBC=zeros(ni,nj);
for i=2:ni-1
    for j=2:nj-1
       if G(i,j)>10 && G(i,j)<99
        cur_mat=max(max([G(i+[-1 0 1],j-1) G(i+[-1 0 1],j) G(i+[-1 0 1],j+1)]));
      
        for k=1:mi
          if mat(k,1)==cur_mat
             break; 
          end
        end
        
        VBC(i,j)=in(k,7);
        VBV(i,j)=in(k,8);
          
       end
       
    end
end




end

