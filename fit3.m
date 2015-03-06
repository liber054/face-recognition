function [mask, height, width, x_start, y_start] = fit3( help )
[X, Y] = size(help);

mask = [1 1 1 ; 0 1 0];
height=10:35:100;
width=10:35:70;

x_start=1;
y_start=1;

end