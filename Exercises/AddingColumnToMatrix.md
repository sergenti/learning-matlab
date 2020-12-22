```matlab
% given the matrix
B = [1,2,3,4; 1,2,3,4; 1,2,3,4; 1,2,3,4;]

1     2     3     4
1     2     3     4
1     2     3     4
1     2     3     4



% Adding ROW to a matrix (same # of columns)
n = [1, 2, 3, 4]

B = [B; n]
B = vertcat(B, n)

1     2     3     4
1     2     3     4
1     2     3     4
1     2     3     4
1     2     3     4



% Adding COLUMN to a matrix (same # of rows)
n = [5; 5; 5; 5; 5]

B = [B, n]
B = horzcat(B, n)

1     2     3     4     5
1     2     3     4     5
1     2     3     4     5
1     2     3     4     5
1     2     3     4     5
1     2     3     4     5

```
