function [X, minn, maxx] = normalize(X)

[~,N] = size(X);
minn = [1,N];
maxx = [1,N];

% N = features
for i=1:N
    tempMax = max(X(:,i));
    tempMin = min(X(:,i));
    minn(i) = tempMin;
    maxx(i) = tempMax;
    X(:,i) = (X(:,i)-tempMin)/(tempMax-tempMin);
end