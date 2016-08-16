% TakeOrder.m
%   Pleasantly take order from customers.
%   3 type of thurgins: nurvels, tombits and weenives
%
%
%          Author: Mojolagbe Jamiu


%% get name
clc
disp('Good morning!');
custName = input('Please enter your name: ', 's');

disp(' ');
disp(['Good to see you this morning, ', custName, '!']);
disp(' ');

%% ask for number of nurvels, tombits and weenives

disp('We have several varieties of thurgins in. ');
nNurvels = input('How many nurvels would you like today? ');
nTombits = input('How many tombits would you like? ');
nWeenives = input('How many weenives? ');
disp(' ');

%% Summerize order

nThurgins = nNurvels + nTombits + nWeenives;

disp(['That''s ', num2str(nThurgins), ' thurgins in all ']);