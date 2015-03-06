
close all;

result = im2features('img/s1/4.pgm');


a=zeros(6,9);
for i=2:7
    result = im2features(strcat(num2str(i), '.jpg'));

end
disp(a);









