% getName.m
%   Get user's name and if it is long make a snide comment
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% set parameters

Nlong = 9; %names longer than this are 'long'


%% get input
name = input(' Please enter your name: ', 's');
disp(' ');


%% comment if name is long

if length(name) > Nlong 
    disp(['This name is too long: ', upper(name), '!']);
end

disp(' ');
disp('Glad to meet you..');