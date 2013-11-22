%Sim size
global ni;
global nj;
global mat;
global in;

ni=99;
nj=99; 


%Material Properties
     %Mat# er r0 mu D
mat=[100    1  0 1 1/38;
     101    1  0 1 1/38];

 %Geometry+BC + BV
%                %ic jc  r  0  
%    % Mat# Shape i1 i2 j1 j2 VBC VBV 
% in=[ 100     2 100 100 80  70 0   0];
% %      100     1  70  88  40  60  0 0;
% %      101     1  10  90  10  12  0 0;
% %      102     1  10  90  90  92  0 0];

%    % Mat# Shape i1 i2 j1 j2 VBC VBV 
% in=[ 100     1  20  80 20  80 0   0;
%      100     1  20  80 20  80  0 0;
%      101     1  10  90  10  12  1 1;
%      102     1  10  90  90  92  1 0];

% %    Mat# Shape i1 i2 j1 j2 VBC VBV 
% % in=[ 100     1   round(ni/2)-20 round(ni/2)-10   2  4   1 0.2;
% %      101     1   round(ni/2)-20 round(ni/2)-10 nj-3  nj-1 1 -0.2];
% in=[ 100     1   round(ni/2)-5 round(ni/2)+5    10 12    1 0.2;
%      101     1   round(ni/2)-5 round(ni/2)+5    nj-11 nj-9    1 -0.2];
% %      101     1   4 6  nj-5  nj-3 1 -0.2];
 
   % Mat# Shape i1 i2 j1 j2 VBC VBV 
in=[ 100     1   15  95 2  18   1 -0.2;
     101     1   15  95 82  98 1 0.2];
 
%  %Material Properties
%      %Mat# er r0 mu D
% mat=[100    1  0  1 1/38;
%      100    1  0  1 1/38;
%      101    1  0 1 1/38;
%      102    1  0 1 1/38];
% 
%  
%    % Mat# Shape i1 i2 j1 j2 VBC VBV 
% in=[ 100     1  12  80  33  69  0 0;
%      100     1  71  80  17  84  0 0;
%      101     1  70  80  7   13  1 1;
%      102     1  70  80  88  95  1 -1];


% %Material Properties
%      %Mat# er r0 mu D
% mat=[100    1  0  1 1/38;
%      100    1  0 1 1/38;
%      100    1  0 1 1/38;
%      101    1  0 1 1/38;
%      102    1  0 1 1/38];
% 
% 
%    % Mat# Shape i1 i2 j1 j2 VBC VBV 
% in=[ 100     1  22  85  22  80  0 0;
%      100     1  80  85  15  85  0 0;
%      100     1  80  85  15  85  0 0;
%      101     1  15  85  11  13  0 0;
%      102     1  15  85  88  90  0 0];

 
[ini ,~]=size(in);
[n_mat ,~]=size(mat);


global G;

G=zeros(ni,nj);

%Draw Shapes
G=gshapes(G,in,ini);

%Number boundary types (left corner,top,bottom etc..)
G=gprocess( G);



 