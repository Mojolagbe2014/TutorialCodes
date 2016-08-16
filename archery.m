% archery.m
%   Animate arrow flight
%
%          Author: Mojolagbe Jamiu


%% set parameters
deltat = 0.1;
Nmax = 50;

%% move arrow to right
for kb=1:Nmax
    clc
    disp([blanks(kb), '>>--->']);
    pause(deltat);
end


%% turn around
clc
disp([blanks(Nmax), '>>---<']);
pause(deltat);
clc
disp([blanks(Nmax), '>>-<-']);
pause(deltat);
clc
disp([blanks(Nmax), '><--']);
pause(deltat);
clc
disp([blanks(Nmax), '<-<']);
pause(deltat);
clc
disp([blanks(Nmax), '<<--<']);
pause(deltat);
clc
disp([blanks(Nmax), '<<---<']);
pause(deltat);

%% move arrow to left
for kb=1:Nmax
    clc
    disp([blanks(Nmax - kb), '<---<<']);
    pause(deltat);
end
