
    samples = importdata('Skin_NonSkin.txt');
    X = samples(:,1:3);
    Y = samples(:,4);
    
    [Xtrain, Xtest , Ytrain, Ytest]=dividmatrix(X,Y,0.0005);
    X=Xtrain;
    Y=Ytrain;
    
    [M,N]=size(X);
    T=3*M;
    C=setC();

    for i=1:M
        if (Y(i) == 2)
             Y(i) = -1;     
        end
    end

   