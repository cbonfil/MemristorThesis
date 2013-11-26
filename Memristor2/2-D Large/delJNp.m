function [ n ] = delJNp( n,mu,Ei,Ej,di,dj,dt )


[ni, nj]=size(Ei);

Ji=zeros(ni+1,nj);
Jj=zeros(ni,nj+1);

% Ei=Ei+max(max(Ei))/1e8;
% Ej=Ej+max(max(Ej))/1e8;
% mu=mu+max(max(max(mu)))/1e8;
for  i=2:ni
    for j=1:nj
        
          Eh=(Ei(i-1,j)+Ei(i,j))/2;
            nh=(n(i,j)+n(i-1,j))/2;
            
%             if i>70 && i<81 &&  ((j>19 && j<30) || (j<81 && j>70))
%             if i>70 && i<81 &&  j>19 && j<81 
% %             muh=mu(i,j,1)*1./(1+exp((0*nh-5e15)/20e14));
%              muh=mu(i,j,1)*((1./(1+exp((1*j-70)/1e-5))+1./(1+exp(-(1*j-30)/1e-5)))-1);
%             else
            muh=mu(i,j,1);
%             end
           

          
            Dh=muh/38;
            dn=((n(i,j)-n(i-1,j)));
%            Jd=Dh*dn;
%             Je=muh*nh*Eh;
%            
%              if ~isnan(exp(muh*Eh*di/(1*Dh))) && ~isinf(exp(muh*Eh*di/(1*Dh))) && exp(muh*abs(Eh)*di/(1*Dh))>2  &&  ( (abs((Jd+Je)/( abs(Je) +abs(Jd)))<0.5))
% %                 
%                   Ji(i,j)=muh*Eh*(n(i,j)-n(i-1,j)*exp(muh*Eh*di/(Dh)))/(1-1*exp(muh*Eh*di/(Dh)));
%            
%               else
             
                  Ji(i,j)=muh.*nh.*Eh-Dh.*dn/di;
%               end
    end
end

for i=1:ni
    for j=2:nj
        
             Eh=(Ej(i,j-1)+Ej(i,j))/2;
            nh=(n(i,j)+n(i,j-1))/2;
         
%             if i>71 && i<81 && j>19 && j<81
%             muh=mu(i,j,2)*1./(1+exp((1*nh-19e15)/14e14));
%             else
%             muh=mu(i,j,2);
%             end
            
%             if i>70 && i<81 &&  j>19 && j<81 
% % %             muh=mu(i,j,1)*1./(1+exp((1*nh-19e15)/14e14));
%             muh=mu(i,j,2)*((1./(1+exp((1*j-70)/1))+1./(1+exp(-(1*j-30)/1)))-1);
%             else
            muh=mu(i,j,2);
%             end

             
            Dh=muh/38;
            dn=((n(i,j)-n(i,j-1)));
%             Jd=Dh*dn;
%             Je=muh*nh*Eh;
%           if ~isnan(exp(muh*Eh*di/(1*Dh))) && ~isinf(exp(muh*Eh*di/(1*Dh))) && exp(muh*abs(Eh)*di/(1*Dh))>2 &&  ( (abs((Jd+Je)/( abs(Je) +abs(Jd)))<0.5))
% %             
%           Jj(i,j)=muh*Eh*(n(i,j)-n(i,j-1)*exp(muh*Eh*dj/(Dh)))/(1-1*exp(muh*Eh*dj/(Dh)));
% %             
%           else
           
               Jj(i,j)=muh.*nh.*Eh-Dh.*dn/dj;
%   
%           end
    end
end



dJi=zeros(ni,nj);
dJj=zeros(ni,nj);
k=1:ni;
l=1:nj;

dJi(k,l)=(Ji(k+1,l)-Ji(k,l))/di;
dJj(k,l)=(Jj(k,l+1)-Jj(k,l))/dj;

lim=1e15;

for i=71:80
   for j=20:80
       
         if n(i,j)-dt*dJi(i,j)>lim
       
            if Ji(i,j)>0 
                
           Ji(i,j)=0;
            end
            
            if Ji(i+1,j)<0 
                
               Ji(i+1,j)=0;  
            end
          end
        
    
         if n(i,j)-dt*dJj(i,j)>lim
             
            if  Jj(i,j)>0 
           Jj(i,j)=0;
            end
            
            if  Jj(i,j+1)<0 
           Jj(i,j+1)=0;
            end 
            
         end
                      
    
   end
end



dJi(k,l)=(Ji(k+1,l)-Ji(k,l))/di;
dJj(k,l)=(Jj(k,l+1)-Jj(k,l))/dj;

n=n-dt*(dJi+dJj);




end

%               if exp(abs(38*0.5*(Ej(i,j)+Ej(i,j-1))*di))<2  || mu(i,j)==0 

