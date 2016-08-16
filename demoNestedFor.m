% demoNestedFor.m
%   Print out a random matrix of integers in column order
%
%          Author: Mojolagbe Jamiu


%% set parameters
Nrows = 4;
Ncols = 4;

%% construct matrix
A = randi(5, Nrows, Ncols);

%% display matrix element in column order
clc
disp(A);

for icol = 1:Ncols
    for irow = 1:Nrows
        disp(['(', num2str(irow), ',', num2str(icol),')', ...
            ' element is ', num2str(A(irow, icol))]);
    end
end