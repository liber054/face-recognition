function sam = masksum( x,y,help, mask,cell_height,cell_width )
sam = 0;
[mask_rows, mask_cols] = size(mask);

for i=0:mask_rows-1
    for j=0:mask_cols-1

        top = x+cell_height*i;
        left = y+cell_width*j;
        bottom = top + cell_height - 1;
        right = left + cell_width - 1;
        
        cell = rectangele(help, top+1, left+1, bottom+1, right+1);
        
        if(mask(i+1,j+1) == 0) 
            cell = -cell; 
        end
        
        sam = sam + cell;
        
    end
end

end

