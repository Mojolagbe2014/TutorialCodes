% plotDampedSinusoidals.m
%   Make a plot of the function
%   y(t) = cos(omega t) exp^(-t/tau)
%
%          Author: Mojolagbe Jamiu

clc; 
clear;

%% set parameters
T = 1;    % period of the cosine (s)
tau = 3;  % damping time (s)

tmin = 0;
tmax = 5*T;
omega = 2*pi/T;
Nt = 300;

%% set up array and tabulate
t = linspace(tmin, tmax, Nt);
y = cos(omega*t).*exp(-t/tau);

%% plot curve and label
plot(t, y);
grid on;
xlabel('t (s)');
ylabel('y (cm)');
title(['Damped oscillating with \tau: ', num2str(tau)]);