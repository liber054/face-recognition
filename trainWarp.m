function [WAllTrain,bestW,avgC,bestC,bestEror,MinX,MaxX]=trainWarp(X,Y,C,alpha,T,it,p)
[MinX,MaxX,NormX]=normalitaion(X);
[~,sizec]=size(C);
[M,~]=size(X);
bestEror=M;
avgC=zeros(1,sizec);
for i=1:it %it=5
   [Xtrain, Xtest , Ytrain, Ytest]=dividmatrix(NormX,Y,p);
   
   for j=1:sizec
        w=SGD(Xtrain,Ytrain,C(j),alpha,T);
        erorsum=cros_validation(Xtest,Ytest,w);
        avgC(j)=avgC(j)+erorsum;
        
        if (erorsum<bestEror)
            bestW=w;
            bestC=C(j);
            bestEror=erorsum;
        end
    end
    
end
avgC=avgC/5;
WAllTrain=SGD(X,Y,bestC,alpha,T);
end