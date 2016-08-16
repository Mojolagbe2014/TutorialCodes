% listLawyers.m
%   dempmstrate cell arrays of strings 
%   list partners in a law firm 
%
%       Author: Jamiu Mojolagbe


%% set partners list
partners = {'Warpe', 'Wistful', 'Kibutschek'};


%% add a new partner 
np = length(partners);
partners{np+1} = 'Mojolagbe';

%% display partner list

clc;
np = length(partners);
disp('***** Law Partners ******');

for ip = 1:np
    disp(partners{ip});
end