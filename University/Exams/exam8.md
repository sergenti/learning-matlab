##### (c) Scrivere una funzione che presi in ingresso il numero di righe ed il numero di colonne, crea la matrice M(righe,colonne) contenente i primi N = (righe x colonne) numeri dispari(max 12 riga)

```matlab

function M = dispari(row, col)
c=1;
    for (i=1:row)
        for (j=1:col)
            M(i,j) = c;
            c = c+2;
        end
    end
end

```

##### Moltiplicare per -1 tutte le celle che contengono numeri divisibili per 7

```matlab

C(mod(C,7)==0) = C(mod(C,7)==0)*(-1)

%you can use either rem or mod

```

##### Eliminare la riga con media più bassa

```matlab
% M,2 mean of each row, thus creating a column vector

M( mean(M,2)== min(mean(M,2)) , : ) = []

```

##### Creare un matrice A di dimensioni righe e colonne differenti e casuali da 5 a 10 e contenente solo numeri 4

```matlab
A = 4 * ones(randi([5 10], [1,2]))
A = 4 * ones(randi([5 10]), randi([5 10]))


4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4
4     4     4     4     4

```

##### Inserire dopo la prima colonna, una nuova colonna contenente numeri casuali da 0 a NxM dove N numero di righe e M numero di colonne.

```matlab
A = [A(:,1) randi([0, size(A,1)*size(A,2)], [size(A,1),1]) A(:, 2:end) ]

4    20     4     4     4     4
4    13     4     4     4     4
4    40     4     4     4     4
4    22     4     4     4     4
4    46     4     4     4     4
4     9     4     4     4     4
4    13     4     4     4     4
4     7     4     4     4     4
4     6     4     4     4     4
4    44     4     4     4     4


```

##### Eliminare le righe con media inferiore a 6

```matlab

A(mean(A,2) < 6, :) = []

4    31     4     4     4     4     4     4
4    42     4     4     4     4     4     4
4    39     4     4     4     4     4     4
4    21     4     4     4     4     4     4
4    35     4     4     4     4     4     4


```

##### Calcolare la somma totale di tutte le colonne pari

```matlab
sum(sum(A(:, 2:2:end)))

```

##### Scrivere una funzione che presa in ingresso la matrice A, crea una nuova matrice ”quadrata”, ovvero elimina le righe o le colonne in eccesso in modo da ottenere una matrice con numero righe = numero di colonne

```matlab

function OUT = quadrata(M)
    for i=1:1:min(size(M))
        for j=1:1:min(size(M))
            OUT(i,j) = M(i,j)
        end
    end
end

function OUT = quadrata(B)
    i = min(size(B));
    OUT = B(1:i,1:i);
end


```
