function [mask, height, width, x_start, y_start,x_end,y_end] = fit4( help )
[X, Y] = size(help);

mask = [0 1;1 0];
<<<<<<< HEAD
=======
height=10:25:100;
width=10:50:70;
>>>>>>> 07f6a26f46c029f208550c3de8d9d5ca2f147a37

x_start=int32(0.2 * X);
y_start=int32(0.2 * Y);

x_end = int32(0.6 * X);
y_end = int32(0.6 * Y);

height=int32(0.2 * X);
width=int32(0.2 * Y);

end