function [mask, height, width, x_start, y_start,x_end,y_end] = lips( help )
[X, Y] = size(help);

mask = [1;0;0;1];

x_start=int32(0.5 * X);
y_start=int32(0.45 * Y);

x_end = int32(0.6 * X);
y_end = int32(0.7 * Y);

height=int32(0.1 * X);
width=int32(0.2 * Y);

end

