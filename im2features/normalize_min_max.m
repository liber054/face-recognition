function X = normalize_min_max(X,minn,maxx)

[~,N] = size(X);


% N = features
for i=1:N
    X(:,i) = (X(:,i)-minn(i))/(maxx(i)-minn(i));
end

end
