function Cvalues = cVals(base,spacing,low_exp,top_exp)

assert(low_exp < top_exp, 'low must be lower than top');

len = size(low_exp:spacing:top_exp,2);

Cvalues = zeros(1,len);

for i=1:len
    Cvalues(i) = power(base,low_exp);
    low_exp = low_exp + spacing;
end

end