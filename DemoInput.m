% DemoInput
% Demonstrate input command 
%
%       input()
%
%          Author: Mojolagbe Jamiu


%% get user's  age

age = input('Please enter your age: ');


%% get user's name

name  = input('Please enter your name: ', 's');


%% greet the user
disp(['Hey, ', name, ', you look good for ', num2str(age)]);