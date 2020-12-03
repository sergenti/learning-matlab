
##### (a) Creare la matrice M con dimensione di righe e colonne casuali (diverse) da 5 a 10 contenente  solo valori pari a 1; (max 1 riga) (1 punto)


```matlab
M = ones(randi([5 10],[1 2]));
```

##### (b) Inserire nelle righe dispari valori casuali da 1 a 10 (max 1 riga) (1 punto).


```matlab
M(1:2:end,:) = randi([1,10],size(M(1:2:end,:)))
```

##### (c) Sommare 1 alle celle della matrice che contengono numeri dispari (max 1 riga) (1 punto).


```matlab
M(rem(M,2)==1) = M(rem(M,2)==1)+1
```

##### (d) Calcolare la media delle celle con valore maggiore di 3 (max 1 riga) (1 punto).


```matlab
mean (M(M>3))
```

##### (e) Scrivere una funzione che presa in ingresso la matrice M, crei una nuova matrice ”specchio” N con la prima colonna in ultima posizione, la seconda in penultima... (max 8 righe) (2 punto).


```matlab
function [N] = funzione(M)
for i=1:1:size(M,2)
    N(:,size(M,2)-i+1)) = M(:,i);
    end
end
```

