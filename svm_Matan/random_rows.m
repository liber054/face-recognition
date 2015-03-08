function Y = random_rows(X, len)
% sampling ratio*100 precent rows from X

[M, ~] = size(X);

rand_perm = randperm(M);

Y = X(rand_perm, :);

Y = Y(1:len,:);
end

