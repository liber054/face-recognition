function [W,MinX,MaxX]=learn(p,alpha,epotch_time,it)
% p  - procent to div train and test need to be 0.7
% it -  num itration of cros_validation need to be 5
% alpha  - member that got from the nusca need to be 1
% epotch_time  - need to be 3

    samples = importdata('faceNonFace.txt');
   % samples = importdata('exampel.txt');
    X = samples(:,1:9);
    Y = samples(:,10);
    [M,~]=size(X);
    T=epotch_time*M;
    C=setC();
       
    [W,~,~,~,~,MinX,MaxX]=trainWarp(X,Y,C,alpha,T,it,p);
    
    
           

end



