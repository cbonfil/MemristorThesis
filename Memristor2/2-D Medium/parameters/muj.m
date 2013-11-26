function [mu] = muj(  mu,i1,i2,j1,j2,v  )

mu(i1:i2,(j1+1):(j2),2)=v;

end

