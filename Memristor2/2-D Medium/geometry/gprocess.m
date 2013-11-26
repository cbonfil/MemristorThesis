function [G2 ] = gprocess( G)

[ni, nj]=size(G);

k=99;

%Find number of materials
for i=1:ni
    for j=1:nj
        
        if (G(i,j)>k)
            
           k=G(i,j); 
            
        end
        
        
    end
end

material=zeros(ni,nj,k-100);
disp=material;
%Separate materials into layers
for z=100:(k)
    
for i=1:ni
    for j=1:nj
        
        if (G(i,j)==z)
            
           material(i,j,z-99)=z;
           disp(i,j,z-99)=z-99;
        end
        
        
    end
end

end

%Find edges

for z=100:(k)

    for i=2:ni-1
    for j=2:nj-1
        
    if   material(i,j,z-99) ==z;
        
    [   material(:,:,z-99) ] = gfind_edge( material(:,:,z-99),i,j );
    [   disp(:,:,z-99) ] = goutline( disp(:,:,z-99),i,j );
    end
        
    end
    end



end


% % Display
% figure(1)
% for z=1:(k-100+1)
%     
%  hold all
%  surf(disp(ni:-1:1,:,z),'EdgeColor','none')
% 
% end

G2=zeros(ni,nj);
%Combine all
for z=100:(k)

    for i=2:ni-1
    for j=2:nj-1
      if G2(i,j)==0
     G2(i,j)=   material(i,j,z-99); 
      end
        
    end
    end



end

G2=gboundary_ext(G2);

end



