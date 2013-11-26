function [ n ] = delJn( n,mu,Ei,Ej,di,dj,dt )


[ni, nj]=size(Ei);

Ji=zeros(ni+1,nj);
Jj=zeros(ni,nj+1);


for  i=2:ni
    for j=1:nj
        
            muh=mu(i,j,1);
            Dh=muh/38;
            Eh=(Ei(i-1,j)+Ei(i,j))/2;
            nh=(n(i,j)+n(i-1,j))/2;
            dn=((n(i,j)-n(i-1,j)));
%              Jd=Dh*dn;
%             Je=muh*nh*Eh;
            
%              if ~isnan(exp(muh*Eh*di/(1*Dh))) && ~isinf(exp(muh*Eh*di/(1*Dh))) && exp(muh*abs(Eh)*di/(1*Dh))>2 &&  ( (abs((Jd+Je)/( abs(Je) +abs(Jd)))<0.5))
%                 
%                   Ji(i,j)=muh*Eh*(n(i,j)-n(i-1,j)*exp(-muh*Eh*di/(Dh)))/(1-1*exp(-muh*Eh*di/(Dh)));
%            
%               else
                
                  Ji(i,j)=muh.*nh.*Eh+Dh.*dn/di;
%               end
    end
end

for i=1:ni
    for j=2:nj
        
            muh=mu(i,j,2);
            Dh=muh/38;
            Eh=(Ej(i,j-1)+Ej(i,j))/2;
            nh=(n(i,j)+n(i,j-1))/2;
            dn=((n(i,j)-n(i,j-1)));
            
%               Jd=Dh*dn;
%             Je=muh*nh*Eh;
            
%           if ~isnan(exp(muh*Eh*di/(1*Dh))) && ~isinf(exp(muh*Eh*di/(1*Dh))) && exp(muh*abs(Eh)*di/(1*Dh))>2 &&  ( (abs((Jd+Je)/( abs(Je) +abs(Jd)))<0.5))
%             
%           Jj(i,j)=muh*Eh*(n(i,j)-n(i,j-1)*exp(-muh*Eh*dj/(Dh)))/(1-1*exp(-muh*Eh*dj/(Dh)));
%             
%           else
            
          Jj(i,j)=muh.*nh.*Eh+Dh.*dn/dj;
  
%           end
    end
end



dJi=zeros(ni,nj);
dJj=zeros(ni,nj);
k=1:ni;
l=1:nj;


dJi(k,l)=(Ji(k+1,l)-Ji(k,l))/di;
dJj(k,l)=(Jj(k,l+1)-Jj(k,l))/dj;

n=n+dt*(dJi+dJj);




end

%               if exp(abs(38*0.5*(Ej(i,j)+Ej(i,j-1))*di))<2  || mu(i,j)==0 

