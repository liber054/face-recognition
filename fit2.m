function [mask, height, width, x_start, y_start] = fit2( help )
[X, Y] = size(help);

mask = [0 1 0;1 0 1];
height=10:25:X-1;
width=10:40:Y-1;

x_start=1;
y_start=1;

end