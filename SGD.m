function w=SGD(X,Y,c,alpha,IT)

[M,N]=size(X);
w=zeros(1,N);

for t=1:IT
    i=randi(M);
    w=w-(alpha/t)*sub_gradient_loss(X(i,:),Y(i),w,c,M);
end

end