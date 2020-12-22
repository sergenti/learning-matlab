```matlab
% Number of Elements in 3-D Matrix

% Create a 4-by-4-by-2 matrix.
A = magic(4);
A(:, :, 2) = A'


% A =

    % A(:,:,1) =

    16     2     3    13
     5    11    10     8
     9     7     6    12
     4    14    15     1


    % A(:,:,2) =

    16     5     9     4
     2    11     7    14
     3    10     6    15
    13     8    12     1

% numel counts 32 elements in the matrix.
n = numel(A)
n = 32
```
