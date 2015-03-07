
close all;
clc;
fileID = fopen('p100.txt','wt');

for j=1:435
    fprintf('file %d\n', j);
    
    filename =sprintf('%04i', j);
    str= strcat('non\Faces_easy\', 'image_', filename, '.jpg');
    result = im2features(str); 

    for k=1:size(result,2)
        fprintf(fileID,'%f\t', result(k));
    end
    fprintf(fileID,'1\n');

end
 
fclose(fileID);











