function [X, W, bestC, avg_error, C_index, minn ,maxx] = svm_learn( X,Y, C_values )
[M,~] = size(X);
minn=0;
maxx=0;
DIVIDE_TRAIN_RATIO = 0.7;
NUM_OF_ITER = 5;

C_values_size = size(C_values,2);
avg_error = zeros(1,C_values_size);

min_avg_error = M;
[X, minn, maxx] = normalize(X);


for i=1:C_values_size
    C = C_values(i);
    fprintf('iterating c value %d \n', C);
    total_errors_for_c = 0;
    for j=1:NUM_OF_ITER
        [trainX, trainY, testX, testY] = divide_examples(X,Y,DIVIDE_TRAIN_RATIO);
        W = svm_sgd(trainX, trainY, C);
        total_errors_for_c = total_errors_for_c + cross_validation(W, testX, testY);
    end

    avg_error(i) = total_errors_for_c/NUM_OF_ITER;
    
    if(avg_error(i) < min_avg_error)
        bestC = C_values(i);
        C_index = i;
        min_avg_error = avg_error(i);
    end
end
disp('learning done');
W = svm_sgd(X, Y, bestC);


end

