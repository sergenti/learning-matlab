<div align="center">

# Matrices & Vectors in Matlab

</div>

you cannot delete a single cell of a matrix, you can only delete its content

```matlab
%=================================================================================================%
%                                               basics

% ROW vector
>> A = [ 1 2 3 4 5]

% COLUMN vector
>> A = [ 1 ; 2 ; 3 ; 4 ; 5]

% Transposing (both for matrices & vectors)
>> A = A'

% accessing an element by position A(row,column)
>> A = [1  2  3  4  5; 4  5  6  7  8; 9 10 11 12 13]
>> v = A( 2 , 3 ) %v=6

% selecting from a desired starting point until the end of the vector
>> A = [ 1 2 3 4 5]
>> A( 2 : end ) %ans=[2 3 4 5]

% You can create a matrix starting from vectors
% (in this case we are creating a new matrix with the same number of columns as A but with 2 rows more according to the written operations)
% the . before makes matlab know to perform the operation on every single element.
>> A = [ 1 2 3 4 5 ]
>> B = [A; A.^2 ; A.^5]

%=================================================================================================%
%                                          filling functions

% zeros(x) creates a matrix filled with zeros of specified dimensions
>> A = zeros ( 3 )

0  0  0  0
0  0  0  0
0  0  0  0
0  0  0  0

>> zeros ( 2 , 3 )

0  0  0
0  0  0

% ones(x) creates a matrix filled with ones of specified dimensions
>> A = ones ( 3 , 2 )

1  1
1  1
1  1

>> A = 5∗ ones ( 2 )

5  5
5  5

%=================================================================================================%
%                                             diagonality

% diag() creating a diagonal matrix or extracting one
% creating a diagonal matrix
>> diag ( [ 1 2 3 4 ] )

1  0  0  0
0  2  0  0
0  0  3  0
0  0  0  4

% extracting the diagonal of a matrix
>> A = [1  2  3  4  5; 4  5  6  7  8; 9 10 11 12 13]
>>  diag (A)

1
3
6
11

% creating a diagonal matrix from the values extracted from the diagonal of matrix A
>> diag ( diag (A) )

1  0   0
0  6   0
0  0  11

%=================================================================================================%
%                                      Matrix/Vector concatenation

% these operations can only be done if the matrices/vectors are compatib
>> A = [ 1 2 3];
>> B = [ 4 5 6];

% horizontal concatenation
>> C = [A , B];

1 2 3 4 5 6

% verrical concatenation
>> C = [A ; B];

1  2  3
4  5  6

% using functions

% horizontal concatenation
>> D = horzcat (A,B)

1 2 3 4 5 6

% vertical concatenation
>> E = vertcat (A,B)

1  2  3
4  5  6

%=================================================================================================%
%                                             Determinant

% det for calculating the determinant
>> A = [ 6 4 0 ; 4 2 7 ; 1 2 8]
>> det (A) %ans−88.0000

%=================================================================================================%
%                                              Selections

% selecting from a to b using ' : ' operator (a:b) (step = 1)
>> A = 3: 1 3

% selecting from a to b with step s using ' : ' operator (a:s:b)
>> A = 3 : 4 : 2 3

% vector containg 7 numbers from a to b (without linspace)
>> A = 11.5 : ( 14.2 −11.5 )/6 : 14.2

% vector containg x numbers from a to b ( linespace(a,b,x))
la stessa operazione può essere eseguita grazie alla funzione linspace.
>> A = linspace( 11.5 , 14.2 , 7 )

% selecting a whole row or a whole column using ' : ' operator

>> A = [ 1 2 3 4 5 6; 7 8 9 10 11 1 2; 13 14 15 16 17 1 8; 19 20 21 22 23 2 4; 25 26 27 28 29 3 0]
>> row2= A( 2 , : )
>> column3 = A( : , 3 )

% in general: rowX = M( X , : ), columnX = M( : , X )

```
