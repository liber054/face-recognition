function [mask, height, width, x_start, y_start] = nostril ( help )
[X, Y] = size(help);

mask = [1 1 1 1 1;0 1 0 1 0];
height=5;
width=5;

x_start=X/3;
y_start=1;

end

