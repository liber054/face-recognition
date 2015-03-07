face = importdata('face_positive_20.txt');
nonface = importdata('face_negative_20.txt');
nonface(:,7) = -1;
%combine skin and non_skin & seperating features from tags
X = [ face(:,1:6); nonface(:,1:6) ];
Y = [ face(:,7); nonface(:,7) ];


%get c values from 2^-3 to 2^15
C_values = cVals(2,2,-3,15);

%divide to main data (70%) and toy data (30%)
[X, Y, toyX, toyY] = divide_examples(X,Y,0.7);

%learn with main data 
[W C errors C_index minn maxx] = svm_learn(X, Y, C_values);

toyX = normalize_min_max(toyX, minn, maxx);
errors(C_index);

total_toy_erros = cross_validation(W, toyX, toyY)
total_toy = size(toyY,1)

errors_ratio = total_toy_erros/total_toy