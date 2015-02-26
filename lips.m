function [max_val, max_x, max_y]=lips(Height,Width,im)
%im mast be gray after help
%black the block plus the white block the minus
%       [         ]
%       [         ]
%       [=========]
%       [         ]
%       [         ]
%
[X,Y]=size(im);
max_x=NaN;
max_y=NaN;
max_val=-inf;
for x=2:X
    for y=2:Y
        if(y-1+Width<=Y && x-1+5*Height<=X)
            minusup=rectangele(im,x,y,x-1+2*Height,y-1+Width);
            plus=rectangele(im,x+2*Height,y,x-1+3*Height,y-1+Width);
            minusdown=rectangele(im,x+3*Height,y,x-1+5*Height,y-1+Width);
            sum=plus-minusup-minusdown;
            if (sum>max_val)
                max_val=sum;
                max_x=x;
                max_y=y;
            end
        end
    end
end
end

