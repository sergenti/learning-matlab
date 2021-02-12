##### Creare un vettore colonna A e un vettore colonna B contenente rispettivamente 6 e 5 valori casuali differenti tra loro con valori da 1 a 10

```matlab

A = randi([1 10], [1,6])
B = randi([1 10], [1,5])

```

##### A partire dai vettori A e B, creare una matrice C di 6 righe e 5 colonne (1 punto).

```matlab

Se una colonna e una riga
C = A*B;
C = A.*B;

Se entrambe colonne:
C = A*B’;
C = A.*B’;

```

##### Cancellare le righe che hanno come primo valore un numero inferiore a 10

```matlab

A(A(:,1)<10, :) = []

```

##### Calcolare la somma di tutte le colonne dispari

```matlab

sum(sum(A(:,1:2:end)))

```

##### Scrivere una funzione che presa in ingresso la matrice C, crea una nuova matrice ”cornice”, ponendo cioe a zero tutti gli elementi non appartenenti alla prima e ultima riga/colonna.

```matlab

function OUT = cornice(A)
    OUT = zeros(size(A))
    for i=1:1:size(A,1)
        for j=1:1:size(A,2)
            if(i==1 || j==1 || i==size(A,1), j==size(A,2))
                OUT(i,j) = A(i,j)
            end
        end
    end
end

function OUT = funzione(A)
    OUT = A;
    for i=2:1:size(A,1)-1
        for j=2:1:size(A,2)-1
            OUT(i,j) = 0;
        end
    end
end

```
