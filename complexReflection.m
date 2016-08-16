% complexReflection.m
%   Illustrate the use of complex number and functions
%       plot f(x) = exp(ikx) + r exp(-ikx)
%       where r = R exp(i phi) is the complex reflection 
%       coefficient.
%
%          Author: Mojolagbe Jamiu


%% set parameters
lambda = 1;
xmin = 0;
xmax = 3 * lambda;
k = 2 * pi / lambda;
Nx = 200;

% complex reflection coefficient
R = 0.5;
phi = pi/4;
r = R * exp(1i*phi);


%% tabulate function 
x = linspace(xmin, xmax, Nx);
f = exp(1i*k*x) + r*exp(-1i*k*x);


%% plot function
plot(x, abs(f), 'k.-', ...
    x, real(f), 'b', ....
    x, imag(f), 'r', ...
    x, angle(f)/pi, 'k--')
legend('|f|', 'Re(f)', 'Im(f)', 'angle(f)');
grid on 
xlabel('x')
title(['f(x) = e^{ikx} + r e^{-ikx} where ',....
    ' r = Re^{i\phi},    R = ', num2str(R),...
    '    \phi= ', num2str(phi/pi), '\pi']);