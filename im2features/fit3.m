function [mask, height, width, x_start, y_start,x_end,y_end] = fit3( help )
[X, Y] = size(help);

mask = [1 1 1 ; 0 1 0];


x_start= 1;
y_start= 1;

x_end = X;
y_end = Y;

height=int32(0.2 * X);
width=int32(0.2 * Y);

end