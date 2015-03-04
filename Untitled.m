a=zeros(6,9);
for i=2:7
    result = im2features(strcat(num2str(i), '.jpg'));
    a(i-1,:)=result;
end
disp(a);









