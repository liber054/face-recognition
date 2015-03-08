function [mask, height, width, x_start, y_start,x_end,y_end] = fit2( help )
[X, Y] = size(help);

mask = [0 1 0;1 0 1];

x_start=1;
y_start=1;


x_end = X;
y_end = Y;

height=int32(0.3 * X);
width=int32(0.4 * Y);

end