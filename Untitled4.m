
im=imread('8.jpg');
im = rgb2gray(im);
im = im2double(im);
rows = size(im,1);
im = imresize(im, 100/rows);

r=subIm2features(im)