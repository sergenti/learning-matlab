<div align="center">

# Removing Rows or Columns from a Matrix

</div>

The easiest way to remove a row or column from a matrix is to set that row or column equal to a pair of empty square brackets [].

```matlab
% 4x4 filled matrix
A = magic(4)

16      2      3     13
 5     11     10      8
 9      7      6     12
 4     14     15      1

% removing the second row
A(2,:) = []

16      2      3     13
 9      7      6     12
 4     14     15      1

%removing the third column
A(:,3) = []


16      2     13
 9      7     12
 4     14      1

% You can extend this approach to any array.
% For example, create a random 3-by-3-by-3 array
% Rremove all of the elements in the first matrix of the third dimension.

B = rand(3,3,3);
B(:,:,1) = [];

```
