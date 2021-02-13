```matlab
A = [1 2 3]

1     2     3


B = [A, A.^2, A.^5] % using: ,
B = horzcat(A, A.^2, A.^5)

1     2     3     1     4     9     1    32   243


C = [A; A.^2; A.^5] % using: ;
C = vertcat(A, A.^2, A.^5)

1     2     3
1     4     9
1    32   243
```
