function Normx=normalation_with_know_minmax(X,minX,maxX)
[M,N]=size(X);
Normx=zeros(M,N);

for i=1:N 
    dif=maxX(i)-minX(i);
    
    for j=1:M
        Normx(j,i)=(X(j,i)-minX(i))/dif;
    end
end
end