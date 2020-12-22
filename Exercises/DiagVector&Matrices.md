```matlab

% DIAG of a vector => creates diagonal matrix
% DIAG of a matrix => return vector in diagonal

>> B =  diag([1,2,3,4,5])

1     0     0     0     0
0     2     0     0     0
0     0     3     0     0
0     0     0     4     0
0     0     0     0     5

>> d = diag(B)

1     2     3     4     5

% so we can conclude that here nothing changes
N = diag(diag(N)) = N

```
