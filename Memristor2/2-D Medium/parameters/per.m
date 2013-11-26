function [ T] = per( T,G,M,v )

[ni, nj]=size(G);

for i=1:ni
    for j=1:nj
        if (G(i,j)==M)
            T(i,j)=v;
      
        end
    end
end

end

