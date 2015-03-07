function W = svm_sgd( X, Y, C )

ALPHA = 1;
EPOCH_TIMES = 3;

[M,N] = size(X);
% M = samples; N = features
W = zeros(N,1);

T = EPOCH_TIMES*M;

for t=1:T
    i =  randi(M,1);
    W = W - (ALPHA/t)*subgradient_loss_i(W,X(i,:),Y(i),C,M);
end


end

