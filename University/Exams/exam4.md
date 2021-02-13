## Scrivere il codice Matlab che restituisca i valori richiesti.

##### 1. Creare una matrice A di dimensione 6\*8 cotenente solo valori pari a 3. (1 riga - 1 punto)

```matlab

A = 3 * ones(6,8)

3     3     3     3     3     3     3     3
3     3     3     3     3     3     3     3
3     3     3     3     3     3     3     3
3     3     3     3     3     3     3     3
3     3     3     3     3     3     3     3
3     3     3     3     3     3     3     3

```

##### 2. Moltiplicare le colonne dispari per un numero casuale tra 2 e 11. (1 riga - 1 punto)

```matlab

A(:, 1:2:end) = A(:, 1:2:end) .* randi([2,11], size(A(:, 1:2:end))) % tutti numeri differenti

24     3    27     3    24     3    27     3
27     3     6     3    15     3    27     3
27     3    12     3    33     3     9     3
15     3     6     3     6     3    18     3
24     3     6     3    18     3    18     3
29     3    30     3    15     3    24     3

A(:, 1:2:end) = A(:, 1:2:end) .* randi([2,11]) % unico valore

27     3    27     3    27     3    27     3
27     3    27     3    27     3    27     3
27     3    27     3    27     3    27     3
27     3    27     3    27     3    27     3
27     3    27     3    27     3    27     3
27     3    27     3    27     3    27     3


```

A

```matlab

B = [1 1 1 1 1 1 1 1]
B = [1, 1, 1, 1, 1, 1, 1, 1]

18     2     3     5     6     7     8     3    33    18

```

##### 4. Seleziona tutti i valori dispari del vettore B

```matlab
B(mod(B,2)==1)

3     5     7     3    33

```

##### 4. Eliminare le colonne della matrice A corrispondenti ai valori dispari del vettore riga B. (1 riga - 1 punto)

```matlab
A(:, B(mod(B,2)==1)) = []
```

##### 5. Scrivere una funzione Matlab che presa in ingresso la matrice, restituisca la più grande matrice quadrata generabile dalla marice in ingresso (matrice è quadrata quando ha lo stesso numero di righe e colonne). (2 punti)

```matlab

function  Q = quadrata(A)
    min = min(size(A));
    Q = A(1:min, 1:min);
end

function  Q = quadrata(A)
    Q = A(1:min(size(A)), 1:min(size(A)));
end

% a sto punto senza funzione

Q = A(1:min(size(A)), 1:min(size(A)));

```
