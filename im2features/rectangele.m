function sum=rectangele(help,ia,ja,ib,jb)

%   ja  Y  jb
% ia *     
% X
% ib       *

[X,Y]=size(help);
assert(ia<=X && ia >0 && ib<=X && ib >0 && ja<=Y && ja >0 && jb<=Y && jb >0, 'me');
assert(ia<=ib && ja<=jb);
sum=help(ib,jb)+help(ia-1,ja-1)-help(ia-1,jb)-help(ib,ja-1);