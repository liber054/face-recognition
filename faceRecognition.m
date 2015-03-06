function faceRecognition(file_name,w)

im=imread(file_name);
im = rgb2gray(im);
im = im2double(im);
[X,Y]=size(im);
for x=1:50:X
    for y=1:35:Y
        if (x+100<X && y+70<Y)
            subim=im(x:x+100,y:y+70);
            v=subIm2features(subim);
            if (w*v'>0)
                s=vision.ShapeInserter;
                J=step(s,subim,int32([x,y,x+100,y+70]));
                imshow(J);
            end
        end
    end
end




                
                