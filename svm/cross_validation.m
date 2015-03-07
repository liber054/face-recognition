function num_of_errors = cross_validation(W,testX, testY)
num_of_errors = 0;

M = size(testX,1);

for i=1:M
  %classifier result
  tag = W'*testX(i,:)';
  
  %if classifier is wrong increase num of errors
  if tag*testY(i) < 0
      num_of_errors = num_of_errors+1;
  end
end

end

