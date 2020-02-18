function varargout = dual_simplex(type, c, A, b)
% Dual simplex algorithm for solving LPPs of the type

%               max (min) z = cx
%            Subject to Ax <= b
%                        x >= 0

% Ensure that the problem is of maximization type
if type == 'max'
    mm = 0;
else
    mm = 1;
    c = -c;
end

% Transpose b
b = b';

[m, n] = size(A);

% Add artifical variables and identity matrix along with RHS values
A = [A eye(m) b];

% Add the cost values for the existing and the artifical variables
A = [A; [c zeros(1, m + 1)]];

prompt = 'Would you like to monitor the progress of the computations?';
dialog_ans = questdlg(prompt, 'Monitor Progress?', 'Yes', 'No', 'No');

switch dialog_ans
    case 'Yes'
        debug_flag = true;
    case 'No'
        debug_flag = false;
    otherwise
        debug_flag = true;
end

if debug_flag
    disp('Initial Tableau')
    A
    disp('Press any key to continue')
    pause
end

subs = n + 1 : n + m;
[bmin, row] = Br(b);

varargout(1) = {A};
end
