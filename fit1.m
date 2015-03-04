function [mask, height, width, x_start, y_start] = fit1( help )
[X, Y] = size(help);

mask = [0 1;1 0];
height=10:20:150;
width=10:40:300;

x_start=1;
y_start=1;

end