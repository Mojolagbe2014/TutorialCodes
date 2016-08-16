% TestFuel.m
%   Demo if statement with fuel level example
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% set levels (in  gallons)
fuelLevel = 0.2;
lowFuelLevel = 0.35;


%% warn if low
if fuelLevel < lowFuelLevel
    disp('Warning --- low fuel');
else
    disp('Fuel is fine.');
end