function [mask, height, width, x_start, y_start] = nostril ( help )
[X, Y] = size(help);

mask = [1 1 1 1 1;0 1 0 1 0];
height=10;
width=12;

x_start=35;
y_start=1;

end

