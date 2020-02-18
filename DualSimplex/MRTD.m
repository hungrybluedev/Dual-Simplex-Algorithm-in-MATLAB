function col = MRTD(a, b)

% The Maximum Ratio Test on vectors a and b
% col - Index of the pivot column

m = length(a);
c = 1:m;
a = a(:);
b = b(:);
l = c(b < 0);
[~, col] = max(a(1) ./ b(1));
col = l(col);
