function [trainX, trainY, testX, testY] = divide_examples( X,Y,train_ratio )

[M,N] = size(X);

train_num = int32(train_ratio*M);
test_num = M - train_num;

radm_perm = randperm(M);

% New matrix with swapped rows
Xrand = X(radm_perm, :);

% New tags vector with matching permutation
Yrand = Y(radm_perm,1);

trainX = Xrand(1:train_num,:);
trainY = Yrand(1:train_num,1);

testX = Xrand(train_num+1:M, :);
testY = Yrand(train_num+1:M,1);

end
