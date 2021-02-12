##### Creare un vettore colonna A e un vettore colonna B contenente rispettivamente 6 e 5 valori casuali differenti tra loro con valori da 1 a 10;

```matlab
A = randi([1,10], [1,5])
B = randi([1,10], [1,6])
```

##### A partire dai vettori A e B, creare una matrice C di 6 righe e 5 colonne

```matlab

% Se una colonna e una riga
C = A ∗ B;
C = A .∗ B

% Se  entrambe  colonne:
C = A ∗ B'
C = A .∗ B'

```

##### Cancellare le righe che hanno come primo valore un numero inferiore a 10

```matlab
C( C(:,1) < 10 , : ) = []
```

##### Calcolare la somma di tutte le colonne dispari

```matlab
sum( sum(C ( : , 1:2:end ) ) )
```

##### Scrivere una funzione che presa in ingresso la matrice C, crea una nuova matrice "cornice",ponendo cioè a zero tutti gli elementi non appartenenti alla prima e ultima riga/colonna.

```matlab

%long
function OUT = cornice(M)
    for i=1:1:size(M,1)
        for j=1:1:size(M,2)
            if ( i==1 || j==1 || i==size(M,1) || j ==size(M,2))
            OUT(i,j) = M(i,j);
            else
            OUT(i,j) = 0;
        end
    end
end

%short
function OUT = cornice(M)
    OUT = M;
    for i=2:1:size(M,1)-1
        for j=2:1:size(M,2)-1
            OUT(i,j) = 0;
        end
    end
end

```

##### Scrivere una funzione che presi in ingresso il numero di righe ed il numero di colonne, crea lamatrice M(righe,colonne) contenente i primi N = (righe x colonne) numeri dispari

```matlab

function M = odd(row, col)
c=1;
    for (i=1:row)
        for (j=1:col)
            M(i,j) = c;
            c= c+2;
        end
    end
end

odd(2,3)

ans =

1     3     5
7     9    11


```

##### 24. Sostituire in una colonna a caso, tutti valori pari a uno (NB.: l’istruzione deve essere la piùgenerale possiible, in modo da poter essere utilizzata con matrici di dimensini differenti)

```matlab

C(:,  randi( size(C,2))) = 1
C(:,  randi( size(C,2))) = ones ( size(C,1),1 )
C(:,  randi( size(C,2))) = ones ( 1, size(C,1) )

```

##### Eliminare la riga con media più bassa

```matlab
% M,2 mean of each row, thus creating a column vector

M( mean(M,2)== min(mean(M,2)) , : ) = []

```

##### Moltiplicare tutte le celle per un numero casuale intero tra 5 e 18

```matlab

C = C .* randi([5 18])
C = C .* randi([5 18], 1)

% since randi creates a scalar, no need for the dot

C = C * randi([5 18])
C = C * randi([5 18], 1)=

```

##### Moltiplicare per -1 tutte le celle che contengono numeri divisibili per 7

```matlab

C(mod(C,7)==0) = C(mod(C,7)==0)*(-1)

%you can use either rem or mod

```
