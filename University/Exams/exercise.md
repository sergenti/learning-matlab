##### (a) Creare una matrice 4x5 contenente solo 3

```matlab
A = 3∗ones( 4 , 5 )

3     3     3     3     3
3     3     3     3     3
3     3     3     3     3
3     3     3     3     3

```

##### (c) riempi la riga 2 di un unico intero randomico tra 1 a 9

```matlab
M( 2 , : ) = randi([1 9])

3     3     3     3     3
9     9     9     9     9
3     3     3     3     3
3     3     3     3     3

```

##### (c) Inserire valori randomici tra 1 a 5 nella riga 2

```matlab
M( 2 , : ) = randi([1 5]  , [1 5])

3     3     3     3     3
5     1     3     5     4
3     3     3     3     3
3     3     3     3     3

```

##### (d) Inserire valori da 1 a 5 nella riga 2

```matlab
A( 2 , : ) = 1:5

3     3     3     3     3
1     2     3     4     5
3     3     3     3     3
3     3     3     3     3

```

##### (e) sostituire le colonne dispari con soli numeri 10

```matlab

% differences?

M( : , 1:2:end ) = 10

M( : , 1:2:end ) = 10 ∗ ones( 4 , 3 )

M( : , 1:2:end ) = 10 ∗ ones( size( A( : , 1:2:end ) ) )

10     3     10     3     10
10     2     10     4     10
10     3     10     3     10
10     3     10     3     10

```

##### (f) sostituire i numeri dispari con 0

```matlab
M( rem(A,2)~=0 ) = 0

10     0     10     0     10
10     2     10     4     10
10     0     10     0     10
10     0     10     0     10

```

##### (g) Radice quadrata della somma di A

```matlab
sqrt(sum(sum(A))
sqrt(sum(A, 'all'))

ans = 11.2250

```

##### (h) Eliminare le righe dispari

```matlab
M( 1:2:end, :) = []

10     2     10     4     10
10     0     10     0     10

```
