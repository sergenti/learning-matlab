##### (a) Creare un vettore colonna A e un vettore colonna B contenente rispettivamente 6 e 5 valori casuali differenti tra loro con valori da 1 a 10; (max 2 riga) (1 punto)

```matlab
A = randi([1 10],[6 1]);
B = randi([1 10],[1 5]);
% oppure
A = randi([1 10],[6 1]);
B = randi([1 10],[5 1]);
```
##### (b) A partire dai vettori A e B, creare una matrice C di 6 righe e 5 colonne (1 punto).

```matlab
% Se una colonna e una riga
C = A*B;
C = A.*B;
% Se entrambe colonne:
C = A*B’;
C = A.*B’;
```

##### (c) Cancellare le righe che hanno come primo valore un numero inferiore a 10 (max 1 riga) (1 punto).

```matlab
C(C(:,1)<10,:)=[]
```

##### (d) Calcolare la somma di tutte le colonne dispari (max 1 riga) (1 punto).

```matlab
sum(sum(C(:,1:2:end)))
```

##### (e) Scrivere una funzione che presa in ingresso la matrice C, crea una nuova matrice ”cornice”, ponendo cioe a zero tutti gli elementi non appartenenti alla prima e ultima riga/colonna. (max 8 righe) (2 punto).

```matlab
function [out] = funzione(in)
out = in;
for i=2:1:size(in,1)-1
    for j=2:1:size(in,2)-1
        out(i,j) = 0;
        end
    end
end
```

