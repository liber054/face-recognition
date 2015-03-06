function [Xtrain, Xtest , Ytrain, Ytest]=dividmatrix(X,Y,p)

[M,~]=size(X);
randp=randperm(M);
randX=X(randp,:);
randY=Y(randp,1);
pm=round(p*M);


Xtrain=randX(1:pm,:);
Xtest=randX(pm+1:M,:);
Ytrain=randY(1:pm,:);
Ytest=randY(pm+1:M,1);


