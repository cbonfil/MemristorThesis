function [ L,U,P,Q ] = psolve( ni,floating )

B=sparse(ni,ni);
for i=1:ni
    
    if i==1
        if floating==1
         B(i,i)=-1;
        else
        B(i,i)=-2;   
        end
        
     B(i,i+1)=1;
    elseif i==ni
%    B(i,i)=1;
       B(i,i)=-2;   
     B(i,i-1)=1; 
    else
     B(i,i-1)=1;
     B(i,i)=-2;
     B(i,i+1)=1;
    end
    
   
       
end
[L,U,P,Q]=lu(B);
end

