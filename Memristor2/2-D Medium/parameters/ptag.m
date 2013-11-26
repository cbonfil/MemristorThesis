function [ T] = ptag( T,G,M,v )

[ni, nj]=size(G);

for i=1:ni
    for j=1:nj
        
        if (G(i,j)==M)
            T(i,j)=v;
        elseif  G(i,j)==0 || G(i,j)<100
              T(i,j)=1;
        end
    end
end

end

