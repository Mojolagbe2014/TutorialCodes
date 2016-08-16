% RollPair.m
%   Simulate rolling of a pair of dice
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% generate dice roll using randi()
dice1 = randi(6);
dice2 = randi(6);


%% display dice roll 
disp(['Roll: ', num2str(dice1), ' and ', num2str(dice2)]);


%% interprete results
if (dice1==1) && (dice2==1)
    disp('        Snake eyes');
elseif (dice1==dice2)
    disp('        Doubles');
    if (dice1==6)
        disp('        Boxcars');
    end
elseif(dice1+dice2==7)
    disp('        Natural');
end