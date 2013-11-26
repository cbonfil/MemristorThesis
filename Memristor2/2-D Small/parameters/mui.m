function [ mu ] = mui( mu,i1,i2,j1,j2,v )

mu((i1+1):(i2),j1:j2,1)=v;
end

