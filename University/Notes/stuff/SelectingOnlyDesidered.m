% I have this matrix here

A = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15; 16 17 18]

%   1     2     3
%   4     5     6
%   7     8     9
%   10    11    12
%   13    14    15
%   16    17    18

% I just want to select these columns

n = [1 3]

A (:, n)
A (:, [1, 3])

% I just want to select these rows

n = [1 2 4 6]

A (n, :)
A ([1 2 4 6], :)
