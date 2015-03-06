function C = setC()

    C = zeros(1,11);
    pow = -5;

    for i=1:11
        C(i) = power(2,pow);
        pow = pow + 2;
    end

end