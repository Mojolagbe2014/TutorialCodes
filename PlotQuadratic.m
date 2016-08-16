% PlotQuadratic.m
%   Tabulate a quadratic function and plot
%       f = x^2 + b*x + c
%
%          Author: Mojolagbe Jamiu

clc; 
clear;


%% set parameters
Nx = 300;
xmin = -3;
xmax = 3;
b = -2;
c = 4;


%% tabulate values
x = linspace(xmin, xmax, Nx);
f = x.^2 + b*x + c;


%% plot functions
plot(x, f);
xlabel(' x (m)');
ylabel(' f');
title('Quadratic function f = x^2 + b*x + c');
grid on;
