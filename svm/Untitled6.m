face = importdata('p100.txt');
nonface = importdata('n1002.txt');

%combine skin and non_skin & seperating features from tags
X = [ face(:,1:7); nonface(:,1:7) ];
Y = [ face(:,8); nonface(:,8) ];


%get c values from 2^-3 to 2^15
C_values = cVals(2,2,-3,15);

%divide to main data (70%) and toy data (30%)
[X, Y, toyX, toyY] = divide_examples(X,Y,0.7);

%learn with main data 
[X, W,  C, errors, C_index, minn, maxx] = svm_learn(X, Y, C_values);

toyX = normalize_min_max(toyX, minn, maxx);
errors(C_index);

total_toy_erros = cross_validation(W, toyX, toyY)
total_toy = size(toyY,1)

errors_ratio = total_toy_erros/total_toy