function [max_val, max_x, max_y]=eyes(Height,Width,help)
%im mast be gray after help
%black the block plus the white block the minus
%
%       [=========]
%       [         ]
%
[X,Y]=size(help);
max_x=1;
max_y=1;
max_val=-inf;
for x=2:X
    for y=2:Y
        if(y-1+Width<=Y && x-1+2*Height<=X)
            
            blacks=rectangele(help,x,y,x-1+Height,y-1+Width);
            whites=rectangele(help,x+Height,y,x-1+2*Height,y-1+Width);
            
            diff = whites-blacks;
            
            if (diff>max_val)
                max_val=diff;
                max_x=x-1;
                max_y=y-1;
            end
        end
    end
end


end

