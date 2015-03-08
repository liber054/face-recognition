function result=subIm2features(im)

if(size(size(im),2) == 3)
	im = rgb2gray(im);
end
im = im2double(im);
rows = size(im,1);


%resize to 100 rows
im = imresize(im, 100/rows);

[X, Y] = size(im);

%integral image
help = helpMatrix(im);


features = {'eyes_nose','forehead' 'lips', 'fit1' ,'fit2','fit3','fit4' };
result = zeros(1, size(features,2));


for i=1:size(features,2)
    feature=features{i};
    
    [v, h, best_mask_sum] = run_feature(help, feature);

    %figure;
    %imshow(im(v,h));

    result(i) = best_mask_sum;
end



end
