% domainMarchingDemo.m
%   Demonstrate domain marching
%       by tabulating f(x) = ax^2 + b
%
%          Author: Mojolagbe Jamiu


%% set parameters
a = 1;
b = 0;
Nx = 11;
xmin = -5;
xmax = 5;


%% initiate arrays
x = linspace(xmin, xmax, Nx);
f = zeros(1, Nx);


%% plot curve with animation
for ix=1:Nx
    f(ix) = a*x(ix)^2 + b;
%     plot(x(ith), y(ith), 'ro', ...
%         x(1:ith), y(1:ith), 'b')
%     axis(1.2*[-R, R, -R, R]);
%     grid on;
%     axis square;
%     drawnow
end