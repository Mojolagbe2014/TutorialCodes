% animateSine.m
%   Draw a sine curve smoothly from left to right
%
%          Author: Mojolagbe Jamiu

clear;
clf;

%% set parameters
T = 2;    % period of the sine (s)
tmin = 0;
tmax = 2*T;
Nt = 300;


%% tabulate sine curve
t = linspace(tmin, tmax, Nt);
y = sin(2*pi*t/T);


%% plot curve with animation
for it=1:Nt
    plot(t(it), y(it), 'ro', ...
        t(1:it), y(1:it), 'b')
    axis([tmin, tmax, -1.1, 1.1]);
    grid on;
    xlabel('t (s)');
    ylabel('y (cm)');
    drawnow
end