% GoldiLooks.m
%   Generate porridge temperature using randi()
%   then evaluate if it is cold, hot or just right
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% set parameters
% All temperature in degree Fahreint
Tmin = 50;
Tmax = 212;

% upper bound of 'too cold'
Tc = 100;

% lower bound of 'too hot'
Th = 170;

%% generate temperature
T = randi([Tmin, Tmax]);
disp(['Porridge temperature: ', num2str(T), ' degrees F']);


%% classify and state evaluation
if T < Tc
    disp('        Too cold');
elseif T > Th
    disp('        Too Hot');
elseif (T<=Th) && (T>=Tc)
    disp('        Just right');
else
    disp(' ---Error');
end