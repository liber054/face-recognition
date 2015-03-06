function [mask, height, width, x_start, y_start] = eyes_nose( help )
[X, Y] = size(help);

mask = [0;1];
height=20:10:31;
width=Y/2:10:Y;

x_start=20;
y_start=1;

end

