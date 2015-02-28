function [ max_sum,  mtop, mleft] = pattern_feature(start_x, start_y, help, mask, height, width )


mtop=1;
mleft =1;
[mask_rows, mask_cols] = size(mask);

cell_height = int32(height/mask_rows);
cell_width = int32(width/mask_cols);

[X, Y] = size(help);                                                                                                                                 


max_sum = -inf;

for x=start_x:X
    for y=start_y:Y
        if(x+height < X && y+width < Y && ...
                x+cell_height*mask_rows-1 < X && y+cell_width*mask_cols-1 < Y)
            
            sam = masksum( x,y,help, mask, cell_height,cell_width );
            
            if(sam > max_sum)
                max_sum = sam;
                mtop = x;
                mleft=  y;
            end
            
            
            
        end
    end
end


end

