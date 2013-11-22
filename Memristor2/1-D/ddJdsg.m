function [ n ] = ddJdsg(n, ni,E,dt,di,mu,D)

m=max(max(abs(E)))/1e8 ;

if m<1e-8
    m=1e-8;
end

Ei=E+m;


J=zeros(ni+1,1);


Jd=D(1:ni).*gradient(n,di);
Je=mu(1:ni).*n.*E;

for i=2:ni;
    
%             if exp(mu*abs(max(E))*di/D)>2 &&  ( (abs((Jd(i)+Je(i))/Je(i))<0.5 ||  abs((Jd(i)+Je(i))/( abs(Je(i)) +abs(Jd(i))))<0.8))

            if exp(mu(1)*abs(max(E))*di/D(1))>2 &&  ( (abs((Jd(i)+Je(i))/( abs(Je(i)) +abs(Jd(i))))<0.8))
                
                J(i)=0.5*mu(i).*(Ei(i)+Ei(i-1)).*(n(i-1)-n(i).*exp((mu(i)*(Ei(i)+Ei(i-1)))*di/(2*D(1))))./(1-1.*exp((mu(i)*(Ei(i)+Ei(i-1)))*di/(2*D(i))));

               
            else

              J(i)=(mu(i)*0.25.*(n(i)+n(i-1)).*(Ei(i)+Ei(i-1)))+D(i).*((n(i)-n(i-1)))/di;
            end
   
end

dJ=zeros(ni,1);
    i=1:ni;
   dJ(i)=(J(i+1)-J(i))/di;
n=n+dJ*dt;

end


