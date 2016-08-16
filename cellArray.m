% cellArray.m
%   Working with cell array
%   C{k,n}, isOn(iSwith)
%   
%       Author: Jamiu Mojolagbe

clear; clc;


%% insert values into cell array
c{1,1} = 34;
c{2,1} = rand(2);
c{1,2} = 'Moses';
c{2,2} = complex(4, 7);


%% display the array
disp(c);

disp(c{2,1});
