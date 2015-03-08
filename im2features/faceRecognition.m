function faceRecognition(file_name,w,minn, maxx)

im=imread(file_name);
if(size(size(im),2) == 3)
	im = rgb2gray(im);
end
im = im2double(im);

rows = size(im,1);

%resize to 100 rows
im = imresize(im, 100/rows);


[X,Y]=size(im);


WINDOW_HEIGHT = 100;
WINDOW_WIDTH = 86;

for x=1:50:X
    for y=30:35:Y
        if (x+WINDOW_HEIGHT-1<=X && y+WINDOW_WIDTH-1<=Y)
            subim=im(x:x+WINDOW_HEIGHT-1,y:y+WINDOW_WIDTH-1);
            v=subIm2features(subim);
            v = normalize_min_max(v,minn,maxx);
            figure;
            imshow(subim);
            if (w'*v'>0)
                v
                plotRec(im,x,y,x+100,x+70);
            end
        else
%             subim=im(x:X,y:Y);
%             v=subIm2features(subim);
%             if (w'*v'>0)
%                 plotRec(im,x,y,x+100,x+70);
%             end
        end
    end
end





