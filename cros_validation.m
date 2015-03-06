function erorsum=cros_validation(X,Y,w)
erorsum=0;
%Normx=normalation_with_know_minmax(X,minX,maxX);
[M,~]=size(X);
for i=1:M
    val=w*X(i,:)';
    if (val*Y(i)<0)
        erorsum=erorsum+1;
    end
end
end