% makeClassList.m
%   create a vector of student records
%
%       Author: Mojolagbe Jamiu

%% enter students' records 
classList(1) = newStudentRecord('Jamiu', 'Abass', 3.8, [89, 92, 34, 32]);
classList(2) = newStudentRecord('Akanmu', 'Sikiru', 4.0, [93, 32, 65, 52]);
classList(3) = newStudentRecord('Ahmad', 'Ibrahim', 4.3, [21, 86, 68, 74]);


%% display selected info
disp(upper(classList(1).lastName));
disp(' ');

for is = 1 : length(classList)
   disp([classList(is).firstName, ' (', num2str(classList(is).gpa), ') ']); 
end