data = importdata('Skin_NonSkin.txt');

skin = data(data(:,4) == 1,:);
non_skin = data(data(:,4) == 2,:);

%smapling data from file for faster running
SAMPLE_RATIO = 10000;

skin = random_rows(skin,SAMPLE_RATIO);
non_skin = random_rows(non_skin,SAMPLE_RATIO);

%combine skin and non_skin & seperating features from tags
X = [ skin(:,1:3); non_skin(:,1:3) ];
Y = [ skin(:,4); non_skin(:,4) ];

% making rows tagged 2 to be tagged -1
Y(Y==2) = -1;

%get c values from 2^-3 to 2^15
C_values = cVals(2,2,-3,15);

%divide to main data (70%) and toy data (30%)
[X, Y, toyX, toyY] = divide_examples(X,Y,0.7);

%learn with main data 
[X, W, C, errors, C_index, minn, maxx] = svm_learn(X, Y, C_values);

toyX = normalize_min_max(toyX, minn, maxx);
errors(C_index);

total_toy_erros = cross_validation(W, toyX, toyY)
total_toy = size(toyY,1)

errors_ratio = total_toy_erros/total_toy