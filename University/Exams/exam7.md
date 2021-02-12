##### (a) Creare una matrice quadrata A di dimensione casuale tra 3 e 10 contenente solo numeri 7

```matlab
A = 7 * ones(randi([3 10]))

7     7     7     7
7     7     7     7
7     7     7     7
7     7     7     7

```

##### (b) Sommare alle colonne pari nuemri casuali tra 1 e 5.

```matlab
A(:, 2:2:end) = A(:, 2:2:end) + randi([2,5], size(A(:,2:2:end)))

7    10     7    12
7    11     7    11
7    10     7    11
7    10     7    12


```

##### (c) Calcolare la media totale della matrice

```matlab
mean(mean(A))

ans = 8.9375

```

##### (d) Eliminare le righe della matrice A la cui somma delle componenti è minore di 36

```matlab

A(sum(A,2) < 36,:) = []

7    10     7    12
7    11     7    11
7    10     7    12

```

##### (e) Scrivere una funzione Matlab che presa in ingresso la matrice, restituisca la matrice contenente solo i valori delle diagonali; gli altri valori vengono posti a zero.

```matlab

function OUT = diagonalize(M)
    OUT = zeros(size(M))
    for i=1:1:size(M,1)
        for j=1:1:size(M,2)
            if(i==j)
            OUT(i,j) = M(i,j)
        end
    end
end

```
