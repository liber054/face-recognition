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
                plotRec(im,x,y,x+100,x+70);
            end
        else
            subim=im(x:X,y:Y);
            v=subIm2features(subim);
            if (w*v'>0)
                plotRec(im,x,y,x+100,x+70);
            end
        end
    end
end





