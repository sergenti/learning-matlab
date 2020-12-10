<div align="center">

# Symbolic Math Toolbox

Matlab can be use to solve matheatical expressions, here's how it can help you.

</div>

```matlab

% defining the variable of the expression
>> x = sym ('x')

% COLLECT - collects coefficients
>> x = sym ('x')
>> E = (x −1)∗(x −2)∗(x −3);
>> collect(E)
% ans = x^3 − 6∗ x^2 + 11∗ x − 6

>> x = sym ('x');
>> y = sym ('y');
>> E = ( x−5)^2+(y −3)^2;
>> collect( E , y )
% ans = y^2 − 6∗ y + ( x − 5)^2 + 9

% EXPAND - expand expression
>> x = sym ('x');
>> y = sym ('y');
>> E = cos( x + y ) ;
>> expand ( E , y )
% ans = cos(x)∗cos(y) − sin(x)∗sin(y)

% FACTOR - factorization
>> x = sym ('x');
>> y = sym ('y');
>> E = x^3−6∗x^2+11∗x−6;
>> factor(E)
% ans = [ x − 3 , x − 1 , x − 2]

% POLY2SYM - from vector to polynomial
>> P = [ 2 6 4 ] ;
>> poly2sym(P)
% ans = 2∗ x^2 + 6∗ x + 4

% SYM2POLY - from polinomial to vector
>> V = 2∗ x^2 + 6∗ x + 4 ;
>> sym2poly(V)
% ans = 2 6 4

% PRETTY - mathematical notation
>> E = 2∗ x^2 + 6∗ x + 4 ;
>> pretty(E)
```
$2x^{2} +6x +4$

```matlab
% SIMPLIFY - simplify equantion
>> E = (1−x^2)/(1−x )
>> simplify(E)
% ans = x + 1

% EZPLOT - easy plot (outdated)
>> ezplot(E)

% SOLVE - rsolving one or a system of equations
>> E ='6x+2==0'
>> solve(E)
% ans = −1/3

% DIFF - differential
>> diff( sin(x)^ 2 )
% ans = 2∗cos(x)∗sin(x)

% INT - integral
>> int( x^n )
% ans = piecewise ( n == −1, l o g (x) , n ~= −1, x^(n + 1 ) / ( n + 1 ) )

% LIMIT
>> limit( sin( a∗x ) / x )
% ans =
a
>> limit( 1 / x , x , 0 ,'ri g h t')% ans =
I n f
>> limit( 1 / x , x , 0 ,'le f t')% ans =
−I n f
14
SYMSUM: restituisce la somma
>> symsum ( x ^ 2 , 1 , 4 )
% ans =
30
TAYLOR: polinomio di taylor
>> t a y l o r ( exp (x) )
% ans =
x^5/120 + x^4/24 + x^3/6 + x^2/2 + x + 1
DSOLVE: risolve equazioni differenziali
```
