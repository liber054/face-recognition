function help=helpMatrix(im)

[X,Y]=size(im);
help=zeros(X+1,Y+1);
help(2,2)=im(1,1);

for x=2:X+1
    for y=2:Y+1
        help(x,y)=help(x,y-1)+help(x-1,y)-help(x-1,y-1)+im(x-1,y-1);
    end
end

end