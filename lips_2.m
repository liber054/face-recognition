function [mask, height, width, x_start, y_start] = lips_2( help )
[X, Y] = size(help);

mask = [0;1;0];
height=5:5:10;
width=20:5:30;

x_start=60;
y_start=1;

end

