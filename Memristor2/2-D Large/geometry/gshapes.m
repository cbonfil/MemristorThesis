function [ G ] = gshapes( G,in,ini)
for i=1:ini
    
   if in(i,2)==1
       
    G=gdraw_rect(G,in(i,3),in(i,4),in(i,5),in(i,6),in(i,1));  
    
   elseif in(i,2)==2
       
    G=gdraw_circle(G,in(i,3),in(i,4),in(i,5),in(i,1));   
   end
    
end
end

