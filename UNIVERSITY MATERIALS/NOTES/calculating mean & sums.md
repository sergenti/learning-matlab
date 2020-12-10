<div align="center">

# Random Values & Modifications

</div>

```matlab

% calculating the mean of the columns (by default)

>> A = [ 6 4 0 ; 4 2 7 ; 1 2 8]

6  4  0
4  2  7
1  2  8

>> mean (A)
3.6667  2.6667  5.0000

% if you want to be precise use 1 or 2

% columns
>> mean (A, 1 )
3.6667  2.6667  5.0000

%rows
>> mean (A, 2 )

3.3333
4.3333
3.6667

% mean of the whole matrix
>> mean( mean(A) ) %ans=5

% if you want to sum vectors or matrices, sum will do it on coluns (by default)
% sum(A), sum(A,1) on columns
% sum(A,2) on rows

% both REM & MOD calulate the rest after the division

rem ( x , 0 ) NaN
rem ( x , x ) % 0 if x!=0
rem ( x , y ) % (x!=y, y!=0) same sign of x

mod( x , 0 ) % ans=x
mod( x , x ) % ans=0
mod( x , y ) % (x!=y, y!=0) same sign of y

%d both those functions can be use to verify if A is even of if A is divisible by the number X,
% output is 1 if the conditions are met
>> rem(A,2)==0
>> rem(A,X)==0

% can be used with matrices al well, same dimensions, 1 if true, 0 if no.
% it is useful to use as a filter

>> mod(A,2)==0
>> mod(A,X)==0

% with find you can search element inside a vector/matrix

% returns a vector containing the linear indices of each nonzero element in array X.
i= find(X)

%returns the first k indices corresponding to the nonzero elements in X.
%it stps the search at the k-th value
i= find(X, k)

% returns the row and column subscripts (position) of each nonzero element in array X
[ i , j ] = find(X)

% if you insert a precise condition between the brackets of find, you can look for the row/column where the condition is met

% example:
>> A = [ 1 2 3; 4 5 6; 7 8 9]

1 2 3
4 5 6
7 8 9

% all indexes containing number 3
>> [ i , j ] = find(A==3)
i =1
j =3

% getting all the inexes that contains a number divisible by two
>> [ i , j ]= find(rem (A,2)==0)

% output
i = [2 1 3 2]
j = [1 2 2 3]


```
