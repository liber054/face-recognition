function [max_val, max_x, max_y]=eyes(Height,Width,im)
%im mast be gray after help
%black the block plus the white block the minus
%
%       [=========]
%       [         ]
%
[X,Y]=size(im);
max_x=1;
max_y=1;
max_val=-inf;
for x=2:X
    for y=2:Y
        if(y-1+Width<=Y && x-1+2*Height<=X)
            plus=rectangele(im,x,y,x-1+Height,y-1+Width);
            minus=rectangele(im,x+Height,y,x-1+2*Height,y-1+Width);
            if (plus-minus>max_val)
                max_val=plus-minus;
                max_x=x;
                max_y=y;
            end
        end
    end
end
end

