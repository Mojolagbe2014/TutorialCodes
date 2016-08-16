% testMatrix = [6,9,12,3;2,3,4,1;4,6,8,2;10,15,20,5];
testMatrix = [8, 10, 12;12,	15,	18];
[rows, cols] = size(testMatrix);
rowVect = zeros(1, cols);
colVect = zeros(rows, 1);
newColVect = zeros(rows, 1);
newRowVect = zeros(1, cols);
usable = 0;


%% get column vector (A)
for irow = 1:rows 
    for icol = 1:cols
        % create row vector
        rowVect(icol) = testMatrix(irow, icol);
    end
    % get the smallest of the row vector
    minVal = min(rowVect);
    
    % get the divisors of minVal
    idiv = 1:minVal;
    minValDivs = idiv(rem(minVal,idiv)==0);
    
    % determine the modularity of the smallest value
    % by calculating the modulus with each element
    % in the row vector  
    for it = 1:length(minValDivs) 
        if (it == 1) && (minVal > 1)
            continue;
        end
       
        curUsable = usable;
        for ico = 1:cols
            if mod(testMatrix(irow, ico), minValDivs(it)) == 0
                usable = minValDivs(it);
            else
                usable = curUsable;
                break;
            end
        end
    end
    
    newColVect(irow) = usable;
    
end

%% get row vector (B')
for icol = 1:cols 
    for irow = 1:rows
        % create column vector
        colVect(irow) = testMatrix(irow, icol);
    end
    % get the smallest of the column vector
    minVal = min(colVect);
    
    % get the divisors of minVal
    idiv = 1:minVal;
    minValDivs = idiv(rem(minVal,idiv)==0);
    
    % determine the modularity of the smallest value
    % by calculating the modulus with each element
    % in the row vector
    usable = 0;
    for it = 1:length(minValDivs)
        if (it == 1) && (minVal > 1)
            continue;
        end
        curUsable = usable;
        for iro = 1:rows
            if mod(testMatrix(iro, icol), minValDivs(it)) == 0
                usable = minValDivs(it);
            else
                usable = curUsable;
                break;
            end
        end
    end
    
    newRowVect(icol) = usable;
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