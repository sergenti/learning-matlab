##### Creare la matrice M con dimensione di righe e colonne casuali (diverse) da 5 a 10 contenente solo valori pari a 1;

```matlab

M = ones(randi([5 10], [1,2]))


1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1

```

##### Inserire nelle righe dispari valori casuali da 1 a 10

```matlab

M(1:2:end, :) = randi([1 10], size(M(1:2:end, :)))


 3     2     9     8     9
 1     1     1     1     1
 6    10     2    10    10
 1     1     1     1     1
10    10     5     7     7
 1     1     1     1     1
10     5    10     1     8
 1     1     1     1     1

```

##### Sommare 1 alle celle della matrice che contengono numeri dispari

```matlab

M( mod(M,2) == 1 ) = M( mod(M,2) == 1 ) + 1

 4     2    10     8    10
 2     2     2     2     2
 6    10     2    10    10
 2     2     2     2     2
10    10     6     8     8
 2     2     2     2     2
10     6    10     2     8
 2     2     2     2     2

```

##### Calcolare la media delle celle con valore maggiore di 3

```matlab

M>3

1   0   1   1   1
0   0   0   0   0
1   1   0   1   1
0   0   0   0   0
1   1   1   1   1
0   0   0   0   0
1   1   1   0   1
0   0   0   0   0


M(M>3)

ans =

     4
     6
    10
    10
    10
    10
     6
    10
     6
    10
     8
    10
     8
    10
    10
     8
     8


mean (M(M>3))
ans = 8.4706

```

##### Scrivere una funzione che presa in ingresso la matrice M, crei una nuova matrice ”specchio” N con la prima colonna in ultima posizione, la seconda in penultima...

```matlab

function OUT= specchio(M)
    OUT = M(:, end:-1:1)
end

function OUT = specchio(M)
OUT = [M(:, end:-1:1)];
end


direttamente in una linea: OUT = M(:, end:-1:1)

```
