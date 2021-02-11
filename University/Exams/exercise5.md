##### (a) Creare una matrice quadrata A di dimensione casuale tra 3 e 10 contenente solo numeri 7

```matlab
A = 7 * ones(randi([3 10]))

7     7     7     7     7
7     7     7     7     7
7     7     7     7     7
7     7     7     7     7
7     7     7     7     7

```

##### (b) Sommare alle colonne pari nuemri casuali tra 1 e 5.

```matlabmnbmxbn<,bcn<xz,mcnb<z,x>>>
A = A(:,2:2:end) + 5

3     3     3     3     3
9     9     9     9     9
3     3     3     3     3
3     3     3     3     3

```

##### (c) Calcolare la media totale della matrice

```matlab
ans = mean(mean(A))

3     3     3     3     3
5     1     3     5     4
3     3     3     3     3
3     3     3     3     3

```

##### (d) Eliminare le righe della matrice A la cui somma delle componenti è minore di 10

```matlab<zxc<zxc<zxc<zxc>>>>
A(sum(A))= []

3     3     3     3     3
1     2     3     4     5
3     3     3     3     3
3     3     3     3     3

```

##### (e) Scrivere una funzione Matlab che presa in ingresso la matrice, restituisca la matrice contenente solo i valori delle diagonali; gli altri valori vengono posti a zero.

```matlab

```
