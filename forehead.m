function [mask, height, width, x_start, y_start, x_end, y_end] = forehead( help )
[X, Y] = size(help);
mask = [1;1;0];


x_start=int32(0.3 * X);
y_start=int32(0.23 * Y);

x_end = int32(0.85 * X);
y_end = int32(0.7 * Y);

height=int32(0.15 * X);
width=int32(0.4 * Y);
end

