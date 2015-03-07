function im1=plotRec(im,x,y,height,width)

shapeInserter = vision.ShapeInserter;
rectangle = int32([x y width height]);
im1 = step(shapeInserter, im, rectangle);


imshow(im);
figure;
imshow(im1);
