function [max_val,max_Hight,max_width]=serchhLipsblock(im)
max_val=-inf;
max_Hight=NaN;
max_width=NaN;
help=helpMatrix(im);
[X,Y]=size(help);
for x=1:X
    for y=1:Y
        [max,~,~]=lips(x,y,help);
        if (max>max_val)
            max_val=max;
            max_Hight=x;
            max_width=y;
        end
    end
    
end


