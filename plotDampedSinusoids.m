% plotDampedSinusoids.m
%   Make a plot of the function
%   y(t) = cos(omega t) exp^(-t/tau)
%       or optionally also include 
%   y(t) = sin(omega t) exp^(-t/tau)
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
y1 = cos(omega*t).*exp(-t/tau);
y2 = sin(omega*t).*exp(-t/tau);


%% get input from user
userResponse = input('Do you wanna print both cos and sin (Yes or No)?  ', 's');
switch userResponse
    
    case {'Yes', 'yes'}
        plotBoth = true;
    case {'No', 'no'}
        plotBoth = false;
        userResponse2 = input('Enter either ''cosine'' or ''sine'' ', 's');
        switch userResponse2
            case {'cosine', 'cos'}
                y = y1;
            case {'sine', 'sin'}
                y = y2;
            otherwise
                y = y1;
        end
    otherwise
        plotBoth = true;
end


%% plot curve and label
if (plotBoth)
    plot(t, y1, 'r', t, y2, 'b');
    legend('damped cos', 'damped sin');
else
    plot(t, y);
end

grid on;
xlabel('t (s)');
ylabel('y (cm)');
title(['Damped oscillating with \tau: ', num2str(tau)]);