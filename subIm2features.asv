function result=subIm2features(im)

help = helpMatrix(im);

features = {'forehead', 'eyes_nose', 'lips', 'nostril', 'lips_2', 'fit1' ,'fit2','fit3','fit4' };
result = zeros(1, size(features,2));


for i=1:size(features,2)
    feature=features{i};
    
    [~, ~, best_mask_sum] = run_feature(help, feature);
   % figure;
   % imshow(im(result,h));
    result(i) = best_mask_sum;
end



end
