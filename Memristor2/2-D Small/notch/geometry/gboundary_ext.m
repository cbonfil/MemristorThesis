function [ G ] = gboundary_ext( G )

[ni, nj]=size(G);
for i=1:ni
   for j=1:nj
    
       if i==1 && j==1
           
            G(1,1)=1; 
          
       elseif i==1 && j~=1 && j~=nj
           
            G(i,j)=2; 
            
       elseif i==1 && j==nj   
           
            G(i,j)=3; 
            
       elseif i~=1 && i~=ni && j==1 
           
            G(i,j)=4; 
            
       elseif i~=1 && i~=ni && j==nj
           
            G(i,j)=5; 
            
       elseif i==ni && j==1
           
            G(i,j)=6; 
            
       elseif i==ni && j~=1 && j~=nj
           
            G(i,j)=7; 
       elseif i==ni && j==nj
           G(i,j)=8;
       end
    
       
   end  
end 

end

