function [mask, height, width, x_start, y_start] = forehead( help )
[X, Y] = size(help);
mask = [1;1;0];
x_start=1;
y_start=1;
height=20:10:30;
width=Y-10:5:Y-1;
end

