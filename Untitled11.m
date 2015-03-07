
close all;
clc;
fileID = fopen('n1002.txt','wt');

for j=985:4070
    fprintf('file %d\n', j);
    
   
    str= strcat('non/NAF (', int2str(j), ').jpg');
    result = im2features(str); 

    for k=1:size(result,2)
        fprintf(fileID,'%f\t', result(k));
    end
    fprintf(fileID,'-1\n');

end
 
fclose(fileID);











