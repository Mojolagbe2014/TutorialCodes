% testMatrix = [6,9,12,3;2,3,4,1;4,6,8,2;10,15,20,5];
testMatrix = [8, 10, 12;12,	15,	18];
[rows, cols] = size(testMatrix);
isMod = true;
rowVect = zeros(1, cols);
colVect = zeros(rows, 1);
newColVect = zeros(rows, 1);
newRowVect = zeros(1, cols);
message = ' ';


%% get column vector
for irow = 1:rows 
    for icol = 1:cols
        % create row vector
        rowVect(icol) = testMatrix(irow, icol);
    end
    % get the smallest of the row vector
    minVal = min(rowVect);
    
    % get the divisors of minVal
    idiv = 1:minVal;
    minValDiv = idiv(rem(minVal,idiv)==0);
    
    % determine the modularity of the smallest value
    % by calculating the modulus with each element
    % in the row vector
    for ico = 1:cols
        if mod(testMatrix(irow, ico), minVal) > 0
            isMod = false;
            break;
        end
    end
    
    % check if isMod is true, then add the 
    % new minVal to the already created 
    % newColVect
    if isMod
        newColVect(irow) = minVal;
    else
        newColVect(irow) = 0;
    end
end

%% get row vector
isMod = true;
for icol = 1:cols 
    for irow = 1:rows
        % create column vector
        colVect(irow) = testMatrix(irow, icol);
    end
    % get the smallest of the column vector
    minVal = min(colVect);
    % determine the modularity of the smallest value
    % by calculating the modulus with each element
    % in the row vector
    for iro = 1:rows
        if mod(testMatrix(iro, icol), minVal) > 0
            isMod = false;
            break;
        end
    end
    
    % check if isMod is true, then add the 
    % new minVal to the already created 
    % newColVect
    if isMod
        newRowVect(icol) = minVal;
    else
        newRowVect(icol) = 0;
    end
end


%% display result

% check if there are non zero element in the vector
% and print the the vector;
% else show error message
if (min(newColVect) > 0 ) && (min(newRowVect) > 0 )
    disp('A = ');
    disp(' ');
    disp(newColVect);
    disp('B'' = ');
    disp(' ');
    disp(newRowVect);
else
    disp('This matrix is not rank deficient one, so it cannot be converted!!');
end
% disp(newColVect);
% disp(' ');
% disp(newRowVect);