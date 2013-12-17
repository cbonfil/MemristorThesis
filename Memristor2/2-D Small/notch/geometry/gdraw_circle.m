function [ G ] = gdraw_circle(  G,ic,jc,r,M  )

[ni ,nj]=size(G);

for i=1:ni
    for j=1:nj
        
        if (i-ic)^2+(j-jc)^2<r^2
            G(i,j)=M;
        end
    end
end

end

