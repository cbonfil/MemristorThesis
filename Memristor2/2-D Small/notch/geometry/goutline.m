function [ G ] = goutline( G,i,j )
        U=G(i-1,j);
        D=G(i+1,j);
        R=G(i,j+1);
        L=G(i,j-1);
        UR=G(i-1,j+1);
        UL=G(i-1,j-1);
        DR=G(i+1,j+1);
        DL=G(i+1,j-1);
        %LU
        if L==0 && U==0 && R~=0 && D~=0
          
            G(i,j)=0.5;
        end
        %U    
       if  L~=0 && D~=0 && R~=0 && U==0
            
              G(i,j)=0.5;
       end
        %UR 
        if  L~=0 && U==0 && R==0 && D~=0
            
              G(i,j)=0.5;
        end
        
        %L
        if  L==0 && U~=0 && R~=0 && D~=0
            
             G(i,j)=0.5;
        end
        
        %R
        if  L~=0 && U~=0 && R==0 && D~=0
            
              G(i,j)=0.5;
        end
        
        %DL
         if  L==0 && U~=0 && R~=0 && D==0
            
            G(i,j)=0.5;
         end
     
         %D
         if  L~=0 && U~=0 && R~=0 && D==0
            
             G(i,j)=0.5;
         end
        
         
        %DR
        if  L~=0 && U~=0 && R==0 && D==0
            
             G(i,j)=0.5;
             
        elseif (UR==0 || UL==0 || DR==0 || DL==0) && R~=0 && D~=0 && L~=0 && U~=0
            
            G(i,j)=0.5;
            
        end

end

