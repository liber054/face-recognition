function [mask, height, width, x_start, y_start] = fit4( help )
[X, Y] = size(help);

mask = [0 1;1 0];
height=10:25:X-10;
width=10:50:Y-10;

x_start=1;
y_start=1;

end