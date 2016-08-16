% ArrayAndVectors.m
%   Explains working with arrays and vectors
%
%       N by N matrix
%       1 by N row vector 
%       N by 1 column vectorc
%
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% set variables 

v = [1, 3, 5]; 
vc = [4, 6  8]; 

%% perform operations 

v = v.*3;
vc = 4./vc;
w = v + vc;
vTrans = v';
vcTrans = vc';

%% display the results

disp('Matrix Operation Results');
disp(' ');

disp(['Row by Column vectors: v*vcTrans ', num2str(v*vcTrans)]);
disp(' ');
disp('Column by row vectors: vcTrans*v ');
disp(vcTrans*v);