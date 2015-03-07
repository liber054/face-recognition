function [mask, height, width, x_start, y_start,x_end,y_end] = fit3( help )
[X, Y] = size(help);

mask = [1 1 1 ; 0 1 0];

x_start=int32(0.2 * X);
y_start=int32(0.2 * Y);

x_end = int32(0.6 * X);
y_end = int32(0.5 * Y);

height=int32(0.2 * X);
width=int32(0.2 * Y);

end