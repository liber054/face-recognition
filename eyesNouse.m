function [max_val, max_x, max_y]=eyesNouse(Height,Width,im)
%im mast be gray after help
%black the block plus the white block the minus
%
%       [  ][==][  ]
%       [  ][==][  ]
%       [  ][==][  ]
%
[X,Y]=size(im);
max_x=1;
max_y=1;
max_val=-inf;
for x=2:X
    for y=2:Y
        if(x-1+Height<=X && y-1+3*Width<=Y)
            plusleft=rectangele(im,x,y,x-1+Height,y-1+Width);
            plusright=rectangele(im,x,y-1+2*Width,x-1+Height,y-1+3*Width);
            minus=rectangele(im,x,y-1+Width,x-1+Height,y-1+2*Width);
            sum=plusleft+plusright-minus;
            if (sum>max_val)
                max_val=sum;
                max_x=x;
                max_y=y;
            end
        end
    end
end
end