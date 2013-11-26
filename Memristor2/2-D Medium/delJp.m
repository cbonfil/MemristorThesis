function [ n ] = delJp( n,Np,mu,Ei,Ej,di,dj,dt )


[ni, nj]=size(Ei);

Ji=zeros(ni+1,nj);
Jj=zeros(ni,nj+1);

for  i=2:ni
    for j=1:nj
        
         
            Eh=(Ei(i-1,j)+Ei(i,j))/2;
            nh=(n(i-1,j)+n(i,j))/2;
%             nph=0*(Np(i-1,j)+Np(i,j))/2;
%             muh=mu(i,j,1)*1./(1+exp((0*nph-8e15)/10e14));
                      muh=mu(i,j,1);
            Dh=muh/38;
            dn=((n(i,j)-n(i-1,j)));
%            Jd=Dh*dn;
%             Je=muh*nh*Eh;
%              if ~isnan(exp(muh*Eh*di/(1*Dh))) && ~isinf(exp(muh*Eh*di/(1*Dh))) && exp(muh*abs(Eh)*di/(1*Dh))>2 &&  ( (abs((Jd+Je)/( abs(Je) +abs(Jd)))<0.5))
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
%               nph=0*(Np(i,j-1)+Np(i,j))/2;
%             muh=mu(i,j,2)*1./(1+exp((1*nph-8e15)/10e14));
              muh=mu(i,j,2);
            Dh=muh/38;
            dn=((n(i,j)-n(i,j-1)));
%             Jd=Dh*dn;
%             Je=muh*nh*Eh;
%             
%           if ~isnan(exp(muh*Eh*di/(1*Dh))) && ~isinf(exp(muh*Eh*di/(1*Dh))) && exp(muh*abs(Eh)*di/(1*Dh))>2 &&  ( (abs((Jd+Je)/( abs(Je) +abs(Jd)))<0.5))
% %             
%           Jj(i,j)=muh*Eh*(n(i,j)-n(i,j-1)*exp(muh*Eh*dj/(Dh)))/(1-1*exp(muh*Eh*dj/(Dh)));
% %             
%           else
            
          Jj(i,j)=muh.*nh.*Eh-Dh.*dn/dj;
  
%           end
    end
end



dJi=zeros(ni,nj);
dJj=zeros(ni,nj);
k=1:ni;
l=1:nj;

dJi(k,l)=(Ji(k+1,l)-Ji(k,l))/di;
dJj(k,l)=(Jj(k,l+1)-Jj(k,l))/dj;

% lim=2e26;
% 
% for i=70:80
%    for j=20:51
%          if n(i,j)-dt*dJi(i,j)>lim
%        
%             if Ji(i,j)>0 
%                 
%            Ji(i,j)=0;
%             end
%             
%             if Ji(i+1,j)<0 
%                 
%                Ji(i+1,j)=0;  
%             end
%           end
%         
%     
%          if n(i,j)-dt*dJj(i,j)>lim
%             if  Jj(i,j)>0 
%            Jj(i,j)=0;
%             end
%             
%             if  Jj(i,j+1)<0 
%            Jj(i,j+1)=0;
%             end 
%             
%          end
%               
%     
%    end
% end
% 
% for i=70:80
%    for j=51:80
%          if n(i,j)-dt*dJi(i,j)>lim
%        
%             if Ji(i,j)>0 
%                 
%            Ji(i,j)=0;
%             end
%             
%             if Ji(i+1,j)<0 
%                 
%                Ji(i+1,j)=0;  
%             end
%           end
%         
%     
%          if n(i,j)-dt*dJj(i,j)>lim
%             if  Jj(i,j)>0 
%            Jj(i,j)=0;
%             end
%             
%             if  Jj(i,j+1)<0 
%            Jj(i,j+1)=0;
%             end 
%             
%          end
%               
%     
%    end
% end
% 
% 
% 
% dJi(k,l)=(Ji(k+1,l)-Ji(k,l))/di;
% dJj(k,l)=(Jj(k,l+1)-Jj(k,l))/dj;



n=n-dt*(dJi+dJj);




end

%               if exp(abs(38*0.5*(Ej(i,j)+Ej(i,j-1))*di))<2  || mu(i,j)==0 

