function w=sub_gradient_loss(Xi,Yi,W,c,M)


A=1-Yi*(W*Xi');

if (A>0)
    w= (1/M)*W-c*Yi*Xi;
else
    w= (1/M)*W;
end

end
