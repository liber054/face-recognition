function result = im2features( file_name )
im = imread(file_name);
im = rgb2gray(im);
im = im2double(im);
rows = size(im,1);

%resize to 100 rows
im = imresize(im, 100/rows);

%integral image
help = helpMatrix(im);

features = {'forehead', 'eyes_nose', 'lips', 'nostril', 'lips_2'};
result = zeros(1, size(features,2));


for i=1:size(features,2)
    feature=features{i};
    
    [v, h, best_mask_sum] = run_feature(help, feature);
   % figure;
   % imshow(im(v,h));
    result(i) = best_mask_sum;
end



end

