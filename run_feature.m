function  [ v,h, best_mask_sum ] = run_feature( help, feature )

[mask, height, width, x_start, y_start] = feature_case(help,feature);

best_mask_sum = -inf;

for h=height
    for w=width
        
        [mask_sum, top, left] = pattern_feature(x_start, y_start, help, mask, h, w);
       
        if(mask_sum > best_mask_sum)
            
            best_mask_sum = mask_sum;
            best_height = h;
            best_width = w;
            best_top = top;
            best_left = left;
        end
        
    end
end

v = best_top:best_top+best_height-1;
h = best_left:best_left+best_width-1;


end

