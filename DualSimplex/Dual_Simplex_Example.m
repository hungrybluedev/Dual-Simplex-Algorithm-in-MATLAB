clc

% Objecive function
type = 'max';
c = [-2 -2 -4];

% Ax <= b
A = [-2 -3 -5; 3 1 7; 1 4 6];
b = [-2 3 5];


dual_simplex(type, c, A, b);
