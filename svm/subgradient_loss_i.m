function W = subgradient_loss_i(W, Xi, yi, C, M)

% M = samples; N = features

val = 1 + ( -1*yi*(W'*Xi') );

if val <= 0
    W = (1/M)*W;
else
    W = (1/M)*W - C*yi*Xi';
end


end

