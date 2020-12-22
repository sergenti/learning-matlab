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
function cornice(C)=Y
for
if ( C())
end
```
