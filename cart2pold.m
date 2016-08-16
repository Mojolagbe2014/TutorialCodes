function [thetad, r] = cart2pold(x, y)

%% cart2pold(x, y) Convert from Cartesian to polar co-ordinates
%   [thetad, r] = cart2pold(x, y)
%   returns:
%   thetad:  angle in degrees from x axis
%   r:       radial distance from origin


r = sqrt(x.^2 + y.^2);
thetad = atan2d(y, x);