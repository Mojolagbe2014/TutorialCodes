% PlotQuadrat.m
%   Plot a quadratic function
%       f = ax^4 + bx^2 + cx
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% set parameters
Nx = 300;
xmin = -5;
xmax = 5;
a = 1;
b = -15;
c = -10;


%% tabulate values
x = linspace(xmin, xmax, Nx);
f = a*x.^4 + b*x.^2 + c*x;

%% plot functions
plot(x, f);
xlabel(' x (m)');
ylabel(' f');
title(['Quadratic function f(x) = ax^4 + bx^2 + cx     a = ', num2str(a), ...
    ' b = ', num2str(c), ...
    ' c = ', num2str(c)]);
grid on;
