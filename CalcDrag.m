% CalcDrag
% calculate the aerodynamics drag on a pingpong ball
% moving through air at speed v
%
%       Fd = (1/2) rho v^2 Cd A
%
%          Author: Mojolagbe Jamiu

clear  

%% set parameters 

% radius of the ball (m)
R = 0.02;

% cross section area (m^2)
A = pi*R^2;

% density of air (kg/m^3)
rho = 1.2754;

% drag coefficient for sphere
Cd = 0.47;

% velocity of the air (m/s)
v = 9;

% mass of the ball (kg)
m = 0.0027;

% acceleration due to gravity
g = 9.807;
Fg = m * g;

%% calculate the drag force (N)
Fd = 0.5 * rho* v^2 * Cd * A;

% force due to gravity on the ball


%% echo input and display result
clc
disp('---------------- Force on a pingpong ball ------------------');

disp(['Ball radius:         ', num2str(R),  'm',]);
disp(['Air density:         ', num2str(rho),  'kg/m^3',]);
disp(['Drag Coefficient:    ', num2str(Cd),  '',]);
disp(['Ball speed:          ', num2str(v),  'm/s',]);

disp(' ');
disp(['Drag Force:          ', num2str(Fd),  'N',]);
disp(['mg:                  ', num2str(Fg),  'kg',]);
