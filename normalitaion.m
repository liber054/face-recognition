function [Min, Max, Normx]=normalitaion(X)
[M,N]=size(X);

Min=zeros(1,N);
Max=zeros(1,N);
Normx=zeros(M,N);

for i=1:N 
    Min(i)=min(X(:,i));
    Max(i)=max(X(:,i));
    dif=Max(i)-Min(i);
    
    for j=1:M
        Normx(j,i)=(X(j,i)-Min(i))/dif;
    end
end