function [m, j] = Br(d)

% Implementation of Bland's Rule applied to array d.

% m - First negative number in the array d
% j - Index of the entry m

i = find(d < 0);

if ~isempty(i)
    j = i(1);
    m = d(j);
else
    m = [];
    j = [];
end
