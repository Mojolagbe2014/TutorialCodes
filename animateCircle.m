% animateCircle.m
%   Draw a sine curve smoothly from left to right
%
%          Author: Mojolagbe Jamiu


%% set parameters
R = 1;
Nth = 100;


%% tabulate arrays
theta = linspace(0, 4*pi, Nth);
x = R*cos(theta);
y = R*sin(theta);


%% plot curve with animation
for ith=1:Nth
    plot(x(ith), y(ith), 'ro', ...
        x(1:ith), y(1:ith), 'b')
    axis(1.2*[-R, R, -R, R]);
    grid on;
    axis square;
    drawnow
end