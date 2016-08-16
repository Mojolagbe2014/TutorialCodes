function isLeap = isLeapYear(year)
%
% isLeap = isLeapYear(year) returns true iff year is
%     a leap year. Input year is onr integer (not an array)
%     A year is a leap year if it is divisible by 4,
%     but century years must also be divisible by 400
%     Use proleptic Gregorian calendar
%
%               Author: Mojolagbe Jamiu


isLeap = false;

if rem(year, 100) == 0
    isLeap = true;
end

% Above produce the Julian calendar
% Gregorian calendar reform (1582) added the following

if rem(year, 100) == 0
    isLeap = false;
end

if rem(year, 400) == 0
    isLeap = true;
end

% By convention 1 BC (year = -1) is a leap year
% (no year 0)
if year == -1
    isLeap = true;
end