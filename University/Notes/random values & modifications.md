<div align="center">

# Random Values & Modifications

</div>

```matlab

% rand(n)   creates a random nxn matrix
% rand(n,m) creates a random nxm matrix
% random numbers are between 0 and 1, what about integers? randi()

% filling a nxm matrix with integer values between max and min
% randi([min max],[n m])

>> rand( 5 )
0.2769   0.3171   0.7655   0.6463   0.6551
0.0462   0.9502   0.7952   0.7094   0.1626
0.0971   0.0344   0.1869   0.7547   0.1190
0.8235   0.4387   0.4898   0.2760   0.4984
0.6948   0.3816   0.4456   0.6797   0.9597

>> rand( 2 , 3 )
0.3404   0.2238   0.2551
0.5853   0.7513   0.5060

% random number from 0 to 8
>> randi ( 8 )

% random number from 2 to 8
>> randi ( [2 8] )

% 2x2 matrix with random values between 0 and 5
>> randi(5,2)
1  4
2  3

% 5x2 matrix with random number between 3 and 10
>> A = randi([3 10], [5 2])
 5  5
 9  9
 7  9
 7  6
10  7

% dimensions of a matrix
>> size(A) %ans=[5 2]

% how many rows does a matrix have?
>> size(A,1) %ans=5

% how many columns does a matrix have?
>> size(A,2) %ans=2

% if a is a row/column vector we can measure its length
>> A = [ 1 2 3 4 5];

% A is a row vector
>> size(A) %ans=[1 5]

% A is a column vector
>> size(A') %ans=[5 1]

% in every case, if monodimensional we can always use length
>> length(A) %ans=5



```
