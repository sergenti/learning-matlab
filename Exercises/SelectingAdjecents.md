```matlab
% I have this matrix here

A = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15; 16 17 18]

%   1     2     3
%   4     5     6
%   7     8     9
%   10    11    12
%   13    14    15
%   16    17    18

% selecting from the first to the third
A(:, 1:3)

%selecting from a point to the end of the matrix (GENERALIZED)
A(:, 2:end)

% selecting the first and the second row
A([1, 3], :)

% SUBMATRIX only 2,3 rows and 2,3 columns
A([2 3], [2 3])
```
